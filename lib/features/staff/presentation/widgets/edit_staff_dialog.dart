import 'package:flutter/material.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../auth/domain/entities/user.dart';
import '../../domain/entities/staff.dart';

class EditStaffDialog extends StatefulWidget {
  final StaffMember staff;

  const EditStaffDialog({super.key, required this.staff});

  @override
  State<EditStaffDialog> createState() => _EditStaffDialogState();
}

class _EditStaffDialogState extends State<EditStaffDialog> {
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;
  late UserRole _selectedRole;
  late PhlebotomistStatus _selectedStatus;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.staff.name);
    _emailController = TextEditingController(text: widget.staff.email);
    _phoneController = TextEditingController(text: widget.staff.phoneNumber);
    _selectedRole = widget.staff.role;
    _selectedStatus = widget.staff.status;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _saveChanges() {
    // TODO: Implement actual update with backend API
    // For now, show a message that backend integration is pending
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'Backend integration pending - changes not persisted',
        ),
        backgroundColor: AppColors.warning,
        behavior: SnackBarBehavior.floating,
      ),
    );
    Navigator.pop(context, false);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.darkSurface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
      ),
      title: Text(
        'Edit Staff Member',
        style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppDimensions.radiusMedium,
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppDimensions.spacing16),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppDimensions.radiusMedium,
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppDimensions.spacing16),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                prefixIcon: const Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppDimensions.radiusMedium,
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppDimensions.spacing16),
            DropdownButtonFormField<UserRole>(
              value: _selectedRole,
              decoration: InputDecoration(
                labelText: 'Role',
                prefixIcon: const Icon(Icons.work),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppDimensions.radiusMedium,
                  ),
                ),
              ),
              items:
                  [
                    UserRole.phlebotomist,
                    UserRole.labAdmin,
                    UserRole.labTechnician,
                    UserRole.pathologist,
                  ].map((role) {
                    return DropdownMenuItem(
                      value: role,
                      child: Text(_getRoleLabel(role)),
                    );
                  }).toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() => _selectedRole = value);
                }
              },
            ),
            const SizedBox(height: AppDimensions.spacing16),
            DropdownButtonFormField<PhlebotomistStatus>(
              value: _selectedStatus,
              decoration: InputDecoration(
                labelText: 'Status',
                prefixIcon: const Icon(Icons.info),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppDimensions.radiusMedium,
                  ),
                ),
              ),
              items: PhlebotomistStatus.values.map((status) {
                return DropdownMenuItem(
                  value: status,
                  child: Text(_getStatusLabel(status)),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() => _selectedStatus = value);
                }
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(
            'Cancel',
            style: TextStyle(color: AppColors.textSecondary),
          ),
        ),
        TextButton(
          onPressed: _saveChanges,
          child: Text(
            'Save Changes',
            style: TextStyle(color: AppColors.primary),
          ),
        ),
      ],
    );
  }

  String _getRoleLabel(UserRole role) {
    switch (role) {
      case UserRole.phlebotomist:
        return 'Phlebotomist';
      case UserRole.labAdmin:
        return 'Lab Admin';
      case UserRole.labTechnician:
        return 'Lab Technician';
      case UserRole.pathologist:
        return 'Pathologist';
      default:
        return role.name;
    }
  }

  String _getStatusLabel(PhlebotomistStatus status) {
    switch (status) {
      case PhlebotomistStatus.active:
        return 'Active';
      case PhlebotomistStatus.inactive:
        return 'Inactive';
      case PhlebotomistStatus.suspended:
        return 'Suspended';
      case PhlebotomistStatus.onBreak:
        return 'On Break';
    }
  }
}
