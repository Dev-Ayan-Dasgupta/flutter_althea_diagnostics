import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_shadows.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import '../../../features/performance/domain/entities/performance.dart';

class ReviewCard extends StatelessWidget {
  final Rating rating;

  const ReviewCard({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.only(bottom: AppDimensions.spacing12),
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      decoration: BoxDecoration(
        gradient: isDark ? AppGradients.surfaceDark : AppGradients.surfaceLight,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        boxShadow: AppShadows.soft,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  rating.reviewerName,
                  style: AppTextStyles.bodyLarge.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    index < rating.stars ? Icons.star : Icons.star_border,
                    color: AppColors.warning,
                    size: 16,
                  );
                }),
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacing8),
          if (rating.comment != null)
            Text(
              rating.comment!,
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          const SizedBox(height: AppDimensions.spacing8),
          Text(
            timeago.format(rating.timestamp),
            style: AppTextStyles.bodySmall.copyWith(
              fontSize: 11,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
