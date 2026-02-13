import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_shadows.dart';
import '../../config/design/app_animations.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import '../../../features/staff/domain/entities/staff.dart';
import '../../../features/auth/domain/entities/user.dart';

class StaffCard extends StatefulWidget {
  final StaffMember staff;
  final VoidCallback onTap;
  final VoidCallback? onStatusToggle;

  const StaffCard({
    super.key,
    required this.staff,
    required this.onTap,
    this.onStatusToggle,
  });

  @override
  State<StaffCard> createState() => _StaffCardState();
}

class _StaffCardState extends State<StaffCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: AppAnimations.fast,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.98,
    ).animate(CurvedAnimation(parent: _controller, curve: AppAnimations.curve));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ScaleTransition(
      scale: _scaleAnimation,
      child: GestureDetector(
        onTapDown: (_) => _controller.forward(),
        onTapUp: (_) {
          _controller.reverse();
          widget.onTap();
        },
        onTapCancel: () => _controller.reverse(),
        child: Container(
          margin: const EdgeInsets.only(bottom: AppDimensions.spacing12),
          padding: const EdgeInsets.all(AppDimensions.spacing16),
          decoration: BoxDecoration(
            gradient: isDark
                ? AppGradients.surfaceDark
                : AppGradients.surfaceLight,
            borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
            boxShadow: AppShadows.medium,
          ),
          child: Row(
            children: [
              // Avatar with online indicator
              Stack(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: AppGradients.primaryButton,
                      shape: BoxShape.circle,
                    ),
                    child: widget.staff.avatarUrl != null
                        ? ClipOval(
                            child: Image.network(
                              widget.staff.avatarUrl!,
                              fit: BoxFit.cover,
                            ),
                          )
                        : Center(
                            child: Text(
                              widget.staff.name.substring(0, 1).toUpperCase(),
                              style: AppTextStyles.h3.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                  ),
                  if (widget.staff.isOnline)
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: AppColors.success,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: isDark
                                ? AppColors.darkSurface
                                : Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(width: AppDimensions.spacing16),

              // Staff Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.staff.name,
                      style: AppTextStyles.bodyLarge.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: AppDimensions.spacing4),
                    Row(
                      children: [
                        Icon(
                          _getRoleIcon(),
                          size: 14,
                          color: AppColors.textSecondary,
                        ),
                        const SizedBox(width: AppDimensions.spacing4),
                        Text(
                          _getRoleLabel(),
                          style: AppTextStyles.bodySmall.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppDimensions.spacing8),
                    Row(
                      children: [
                        if (widget.staff.totalCollections != null) ...[
                          _buildStatChip(
                            '${widget.staff.totalCollections}',
                            Icons.science,
                          ),
                          const SizedBox(width: AppDimensions.spacing8),
                        ],
                        if (widget.staff.averageRating != null)
                          _buildStatChip(
                            widget.staff.averageRating!.toStringAsFixed(1),
                            Icons.star,
                            color: AppColors.warning,
                          ),
                      ],
                    ),
                  ],
                ),
              ),

              // Status & Actions
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDimensions.spacing8,
                      vertical: AppDimensions.spacing4,
                    ),
                    decoration: BoxDecoration(
                      color: _getStatusColor().withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(
                        AppDimensions.radiusSmall,
                      ),
                    ),
                    child: Text(
                      widget.staff.status.name.toUpperCase(),
                      style: AppTextStyles.bodySmall.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: _getStatusColor(),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppDimensions.spacing8),
                  if (widget.staff.lastActiveAt != null)
                    Text(
                      timeago.format(widget.staff.lastActiveAt!),
                      style: AppTextStyles.bodySmall.copyWith(
                        fontSize: 11,
                        color: AppColors.textSecondary,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatChip(String value, IconData icon, {Color? color}) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing8,
        vertical: AppDimensions.spacing4,
      ),
      decoration: BoxDecoration(
        color: (color ?? AppColors.primary).withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: color ?? AppColors.primary),
          const SizedBox(width: AppDimensions.spacing4),
          Text(
            value,
            style: AppTextStyles.bodySmall.copyWith(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: color ?? AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }

  IconData _getRoleIcon() {
    switch (widget.staff.role) {
      case UserRole.phlebotomist:
        return Icons.medical_services;
      case UserRole.labAdmin:
        return Icons.admin_panel_settings;
      case UserRole.labTechnician:
        return Icons.science;
      case UserRole.pathologist:
        return Icons.local_hospital;
      case UserRole.platformAdmin:
        return Icons.verified;
    }
  }

  String _getRoleLabel() {
    switch (widget.staff.role) {
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
    }
  }

  Color _getStatusColor() {
    switch (widget.staff.status) {
      case PhlebotomistStatus.active:
        return AppColors.success;
      case PhlebotomistStatus.inactive:
        return AppColors.textSecondary;
      case PhlebotomistStatus.suspended:
        return AppColors.critical;
      case PhlebotomistStatus.onBreak:
        return AppColors.warning;
    }
  }
}
