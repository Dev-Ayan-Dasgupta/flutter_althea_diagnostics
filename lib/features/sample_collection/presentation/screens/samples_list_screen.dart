import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_animations.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/gradient_text.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/filter_chip_custom.dart';
import '../../../../core/presentation/widgets/empty_state.dart';
import '../../../../core/presentation/widgets/sample_list_item.dart';
import '../../../../core/utils/responsive_helper.dart';
import '../../../../core/utils/navigation_extensions.dart';
import '../../domain/entities/sample.dart';
import '../providers/sample_providers.dart';

class SamplesListScreen extends ConsumerStatefulWidget {
  const SamplesListScreen({super.key});

  @override
  ConsumerState<SamplesListScreen> createState() => _SamplesListScreenState();
}

class _SamplesListScreenState extends ConsumerState<SamplesListScreen>
    with TickerProviderStateMixin {
  String? _selectedFilter;
  final ScrollController _scrollController = ScrollController();
  late AnimationController _fabController;
  bool _showFab = true;

  final List<_FilterOption> _filterOptions = [
    _FilterOption('All', null, Icons.all_inclusive),
    _FilterOption('In Transit', 'inTransit', Icons.local_shipping),
    _FilterOption('Processing', 'processing', Icons.science),
    _FilterOption('Completed', 'completed', Icons.check_circle),
    _FilterOption('Rejected', 'rejected', Icons.error),
  ];

  @override
  void initState() {
    super.initState();
    _fabController = AnimationController(
      vsync: this,
      duration: AppAnimations.medium,
    );
    _fabController.forward();

    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _fabController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels > 100 && _showFab) {
      setState(() => _showFab = false);
      _fabController.reverse();
    } else if (_scrollController.position.pixels <= 100 && !_showFab) {
      setState(() => _showFab = true);
      _fabController.forward();
    }

    // Load more on scroll to bottom
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _loadMore();
    }
  }

  void _loadMore() {
    ref.read(samplesProvider().notifier).loadMore();
  }

  Future<void> _handleRefresh() async {
    await ref.read(samplesProvider().notifier).refresh();
  }

  void _filterSamples(String? filter) {
    setState(() => _selectedFilter = filter);
    // TODO: Implement actual filtering
    ref.read(samplesProvider().notifier).filterByStatus(null);
  }

  @override
  Widget build(BuildContext context) {
    final samplesState = ref.watch(samplesProvider());
    final deviceType = ResponsiveHelper.getDeviceType(context);
    final isMobile = deviceType == DeviceType.mobile;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(context),
              _buildFilterBar(),
              Expanded(
                child: samplesState.when(
                  data: (samples) => _buildSamplesList(samples, isMobile),
                  loading: () => _buildLoadingState(),
                  error: (error, stack) => _buildErrorState(error),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: ScaleTransition(
        scale: _fabController,
        child: FloatingActionButton.extended(
          onPressed: () => context.goToScanBarcode(),
          backgroundColor: AppColors.primary,
          icon: const Icon(Icons.qr_code_scanner),
          label: const Text('Scan'),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GradientText(
                  'Samples',
                  style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
                  gradient: AppGradients.primaryText,
                ),
                const SizedBox(height: AppDimensions.spacing4),
                Text(
                  'Track and manage all samples',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          // Search Button
          GestureDetector(
            onTap: () {
              // TODO: Implement search
            },
            child: Container(
              padding: const EdgeInsets.all(AppDimensions.spacing12),
              decoration: BoxDecoration(
                gradient: AppGradients.surfaceDark,
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
                boxShadow: AppShadows.soft,
              ),
              child: const Icon(Icons.search, size: AppDimensions.iconMedium),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterBar() {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing16,
        vertical: AppDimensions.spacing8,
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _filterOptions.length,
        separatorBuilder: (_, __) =>
            const SizedBox(width: AppDimensions.spacing8),
        itemBuilder: (context, index) {
          final option = _filterOptions[index];
          return FilterChipCustom(
            label: option.label,
            icon: option.icon,
            isSelected: _selectedFilter == option.value,
            onTap: () => _filterSamples(option.value),
          );
        },
      ),
    );
  }

  Widget _buildSamplesList(List<Sample> samples, bool isMobile) {
    if (samples.isEmpty) {
      return EmptyState(
        title: 'No Samples Found',
        message: _selectedFilter == null
            ? 'Start by scanning a sample barcode'
            : 'No samples match the selected filter',
        icon: Icons.science_outlined,
        action: AppButton(
          text: 'Scan Barcode',
          onPressed: () => context.goToScanBarcode(),
          icon: const Icon(Icons.qr_code_scanner),
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: _handleRefresh,
      color: AppColors.primary,
      child: ListView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.all(AppDimensions.spacing16),
        itemCount: samples.length + 1,
        itemBuilder: (context, index) {
          if (index == samples.length) {
            return const SizedBox(height: 80); // Space for FAB
          }

          final sample = samples[index];
          return SampleListItem(
            sample: sample,
            onTap: () => context.goToSampleDetail(sample.id),
          );
        },
      ),
    );
  }

  Widget _buildLoadingState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          Text(
            'Loading samples...',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(Object error) {
    return EmptyState(
      title: 'Failed to Load Samples',
      message: error.toString(),
      icon: Icons.error_outline,
      action: AppButton(
        text: 'Retry',
        onPressed: _handleRefresh,
        icon: const Icon(Icons.refresh),
      ),
    );
  }
}

class _FilterOption {
  final String label;
  final String? value;
  final IconData icon;

  _FilterOption(this.label, this.value, this.icon);
}
