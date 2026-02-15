import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/gradient_text.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/app_card.dart';
import '../../../../core/presentation/widgets/status_badge.dart';
import '../../../../core/utils/navigation_extensions.dart';
import '../../../auth/domain/entities/user.dart';
import '../../domain/entities/staff.dart';
import '../widgets/edit_staff_dialog.dart';
import '../widgets/permissions_dialog.dart';

class StaffDetailScreen extends ConsumerStatefulWidget {
  final StaffMember staff;

  const StaffDetailScreen({
    super.key,
    required this.staff,
  });

  @override
  ConsumerState<StaffDetailScreen> createState() => _StaffDetailScreenState();
}

class _StaffDetailScreenState extends ConsumerState<StaffDetailScreen> {
  void _editStaff() {
    showDialog(
      context: context,
      builder: (context) => EditStaffDialog(staff: widget.staff),
    ).then((updated) {
      if (updated == true) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Staff details updated successfully'),
            backgroundColor: AppColors.success,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    });
  }

  void _managePermissions() {
    showDialog(
      context: context,
      builder: (context) => PermissionsDialog(staff: widget.staff),
    ).then((updated) {
      if (updated == true) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Permissions updated successfully'),
            backgroundColor: AppColors.success,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    });
  }

  void _removeStaff() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
        ),
        title: Text(
          'Remove Staff Member',
          style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Are you sure you want to remove ${widget.staff.name}?',
              style: AppTextStyles.bodyLarge,
            ),
            const SizedBox(height: AppDimensions.spacing16),
            Text(
              'This action cannot be undone. The staff member will lose access to the system.',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancel',
              style: TextStyle(color: AppColors.textSecondary),
            ),
          ),
          TextButton(
            onPressed: () {
              // TODO: Implement actual removal
              Navigator.pop(context);
              context.goBack();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Staff member removed successfully'),
                  backgroundColor: AppColors.success,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            child: Text(
              'Remove',
              style: TextStyle(color: AppColors.critical),
            ),
          ),
        ],
      ),
    );
  }

  void _toggleStatus() {
    // TODO: Implement status toggle
    final newStatus = widget.staff.status == PhlebotomistStatus.active
        ? PhlebotomistStatus.inactive
        : PhlebotomistStatus.active;
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Status changed to ${_getStatusLabel(newStatus)}'),
        backgroundColor: AppColors.success,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(context),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(AppDimensions.spacing16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildProfileSection(),
                      const SizedBox(height: AppDimensions.spacing16),
                      _buildDetailsCard(),
                      const SizedBox(height: AppDimensions.spacing16),
                      _buildStatsCard(),
                      const SizedBox(height: AppDimensions.spacing16),
                      _buildActionsCard(),
                      const SizedBox(height: AppDimensions.spacing24),
                      _buildDangerZone(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => context.goBack(),
            child: Container(
              padding: const EdgeInsets.all(AppDimensions.spacing8),
              decoration: BoxDecoration(
                gradient: AppGradients.surfaceDark,
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
                boxShadow: AppShadows.soft,
              ),
              child: const Icon(Icons.arrow_back),
            ),
          ),
          const SizedBox(width: AppDimensions.spacing12),
          Expanded(
            child: GradientText(
              'Staff Details',
              style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
              gradient: AppGradients.primaryText,
            ),
          ),
          GestureDetector(
            onTap: _editStaff,
            child: Container(
              padding: const EdgeInsets.all(AppDimensions.spacing8),
              decoration: BoxDecoration(
                gradient: AppGradients.primaryButton,
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
                boxShadow: AppShadows.primary,
              ),
              child: const Icon(Icons.edit, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileSection() {
    return AppCard(
      child: Column(
        children: [
          // Avatar
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              gradient: AppGradients.primaryButton,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                widget.staff.name.substring(0, 1).toUpperCase(),
                style: AppTextStyles.h1.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          Text(
            widget.staff.name,
            style: AppTextStyles.h3.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: AppDimensions.spacing4),
          Text(
            _getRoleLabel(widget.staff.role),
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: AppDimensions.spacing12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StatusBadge(
                text: _getStatusLabel(widget.staff.status),
                type: _getStatusBadgeType(widget.staff.status),
              ),
              if (widget.staff.isOnline) ...[
                const SizedBox(width: AppDimensions.spacing8),
                StatusBadge(
                  text: 'Online',
                  type: BadgeType.success,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailsCard() {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Information',
            style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          _buildDetailRow(Icons.email, 'Email', widget.staff.email),
          const SizedBox(height: AppDimensions.spacing12),
          _buildDetailRow(Icons.phone, 'Phone', widget.staff.phoneNumber),
          const SizedBox(height: AppDimensions.spacing12),
          _buildDetailRow(
            Icons.calendar_today,
            'Joined',
            _formatDate(widget.staff.joinedAt),
          ),
          if (widget.staff.lastActiveAt != null) ...[
            const SizedBox(height: AppDimensions.spacing12),
            _buildDetailRow(
              Icons.access_time,
              'Last Active',
              _formatDateTime(widget.staff.lastActiveAt!),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildStatsCard() {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Performance',
            style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          Row(
            children: [
              Expanded(
                child: _buildStatItem(
                  'Collections',
                  widget.staff.totalCollections?.toString() ?? '0',
                  Icons.science_outlined,
                ),
              ),
              Expanded(
                child: _buildStatItem(
                  'Rating',
                  widget.staff.averageRating?.toStringAsFixed(1) ?? 'N/A',
                  Icons.star_outline,
                ),
              ),
              Expanded(
                child: _buildStatItem(
                  'Balance',
                  '₹${widget.staff.currentBalance?.toStringAsFixed(0) ?? '0'}',
                  Icons.account_balance_wallet_outlined,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionsCard() {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Actions',
            style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          AppButton(
            text: 'Manage Permissions',
            onPressed: _managePermissions,
            icon: const Icon(Icons.security),
            type: AppButtonType.outline,
          ),
          const SizedBox(height: AppDimensions.spacing12),
          AppButton(
            text: widget.staff.status == PhlebotomistStatus.active
                ? 'Deactivate'
                : 'Activate',
            onPressed: _toggleStatus,
            icon: Icon(
              widget.staff.status == PhlebotomistStatus.active
                  ? Icons.block
                  : Icons.check_circle,
            ),
            type: AppButtonType.outline,
          ),
        ],
      ),
    );
  }

  Widget _buildDangerZone() {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Icon(Icons.warning, color: AppColors.critical),
              const SizedBox(width: AppDimensions.spacing8),
              Text(
                'Danger Zone',
                style: AppTextStyles.h4.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.critical,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacing16),
          Text(
            'Removing a staff member will revoke their access immediately.',
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          ElevatedButton.icon(
            onPressed: _removeStaff,
            icon: const Icon(Icons.person_remove),
            label: const Text('Remove Staff Member'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.critical,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(
                vertical: AppDimensions.spacing16,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  AppDimensions.radiusMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(
          icon,
          size: AppDimensions.iconMedium,
          color: AppColors.textSecondary,
        ),
        const SizedBox(width: AppDimensions.spacing12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: AppDimensions.spacing4),
              Text(
                value,
                style: AppTextStyles.bodyMedium.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStatItem(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(
          icon,
          size: AppDimensions.iconLarge,
          color: AppColors.primary,
        ),
        const SizedBox(height: AppDimensions.spacing8),
        Text(
          value,
          style: AppTextStyles.h3.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: AppDimensions.spacing4),
        Text(
          label,
          style: AppTextStyles.bodySmall.copyWith(
            color: AppColors.textSecondary,
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
      case UserRole.platformAdmin:
        return 'Platform Admin';
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
      default:
        return status.name;
    }
  }

  BadgeType _getStatusBadgeType(PhlebotomistStatus status) {
    switch (status) {
      case PhlebotomistStatus.active:
        return BadgeType.success;
      case PhlebotomistStatus.inactive:
        return BadgeType.info;
      case PhlebotomistStatus.suspended:
        return BadgeType.critical;
      case PhlebotomistStatus.onBreak:
        return BadgeType.warning;
      default:
        return BadgeType.info;
    }
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  String _formatDateTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes}m ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours}h ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}d ago';
    } else {
      return _formatDate(dateTime);
    }
  }
}
