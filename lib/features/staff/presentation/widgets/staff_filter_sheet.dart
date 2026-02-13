import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/filter_chip_custom.dart';
import '../../../auth/domain/entities/user.dart';
import '../../domain/entities/staff.dart';

class StaffFilterSheet extends ConsumerStatefulWidget {
  final StaffFilters initialFilters;
  final ValueChanged<StaffFilters> onApply;

  const StaffFilterSheet({
    super.key,
    required this.initialFilters,
    required this.onApply,
  });

  @override
  ConsumerState<StaffFilterSheet> createState() => _StaffFilterSheetState();
}

class _StaffFilterSheetState extends ConsumerState<StaffFilterSheet> {
  late UserRole? _selectedRole;
  late PhlebotomistStatus? _selectedStatus;
  late bool? _isOnline;

  @override
  void initState() {
    super.initState();
    _selectedRole = widget.initialFilters.role;
    _selectedStatus = widget.initialFilters.status;
    _isOnline = widget.initialFilters.isOnline;
  }

  void _applyFilters() {
    final filters = StaffFilters(
      role: _selectedRole,
      status: _selectedStatus,
      isOnline: _isOnline,
      searchQuery: widget.initialFilters.searchQuery,
    );
    widget.onApply(filters);
    Navigator.pop(context);
  }

  void _clearFilters() {
    setState(() {
      _selectedRole = null;
      _selectedStatus = null;
      _isOnline = null;
    });
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
                    'Filter Staff',
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

            // Filters
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(AppDimensions.spacing16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Role Filter
                    _buildSectionTitle('Role'),
                    const SizedBox(height: AppDimensions.spacing12),
                    Wrap(
                      spacing: AppDimensions.spacing8,
                      runSpacing: AppDimensions.spacing8,
                      children: [
                        FilterChipCustom(
                          label: 'All',
                          isSelected: _selectedRole == null,
                          onTap: () => setState(() => _selectedRole = null),
                        ),
                        FilterChipCustom(
                          label: 'Phlebotomist',
                          isSelected: _selectedRole == UserRole.phlebotomist,
                          onTap: () => setState(
                            () => _selectedRole = UserRole.phlebotomist,
                          ),
                        ),
                        FilterChipCustom(
                          label: 'Lab Technician',
                          isSelected: _selectedRole == UserRole.labTechnician,
                          onTap: () => setState(
                            () => _selectedRole = UserRole.labTechnician,
                          ),
                        ),
                        FilterChipCustom(
                          label: 'Pathologist',
                          isSelected: _selectedRole == UserRole.pathologist,
                          onTap: () => setState(
                            () => _selectedRole = UserRole.pathologist,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: AppDimensions.spacing24),

                    // Status Filter
                    _buildSectionTitle('Status'),
                    const SizedBox(height: AppDimensions.spacing12),
                    Wrap(
                      spacing: AppDimensions.spacing8,
                      runSpacing: AppDimensions.spacing8,
                      children: [
                        FilterChipCustom(
                          label: 'All',
                          isSelected: _selectedStatus == null,
                          onTap: () => setState(() => _selectedStatus = null),
                        ),
                        FilterChipCustom(
                          label: 'Active',
                          isSelected:
                              _selectedStatus == PhlebotomistStatus.active,
                          onTap: () => setState(
                            () => _selectedStatus = PhlebotomistStatus.active,
                          ),
                        ),
                        FilterChipCustom(
                          label: 'Inactive',
                          isSelected:
                              _selectedStatus == PhlebotomistStatus.inactive,
                          onTap: () => setState(
                            () => _selectedStatus = PhlebotomistStatus.inactive,
                          ),
                        ),
                        FilterChipCustom(
                          label: 'On Break',
                          isSelected:
                              _selectedStatus == PhlebotomistStatus.onBreak,
                          onTap: () => setState(
                            () => _selectedStatus = PhlebotomistStatus.onBreak,
                          ),
                        ),
                        FilterChipCustom(
                          label: 'Suspended',
                          isSelected:
                              _selectedStatus == PhlebotomistStatus.suspended,
                          onTap: () => setState(
                            () =>
                                _selectedStatus = PhlebotomistStatus.suspended,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: AppDimensions.spacing24),

                    // Online Status
                    _buildSectionTitle('Availability'),
                    const SizedBox(height: AppDimensions.spacing12),
                    Wrap(
                      spacing: AppDimensions.spacing8,
                      runSpacing: AppDimensions.spacing8,
                      children: [
                        FilterChipCustom(
                          label: 'All',
                          isSelected: _isOnline == null,
                          onTap: () => setState(() => _isOnline = null),
                        ),
                        FilterChipCustom(
                          label: 'Online',
                          icon: Icons.circle,
                          isSelected: _isOnline == true,
                          onTap: () => setState(() => _isOnline = true),
                        ),
                        FilterChipCustom(
                          label: 'Offline',
                          isSelected: _isOnline == false,
                          onTap: () => setState(() => _isOnline = false),
                        ),
                      ],
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
}
