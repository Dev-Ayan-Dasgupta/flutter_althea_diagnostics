import 'package:flutter/material.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_shadows.dart';
import '../../config/design/app_animations.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import 'gradient_text.dart';

class StatsCard extends StatefulWidget {
  final String title;
  final String value;
  final String? subtitle;
  final IconData icon;
  final Gradient gradient;
  final VoidCallback? onTap;
  final Widget? trailing;

  const StatsCard({
    super.key,
    required this.title,
    required this.value,
    this.subtitle,
    required this.icon,
    required this.gradient,
    this.onTap,
    this.trailing,
  });

  @override
  State<StatsCard> createState() => _StatsCardState();
}

class _StatsCardState extends State<StatsCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: AppAnimations.medium,
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.98,
    ).animate(CurvedAnimation(parent: _controller, curve: AppAnimations.curve));

    _iconAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: AppAnimations.curve));

    // Start icon animation on mount
    _controller.forward();
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
        onTapDown: widget.onTap != null ? (_) => _controller.reverse() : null,
        onTapUp: widget.onTap != null
            ? (_) {
                _controller.forward();
                widget.onTap?.call();
              }
            : null,
        onTapCancel: widget.onTap != null ? () => _controller.forward() : null,
        child: Container(
          padding: const EdgeInsets.all(AppDimensions.spacing20),
          decoration: BoxDecoration(
            gradient: isDark
                ? AppGradients.surfaceDark
                : AppGradients.surfaceLight,
            borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
            boxShadow: AppShadows.medium,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // Icon with gradient background
                  FadeTransition(
                    opacity: _iconAnimation,
                    child: Container(
                      padding: const EdgeInsets.all(AppDimensions.spacing12),
                      decoration: BoxDecoration(
                        gradient: widget.gradient,
                        borderRadius: BorderRadius.circular(
                          AppDimensions.radiusMedium,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: widget.gradient.colors.first.withValues(
                              alpha: 0.4,
                            ),
                            blurRadius: 12,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Icon(
                        widget.icon,
                        color: Colors.white,
                        size: AppDimensions.iconMedium,
                      ),
                    ),
                  ),
                  const Spacer(),
                  if (widget.trailing != null) widget.trailing!,
                ],
              ),
              const SizedBox(height: AppDimensions.spacing16),
              Text(
                widget.title,
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: AppDimensions.spacing4),
              GradientText(
                widget.value,
                style: AppTextStyles.h2.copyWith(fontWeight: FontWeight.w800),
                gradient: widget.gradient,
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
      ),
    );
  }
}
