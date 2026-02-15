import 'package:flutter/material.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../domain/entities/staff.dart';

// Define common permissions
class StaffPermission {
  final String id;
  final String name;
  final String description;
  final String category;

  const StaffPermission({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
  });
}

class PermissionsDialog extends StatefulWidget {
  final StaffMember staff;

  const PermissionsDialog({super.key, required this.staff});

  @override
  State<PermissionsDialog> createState() => _PermissionsDialogState();
}

class _PermissionsDialogState extends State<PermissionsDialog> {
  late Set<String> _selectedPermissions;

  // Define available permissions
  static const List<StaffPermission> _availablePermissions = [
    // Sample Collection Permissions
    StaffPermission(
      id: 'collect_samples',
      name: 'Collect Samples',
      description: 'Can collect samples from patients',
      category: 'Sample Collection',
    ),
    StaffPermission(
      id: 'view_sample_history',
      name: 'View Sample History',
      description: 'Can view historical sample data',
      category: 'Sample Collection',
    ),
    StaffPermission(
      id: 'scan_barcodes',
      name: 'Scan Barcodes',
      description: 'Can scan and validate sample barcodes',
      category: 'Sample Collection',
    ),
    
    // Lab Operations Permissions
    StaffPermission(
      id: 'process_samples',
      name: 'Process Samples',
      description: 'Can process and analyze samples',
      category: 'Lab Operations',
    ),
    StaffPermission(
      id: 'enter_results',
      name: 'Enter Results',
      description: 'Can enter test results',
      category: 'Lab Operations',
    ),
    StaffPermission(
      id: 'sign_off_results',
      name: 'Sign Off Results',
      description: 'Can approve and sign off test results',
      category: 'Lab Operations',
    ),
    StaffPermission(
      id: 'quality_control',
      name: 'Quality Control',
      description: 'Can perform quality control checks',
      category: 'Lab Operations',
    ),
    
    // Analytics & Reporting
    StaffPermission(
      id: 'view_analytics',
      name: 'View Analytics',
      description: 'Can view lab analytics and reports',
      category: 'Analytics',
    ),
    StaffPermission(
      id: 'export_reports',
      name: 'Export Reports',
      description: 'Can export and download reports',
      category: 'Analytics',
    ),
    
    // Inventory Management
    StaffPermission(
      id: 'manage_inventory',
      name: 'Manage Inventory',
      description: 'Can manage lab inventory and supplies',
      category: 'Inventory',
    ),
    StaffPermission(
      id: 'order_supplies',
      name: 'Order Supplies',
      description: 'Can place orders for lab supplies',
      category: 'Inventory',
    ),
    
    // Cold Chain Management
    StaffPermission(
      id: 'monitor_cold_chain',
      name: 'Monitor Cold Chain',
      description: 'Can monitor cold chain conditions',
      category: 'Cold Chain',
    ),
    StaffPermission(
      id: 'manage_cold_chain',
      name: 'Manage Cold Chain',
      description: 'Can manage cold chain equipment',
      category: 'Cold Chain',
    ),
    
    // Staff Management (for Lab Admin)
    StaffPermission(
      id: 'view_staff',
      name: 'View Staff',
      description: 'Can view staff information',
      category: 'Staff Management',
    ),
    StaffPermission(
      id: 'manage_staff',
      name: 'Manage Staff',
      description: 'Can add, edit, or remove staff members',
      category: 'Staff Management',
    ),
    StaffPermission(
      id: 'manage_permissions',
      name: 'Manage Permissions',
      description: 'Can modify staff permissions',
      category: 'Staff Management',
    ),
    
    // Financial
    StaffPermission(
      id: 'view_wallet',
      name: 'View Wallet',
      description: 'Can view wallet and earnings',
      category: 'Financial',
    ),
    StaffPermission(
      id: 'request_payout',
      name: 'Request Payout',
      description: 'Can request payout withdrawals',
      category: 'Financial',
    ),
    StaffPermission(
      id: 'manage_payouts',
      name: 'Manage Payouts',
      description: 'Can approve/reject payout requests',
      category: 'Financial',
    ),
  ];

  @override
  void initState() {
    super.initState();
    // TODO: Load current permissions from staff member or permission provider
    // Initialize with empty set for now
    // In production, this should load from: ref.read(staffPermissionsProvider(widget.staff.id))
    _selectedPermissions = {};
  }

  void _savePermissions() {
    // TODO: Implement actual permission update with backend API
    // For now, show a message that backend integration is pending
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Backend integration pending - permissions not persisted'),
        backgroundColor: AppColors.warning,
        behavior: SnackBarBehavior.floating,
      ),
    );
    Navigator.pop(context, false);
  }

  @override
  Widget build(BuildContext context) {
    // Group permissions by category
    final Map<String, List<StaffPermission>> groupedPermissions = {};
    for (var permission in _availablePermissions) {
      groupedPermissions.putIfAbsent(permission.category, () => []);
      groupedPermissions[permission.category]!.add(permission);
    }

    return Dialog(
      backgroundColor: AppColors.darkSurface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
      ),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600, maxHeight: 700),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(AppDimensions.spacing24),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Manage Permissions',
                          style: AppTextStyles.h4.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: AppDimensions.spacing4),
                        Text(
                          widget.staff.name,
                          style: AppTextStyles.bodyMedium.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context, false),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            // Permissions List
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(AppDimensions.spacing24),
                children: groupedPermissions.entries.map((entry) {
                  return _buildPermissionCategory(
                    entry.key,
                    entry.value,
                  );
                }).toList(),
              ),
            ),
            const Divider(height: 1),
            // Actions
            Padding(
              padding: const EdgeInsets.all(AppDimensions.spacing24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: AppColors.textSecondary),
                    ),
                  ),
                  const SizedBox(width: AppDimensions.spacing12),
                  ElevatedButton(
                    onPressed: _savePermissions,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppDimensions.spacing24,
                        vertical: AppDimensions.spacing12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          AppDimensions.radiusMedium,
                        ),
                      ),
                    ),
                    child: Text(
                      'Save Changes',
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPermissionCategory(
    String category,
    List<StaffPermission> permissions,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: AppDimensions.spacing12),
          child: Text(
            category,
            style: AppTextStyles.bodyLarge.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.primary,
            ),
          ),
        ),
        ...permissions.map((permission) {
          final isSelected = _selectedPermissions.contains(permission.id);
          return CheckboxListTile(
            value: isSelected,
            onChanged: (value) {
              setState(() {
                if (value == true) {
                  _selectedPermissions.add(permission.id);
                } else {
                  _selectedPermissions.remove(permission.id);
                }
              });
            },
            title: Text(
              permission.name,
              style: AppTextStyles.bodyMedium.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              permission.description,
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            activeColor: AppColors.primary,
            contentPadding: EdgeInsets.zero,
          );
        }),
        const SizedBox(height: AppDimensions.spacing20),
      ],
    );
  }
}
