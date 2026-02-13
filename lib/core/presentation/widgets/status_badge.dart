import 'package:flutter/material.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/theme/app_text_styles.dart';

enum BadgeType { success, warning, critical, info, processing }

class StatusBadge extends StatelessWidget {
  final String text;
  final BadgeType type;
  final bool showDot;

  const StatusBadge({
    super.key,
    required this.text,
    required this.type,
    this.showDot = true,
  });

  Gradient get _gradient {
    switch (type) {
      case BadgeType.success:
        return AppGradients.success;
      case BadgeType.warning:
        return const LinearGradient(
          colors: [Color(0xFFFFD600), Color(0xFFFFB800)],
        );
      case BadgeType.critical:
        return AppGradients.critical;
      case BadgeType.info:
        return const LinearGradient(
          colors: [Color(0xFF64B5F6), Color(0xFF2196F3)],
        );
      case BadgeType.processing:
        return AppGradients.secondaryButton;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing12,
        vertical: AppDimensions.spacing4,
      ),
      decoration: BoxDecoration(
        gradient: _gradient.scale(0.2), // Low opacity background
        borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showDot) ...[
            Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                gradient: _gradient,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: _gradient.colors.first.withValues(alpha: 0.6),
                    blurRadius: 4,
                    spreadRadius: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppDimensions.spacing8),
          ],
          Text(
            text,
            style: AppTextStyles.bodySmall.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

// Extension to scale gradient opacity
extension GradientExtension on Gradient {
  Gradient scale(double opacity) {
    if (this is LinearGradient) {
      final linear = this as LinearGradient;
      return LinearGradient(
        begin: linear.begin,
        end: linear.end,
        colors: linear.colors.map((c) => c.withValues(alpha: opacity)).toList(),
        stops: linear.stops,
      );
    }
    return this;
  }
}
