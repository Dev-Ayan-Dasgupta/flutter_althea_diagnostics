import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/export.dart';
import '../../../sample_collection/domain/entities/sample.dart';
import '../../../sample_collection/domain/entities/sample_event.dart';
import '../../../sample_integrity/domain/entities/sample_integrity_score.dart';
import '../../domain/entities/sample_filter.dart';

// Define status type enum for filtering
enum SampleStatusType {
  requested,
  assigned,
  inTransit,
  reachedLab,
  processing,
  completed,
  rejected,
  cancelled,
}

class AdvancedFilterSheet extends ConsumerStatefulWidget {
  final SampleFilter initialFilter;
  final ValueChanged<SampleFilter> onApply;

  const AdvancedFilterSheet({
    super.key,
    required this.initialFilter,
    required this.onApply,
  });

  @override
  ConsumerState<AdvancedFilterSheet> createState() =>
      _AdvancedFilterSheetState();
}

class _AdvancedFilterSheetState extends ConsumerState<AdvancedFilterSheet> {
  SampleStatusType? _selectedStatusType;
  late IntegrityLevel? _selectedIntegrityLevel;
  late bool _hasTatBreach;
  late bool _hasColdChainBreach;
  DateTime? _startDate;
  DateTime? _endDate;
  final _minScoreController = TextEditingController();
  final _maxScoreController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectedStatusType = _getStatusTypeFromStatus(widget.initialFilter.status);
    _selectedIntegrityLevel = widget.initialFilter.integrityLevel;
    _hasTatBreach = widget.initialFilter.hasTatBreach ?? false;
    _hasColdChainBreach = widget.initialFilter.hasColdChainBreach ?? false;
    _startDate = widget.initialFilter.startDate;
    _endDate = widget.initialFilter.endDate;

    if (widget.initialFilter.minIntegrityScore != null) {
      _minScoreController.text = widget.initialFilter.minIntegrityScore!
          .toString();
    }
    if (widget.initialFilter.maxIntegrityScore != null) {
      _maxScoreController.text = widget.initialFilter.maxIntegrityScore!
          .toString();
    }
  }

  @override
  void dispose() {
    _minScoreController.dispose();
    _maxScoreController.dispose();
    super.dispose();
  }

  SampleStatusType? _getStatusTypeFromStatus(SampleStatus? status) {
    if (status == null) return null;

    return status.when(
      requested: () => SampleStatusType.requested,
      assigned: (_) => SampleStatusType.assigned,
      inTransit: (_, _) => SampleStatusType.inTransit,
      reachedLab: (_) => SampleStatusType.reachedLab,
      processing: (_) => SampleStatusType.processing,
      completed: (_, _) => SampleStatusType.completed,
      rejected: (_, _, _) => SampleStatusType.rejected,
      cancelled: (_, _) => SampleStatusType.cancelled,
    );
  }

  SampleStatus? _createStatusFromType(SampleStatusType? type) {
    if (type == null) return null;

    // Create a basic status for filtering purposes
    // In real implementation, you'd need to handle required parameters
    switch (type) {
      case SampleStatusType.requested:
        return const SampleStatus.requested();
      case SampleStatusType.assigned:
        // For filtering, we'll use a placeholder ID
        return const SampleStatus.assigned(phlebotomistId: '');
      case SampleStatusType.inTransit:
        return SampleStatus.inTransit(
          startTime: DateTime.now(),
          currentLocation: const GeoLocation(latitude: 0, longitude: 0),
        );
      case SampleStatusType.reachedLab:
        return SampleStatus.reachedLab(arrivalTime: DateTime.now());
      case SampleStatusType.processing:
        return SampleStatus.processing(startTime: DateTime.now());
      case SampleStatusType.completed:
        return SampleStatus.completed(
          completionTime: DateTime.now(),
          resultId: '',
        );
      case SampleStatusType.rejected:
        return SampleStatus.rejected(
          reason: '',
          rejectedAt: DateTime.now(),
          requiresRecollection: false,
        );
      case SampleStatusType.cancelled:
        return SampleStatus.cancelled(reason: '', cancelledAt: DateTime.now());
    }
  }

  void _applyFilters() {
    final filter = SampleFilter(
      searchQuery: widget.initialFilter.searchQuery,
      status: _createStatusFromType(_selectedStatusType),
      startDate: _startDate,
      endDate: _endDate,
      integrityLevel: _selectedIntegrityLevel,
      hasTatBreach: _hasTatBreach ? true : null,
      hasColdChainBreach: _hasColdChainBreach ? true : null,
      minIntegrityScore: _minScoreController.text.isNotEmpty
          ? double.tryParse(_minScoreController.text)
          : null,
      maxIntegrityScore: _maxScoreController.text.isNotEmpty
          ? double.tryParse(_maxScoreController.text)
          : null,
    );

    widget.onApply(filter);
    Navigator.pop(context);
  }

  void _clearFilters() {
    setState(() {
      _selectedStatusType = null;
      _selectedIntegrityLevel = null;
      _hasTatBreach = false;
      _hasColdChainBreach = false;
      _startDate = null;
      _endDate = null;
      _minScoreController.clear();
      _maxScoreController.clear();
    });
  }

  Future<void> _selectDateRange() async {
    final now = DateTime.now();
    final range = await showDateRangePicker(
      context: context,
      firstDate: now.subtract(const Duration(days: 365)),
      lastDate: now,
      initialDateRange: _startDate != null && _endDate != null
          ? DateTimeRange(start: _startDate!, end: _endDate!)
          : null,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.dark(
              primary: AppColors.primary,
              surface: AppColors.darkSurface,
            ),
          ),
          child: child!,
        );
      },
    );

    if (range != null) {
      setState(() {
        _startDate = range.start;
        _endDate = range.end;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppGradients.darkBackground,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppDimensions.radiusXLarge),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Handle
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.symmetric(
                vertical: AppDimensions.spacing12,
              ),
              decoration: BoxDecoration(
                color: AppColors.textSecondary,
                borderRadius: BorderRadius.circular(2),
              ),
            ),

            // Header
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.spacing16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Advanced Filters',
                    style: AppTextStyles.h4.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    onPressed: _clearFilters,
                    child: Text(
                      'Clear All',
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.critical,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Divider(),

            // Filters Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(AppDimensions.spacing16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Status Filter
                    _buildSectionTitle('Sample Status'),
                    const SizedBox(height: AppDimensions.spacing12),
                    Wrap(
                      spacing: AppDimensions.spacing8,
                      runSpacing: AppDimensions.spacing8,
                      children: [
                        FilterChipCustom(
                          label: 'All',
                          isSelected: _selectedStatusType == null,
                          onTap: () =>
                              setState(() => _selectedStatusType = null),
                        ),
                        FilterChipCustom(
                          label: 'Requested',
                          isSelected:
                              _selectedStatusType == SampleStatusType.requested,
                          onTap: () => setState(
                            () => _selectedStatusType =
                                SampleStatusType.requested,
                          ),
                        ),
                        FilterChipCustom(
                          label: 'Assigned',
                          isSelected:
                              _selectedStatusType == SampleStatusType.assigned,
                          onTap: () => setState(
                            () =>
                                _selectedStatusType = SampleStatusType.assigned,
                          ),
                        ),
                        FilterChipCustom(
                          label: 'In Transit',
                          isSelected:
                              _selectedStatusType == SampleStatusType.inTransit,
                          onTap: () => setState(
                            () => _selectedStatusType =
                                SampleStatusType.inTransit,
                          ),
                        ),
                        FilterChipCustom(
                          label: 'At Lab',
                          isSelected:
                              _selectedStatusType ==
                              SampleStatusType.reachedLab,
                          onTap: () => setState(
                            () => _selectedStatusType =
                                SampleStatusType.reachedLab,
                          ),
                        ),
                        FilterChipCustom(
                          label: 'Processing',
                          isSelected:
                              _selectedStatusType ==
                              SampleStatusType.processing,
                          onTap: () => setState(
                            () => _selectedStatusType =
                                SampleStatusType.processing,
                          ),
                        ),
                        FilterChipCustom(
                          label: 'Completed',
                          isSelected:
                              _selectedStatusType == SampleStatusType.completed,
                          onTap: () => setState(
                            () => _selectedStatusType =
                                SampleStatusType.completed,
                          ),
                        ),
                        FilterChipCustom(
                          label: 'Rejected',
                          isSelected:
                              _selectedStatusType == SampleStatusType.rejected,
                          onTap: () => setState(
                            () =>
                                _selectedStatusType = SampleStatusType.rejected,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: AppDimensions.spacing24),

                    // Date Range
                    _buildSectionTitle('Date Range'),
                    const SizedBox(height: AppDimensions.spacing12),
                    GestureDetector(
                      onTap: _selectDateRange,
                      child: Container(
                        padding: const EdgeInsets.all(AppDimensions.spacing16),
                        decoration: BoxDecoration(
                          gradient: AppGradients.surfaceDark,
                          borderRadius: BorderRadius.circular(
                            AppDimensions.radiusMedium,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.date_range, color: AppColors.primary),
                            const SizedBox(width: AppDimensions.spacing12),
                            Expanded(
                              child: Text(
                                _startDate != null && _endDate != null
                                    ? '${_formatDate(_startDate!)} - ${_formatDate(_endDate!)}'
                                    : 'Select date range',
                                style: AppTextStyles.bodyMedium.copyWith(
                                  color: _startDate != null
                                      ? AppColors.textPrimary
                                      : AppColors.textSecondary,
                                ),
                              ),
                            ),
                            if (_startDate != null)
                              IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () {
                                  setState(() {
                                    _startDate = null;
                                    _endDate = null;
                                  });
                                },
                              ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: AppDimensions.spacing24),

                    // Integrity Level
                    _buildSectionTitle('Integrity Level'),
                    const SizedBox(height: AppDimensions.spacing12),
                    Wrap(
                      spacing: AppDimensions.spacing8,
                      runSpacing: AppDimensions.spacing8,
                      children: [
                        FilterChipCustom(
                          label: 'All',
                          isSelected: _selectedIntegrityLevel == null,
                          onTap: () =>
                              setState(() => _selectedIntegrityLevel = null),
                        ),
                        FilterChipCustom(
                          label: 'High',
                          isSelected:
                              _selectedIntegrityLevel == IntegrityLevel.high,
                          onTap: () => setState(
                            () => _selectedIntegrityLevel = IntegrityLevel.high,
                          ),
                        ),
                        FilterChipCustom(
                          label: 'Medium',
                          isSelected:
                              _selectedIntegrityLevel == IntegrityLevel.medium,
                          onTap: () => setState(
                            () =>
                                _selectedIntegrityLevel = IntegrityLevel.medium,
                          ),
                        ),
                        FilterChipCustom(
                          label: 'Low',
                          isSelected:
                              _selectedIntegrityLevel == IntegrityLevel.low,
                          onTap: () => setState(
                            () => _selectedIntegrityLevel = IntegrityLevel.low,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: AppDimensions.spacing24),

                    // Integrity Score Range
                    _buildSectionTitle('Integrity Score Range'),
                    const SizedBox(height: AppDimensions.spacing12),
                    Row(
                      children: [
                        Expanded(
                          child: AppInputField(
                            label: 'Min',
                            hint: '0',
                            controller: _minScoreController,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        const SizedBox(width: AppDimensions.spacing12),
                        Expanded(
                          child: AppInputField(
                            label: 'Max',
                            hint: '100',
                            controller: _maxScoreController,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: AppDimensions.spacing24),

                    // Alerts & Breaches
                    _buildSectionTitle('Alerts & Breaches'),
                    const SizedBox(height: AppDimensions.spacing12),
                    CheckboxListTile(
                      value: _hasTatBreach,
                      onChanged: (value) {
                        setState(() => _hasTatBreach = value ?? false);
                      },
                      title: Text(
                        'TAT Breaches Only',
                        style: AppTextStyles.bodyMedium,
                      ),
                      contentPadding: EdgeInsets.zero,
                      activeColor: AppColors.primary,
                    ),
                    CheckboxListTile(
                      value: _hasColdChainBreach,
                      onChanged: (value) {
                        setState(() => _hasColdChainBreach = value ?? false);
                      },
                      title: Text(
                        'Cold Chain Breaches Only',
                        style: AppTextStyles.bodyMedium,
                      ),
                      contentPadding: EdgeInsets.zero,
                      activeColor: AppColors.primary,
                    ),
                  ],
                ),
              ),
            ),

            // Apply Button
            Padding(
              padding: const EdgeInsets.all(AppDimensions.spacing16),
              child: AppButton(
                text: 'Apply Filters',
                onPressed: _applyFilters,
                fullWidth: true,
                size: AppButtonSize.large,
                icon: const Icon(Icons.check),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: AppTextStyles.bodyMedium.copyWith(
        fontWeight: FontWeight.w700,
        color: AppColors.textSecondary,
        letterSpacing: 0.5,
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
