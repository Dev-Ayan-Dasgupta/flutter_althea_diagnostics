import 'package:flutter/material.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import 'package:timeago/timeago.dart' as timeago;

class TimelineItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final DateTime timestamp;
  final IconData icon;
  final bool isFirst;
  final bool isLast;
  final Gradient gradient;

  const TimelineItem({
    super.key,
    required this.title,
    this.subtitle,
    required this.timestamp,
    required this.icon,
    this.isFirst = false,
    this.isLast = false,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Timeline indicator
          Column(
            children: [
              if (!isFirst)
                Container(
                  width: 2,
                  height: 24,
                  color: AppColors.darkSurfaceVariant,
                ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  gradient: gradient,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: gradient.colors.first.withOpacity(0.4),
                      blurRadius: 12,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Icon(icon, size: 20, color: Colors.white),
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    color: AppColors.darkSurfaceVariant,
                  ),
                ),
            ],
          ),
          const SizedBox(width: AppDimensions.spacing16),
          // Content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: AppDimensions.spacing20,
                top: AppDimensions.spacing8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.bodyLarge.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: AppDimensions.spacing4),
                    Text(
                      subtitle!,
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                  const SizedBox(height: AppDimensions.spacing4),
                  Text(
                    timeago.format(timestamp),
                    style: AppTextStyles.bodySmall.copyWith(
                      color: AppColors.textSecondary,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
