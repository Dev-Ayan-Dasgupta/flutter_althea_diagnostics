import 'package:flutter/material.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_shadows.dart';
import '../../config/design/app_animations.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';

class SettingsListItem extends StatefulWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;
  final Widget? trailing;
  final Color? iconColor;
  final Gradient? iconGradient;

  const SettingsListItem({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.onTap,
    this.trailing,
    this.iconColor,
    this.iconGradient,
  });

  @override
  State<SettingsListItem> createState() => _SettingsListItemState();
}

class _SettingsListItemState extends State<SettingsListItem>
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
        onTapDown: widget.onTap != null ? (_) => _controller.forward() : null,
        onTapUp: widget.onTap != null
            ? (_) {
                _controller.reverse();
                widget.onTap?.call();
              }
            : null,
        onTapCancel: widget.onTap != null ? () => _controller.reverse() : null,
        child: Container(
          margin: const EdgeInsets.only(bottom: AppDimensions.spacing12),
          padding: const EdgeInsets.all(AppDimensions.spacing16),
          decoration: BoxDecoration(
            gradient: isDark
                ? AppGradients.surfaceDark
                : AppGradients.surfaceLight,
            borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
            boxShadow: AppShadows.soft,
          ),
          child: Row(
            children: [
              // Icon
              Container(
                padding: const EdgeInsets.all(AppDimensions.spacing12),
                decoration: BoxDecoration(
                  gradient:
                      widget.iconGradient ??
                      LinearGradient(
                        colors: [
                          widget.iconColor?.withValues(alpha: 0.2) ??
                              AppColors.primary.withValues(alpha: 0.2),
                          widget.iconColor?.withValues(alpha: 0.1) ??
                              AppColors.primary.withValues(alpha: 0.1),
                        ],
                      ),
                  borderRadius: BorderRadius.circular(
                    AppDimensions.radiusSmall,
                  ),
                ),
                child: Icon(
                  widget.icon,
                  color: widget.iconColor ?? AppColors.primary,
                  size: AppDimensions.iconMedium,
                ),
              ),
              const SizedBox(width: AppDimensions.spacing16),
              // Title & Subtitle
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: AppTextStyles.bodyLarge.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (widget.subtitle != null) ...[
                      const SizedBox(height: AppDimensions.spacing4),
                      Text(
                        widget.subtitle!,
                        style: AppTextStyles.bodySmall.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              // Trailing
              if (widget.trailing != null)
                widget.trailing!
              else if (widget.onTap != null)
                Icon(Icons.chevron_right, color: AppColors.textSecondary),
            ],
          ),
        ),
      ),
    );
  }
}
