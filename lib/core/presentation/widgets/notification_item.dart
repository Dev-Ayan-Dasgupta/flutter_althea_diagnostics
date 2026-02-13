import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_shadows.dart';
import '../../config/design/app_animations.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import '../../../features/notifications/domain/entities/notification.dart';

class NotificationItem extends StatefulWidget {
  final AppNotification notification;
  final VoidCallback onTap;
  final VoidCallback? onDelete;

  const NotificationItem({
    super.key,
    required this.notification,
    required this.onTap,
    this.onDelete,
  });

  @override
  State<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem>
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

  IconData _getIcon() {
    switch (widget.notification.type) {
      case NotificationType.tatAlert:
        return Icons.alarm;
      case NotificationType.sampleStatus:
        return Icons.science;
      case NotificationType.coldChainBreach:
        return Icons.ac_unit;
      case NotificationType.systemAlert:
        return Icons.info;
      case NotificationType.general:
        return Icons.notifications;
    }
  }

  Color _getColor() {
    switch (widget.notification.priority) {
      case NotificationPriority.critical:
        return AppColors.critical;
      case NotificationPriority.high:
        return AppColors.warning;
      case NotificationPriority.medium:
        return AppColors.primary;
      case NotificationPriority.low:
        return AppColors.textSecondary;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Dismissible(
      key: Key(widget.notification.id),
      direction: DismissDirection.endToStart,
      onDismissed: (_) => widget.onDelete?.call(),
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: AppDimensions.spacing20),
        decoration: BoxDecoration(
          gradient: AppGradients.critical,
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        ),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      child: ScaleTransition(
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
              borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
              boxShadow: AppShadows.soft,
              border: !widget.notification.isRead
                  ? Border.all(
                      color: AppColors.primary.withValues(alpha: 0.3),
                      width: 2,
                    )
                  : null,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Icon
                Container(
                  padding: const EdgeInsets.all(AppDimensions.spacing12),
                  decoration: BoxDecoration(
                    color: _getColor().withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(
                      AppDimensions.radiusSmall,
                    ),
                  ),
                  child: Icon(
                    _getIcon(),
                    color: _getColor(),
                    size: AppDimensions.iconMedium,
                  ),
                ),
                const SizedBox(width: AppDimensions.spacing12),
                // Content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.notification.title,
                              style: AppTextStyles.bodyLarge.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          if (!widget.notification.isRead)
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                gradient: AppGradients.primaryButton,
                                shape: BoxShape.circle,
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: AppDimensions.spacing4),
                      Text(
                        widget.notification.message,
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.textSecondary,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: AppDimensions.spacing8),
                      Text(
                        timeago.format(widget.notification.timestamp),
                        style: AppTextStyles.bodySmall.copyWith(
                          color: AppColors.textSecondary,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
