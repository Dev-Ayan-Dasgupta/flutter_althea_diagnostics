import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/search_bar_custom.dart';
import '../../../../core/presentation/widgets/recent_searches.dart';
import '../../../../core/presentation/widgets/empty_state.dart';
import '../../../../core/presentation/widgets/sample_list_item.dart';
import '../../../../core/utils/navigation_extensions.dart';
import '../../../sample_collection/domain/entities/sample.dart';
import '../../../sample_collection/presentation/providers/sample_providers.dart';
import '../../domain/entities/sample_filter.dart';
import '../../domain/entities/search_history.dart';
import 'package:uuid/uuid.dart';

import '../widgets/advanced_filter_sheet.dart';

// Mock providers - replace with actual implementations
final searchQueryProvider = StateProvider<String>((ref) => '');
final sampleFilterProvider = StateProvider<SampleFilter>(
  (ref) => SampleFilter.empty(),
);
final searchHistoryProvider = StateProvider<List<SearchHistoryItem>>(
  (ref) => [],
);

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final _searchController = TextEditingController();
  final _uuid = const Uuid();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    ref.read(searchQueryProvider.notifier).state = query;

    final currentFilter = ref.read(sampleFilterProvider);
    ref.read(sampleFilterProvider.notifier).state = currentFilter.copyWith(
      searchQuery: query.isEmpty ? null : query,
    );
  }

  void _onFilterTap() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.85,
        child: AdvancedFilterSheet(
          initialFilter: ref.read(sampleFilterProvider),
          onApply: (filter) {
            ref.read(sampleFilterProvider.notifier).state = filter;

            // Add to search history if filters are applied
            if (!filter.isEmpty) {
              _addToSearchHistory('Filtered results', SearchType.filter);
            }
          },
        ),
      ),
    );
  }

  void _onScanTap() {
    context.goToScanBarcode();
  }

  void _addToSearchHistory(String query, SearchType type) {
    final history = ref.read(searchHistoryProvider);
    final newItem = SearchHistoryItem(
      id: _uuid.v4(),
      query: query,
      timestamp: DateTime.now(),
      type: type,
    );

    ref.read(searchHistoryProvider.notifier).state = [
      newItem,
      ...history.where((item) => item.query != query).take(9),
    ];
  }

  void _onSearchHistoryTap(SearchHistoryItem item) {
    _searchController.text = item.query;
    _onSearchChanged(item.query);
  }

  void _onDeleteHistoryItem(SearchHistoryItem item) {
    final history = ref.read(searchHistoryProvider);
    ref.read(searchHistoryProvider.notifier).state = history
        .where((h) => h.id != item.id)
        .toList();
  }

  void _onClearAllHistory() {
    ref.read(searchHistoryProvider.notifier).state = [];
  }

  @override
  Widget build(BuildContext context) {
    final searchQuery = ref.watch(searchQueryProvider);
    final filter = ref.watch(sampleFilterProvider);
    final searchHistory = ref.watch(searchHistoryProvider);

    // Mock sample data - replace with actual filtered samples
    final samplesState = ref.watch(samplesProvider());

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: Column(
            children: [
              // Search Bar
              Padding(
                padding: const EdgeInsets.all(AppDimensions.spacing16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => context.goBack(),
                          child: const Icon(Icons.arrow_back),
                        ),
                        const SizedBox(width: AppDimensions.spacing12),
                        Expanded(
                          child: SearchBarCustom(
                            hint: 'Search by vial ID, patient name...',
                            controller: _searchController,
                            onChanged: _onSearchChanged,
                            onFilterTap: _onFilterTap,
                            onScanTap: _onScanTap,
                            filterCount: filter.activeFilterCount,
                            autofocus: true,
                          ),
                        ),
                      ],
                    ),

                    // Active Filters Display
                    if (!filter.isEmpty) ...[
                      const SizedBox(height: AppDimensions.spacing12),
                      _buildActiveFilters(filter),
                    ],
                  ],
                ),
              ),

              // Results or Recent Searches
              Expanded(
                child: searchQuery.isEmpty && filter.isEmpty
                    ? _buildRecentSearches(searchHistory)
                    : _buildSearchResults(samplesState),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActiveFilters(SampleFilter filter) {
    return Container(
      padding: const EdgeInsets.all(AppDimensions.spacing12),
      decoration: BoxDecoration(
        gradient: AppGradients.surfaceDark,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
      ),
      child: Row(
        children: [
          Icon(Icons.filter_list, size: 16, color: AppColors.primary),
          const SizedBox(width: AppDimensions.spacing8),
          Expanded(
            child: Text(
              _getFilterSummary(filter),
              style: AppTextStyles.bodySmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          GestureDetector(
            onTap: () {
              ref.read(sampleFilterProvider.notifier).state =
                  SampleFilter.empty();
            },
            child: Icon(Icons.close, size: 16, color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }

  String _getFilterSummary(SampleFilter filter) {
    final parts = <String>[];

    if (filter.status != null) {
      parts.add('Status');
    }
    if (filter.startDate != null || filter.endDate != null) {
      parts.add('Date range');
    }
    if (filter.integrityLevel != null) {
      parts.add('Integrity');
    }
    if (filter.hasTatBreach == true) {
      parts.add('TAT breach');
    }
    if (filter.hasColdChainBreach == true) {
      parts.add('Cold chain breach');
    }

    return '${filter.activeFilterCount} filter${filter.activeFilterCount != 1 ? 's' : ''}: ${parts.join(', ')}';
  }

  Widget _buildRecentSearches(List<SearchHistoryItem> history) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (history.isNotEmpty)
            RecentSearches(
              searches: history,
              onSearchTap: _onSearchHistoryTap,
              onDeleteTap: _onDeleteHistoryItem,
              onClearAll: _onClearAllHistory,
            )
          else
            Column(
              children: [
                const SizedBox(height: AppDimensions.spacing64),
                EmptyState(
                  title: 'Start Searching',
                  message:
                      'Search for samples by vial ID, patient name, or use filters',
                  icon: Icons.search,
                ),
              ],
            ),

          const SizedBox(height: AppDimensions.spacing32),

          // Quick Filters
          Text(
            'Quick Filters',
            style: AppTextStyles.bodyMedium.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: AppDimensions.spacing12),
          Wrap(
            spacing: AppDimensions.spacing8,
            runSpacing: AppDimensions.spacing8,
            children: [
              _buildQuickFilter('In Transit', Icons.local_shipping),
              _buildQuickFilter('Processing', Icons.science),
              _buildQuickFilter('TAT Breach', Icons.warning),
              _buildQuickFilter('Low Integrity', Icons.error),
              _buildQuickFilter('Today', Icons.today),
              _buildQuickFilter('This Week', Icons.date_range),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuickFilter(String label, IconData icon) {
    return GestureDetector(
      onTap: () {
        // Apply quick filter
        // TODO: Implement quick filter logic
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spacing16,
          vertical: AppDimensions.spacing12,
        ),
        decoration: BoxDecoration(
          gradient: AppGradients.surfaceDark,
          borderRadius: BorderRadius.circular(AppDimensions.radiusRound),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 16, color: AppColors.primary),
            const SizedBox(width: AppDimensions.spacing8),
            Text(
              label,
              style: AppTextStyles.bodySmall.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchResults(AsyncValue<List<Sample>> samplesState) {
    return samplesState.when(
      data: (samples) {
        // Apply local filtering
        final filteredSamples = _applyFilters(samples);

        if (filteredSamples.isEmpty) {
          return EmptyState(
            title: 'No Results Found',
            message: 'Try adjusting your search or filters',
            icon: Icons.search_off,
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(AppDimensions.spacing16),
          itemCount: filteredSamples.length,
          itemBuilder: (context, index) {
            final sample = filteredSamples[index];
            return SampleListItem(
              sample: sample,
              onTap: () => context.goToSampleDetail(sample.id),
            );
          },
        );
      },
      loading: () => Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
        ),
      ),
      error: (error, stack) => EmptyState(
        title: 'Error Loading Samples',
        message: error.toString(),
        icon: Icons.error_outline,
      ),
    );
  }

  List<Sample> _applyFilters(List<Sample> samples) {
    final filter = ref.read(sampleFilterProvider);
    var filtered = samples;

    // Apply search query
    if (filter.searchQuery != null && filter.searchQuery!.isNotEmpty) {
      filtered = filtered.where((sample) {
        final query = filter.searchQuery!.toLowerCase();
        return sample.vialId.toLowerCase().contains(query) ||
            sample.patientName.toLowerCase().contains(query) ||
            sample.id.toLowerCase().contains(query);
      }).toList();
    }

    // Apply status filter
    if (filter.status != null) {
      filtered = filtered.where((sample) {
        return sample.status.runtimeType == filter.status.runtimeType;
      }).toList();
    }

    // Apply integrity level filter
    if (filter.integrityLevel != null) {
      filtered = filtered.where((sample) {
        return sample.integrityScore.level == filter.integrityLevel;
      }).toList();
    }

    // Apply integrity score range
    if (filter.minIntegrityScore != null) {
      filtered = filtered.where((sample) {
        return sample.integrityScore.overallScore >= filter.minIntegrityScore!;
      }).toList();
    }
    if (filter.maxIntegrityScore != null) {
      filtered = filtered.where((sample) {
        return sample.integrityScore.overallScore <= filter.maxIntegrityScore!;
      }).toList();
    }

    // Apply date range filter
    if (filter.startDate != null) {
      filtered = filtered.where((sample) {
        return sample.collectionTime.isAfter(filter.startDate!);
      }).toList();
    }
    if (filter.endDate != null) {
      filtered = filtered.where((sample) {
        return sample.collectionTime.isBefore(
          filter.endDate!.add(const Duration(days: 1)),
        );
      }).toList();
    }

    return filtered;
  }
}
