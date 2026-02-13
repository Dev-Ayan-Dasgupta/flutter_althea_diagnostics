import 'package:flutter/material.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';

class RatingDisplay extends StatelessWidget {
  final double rating;
  final int totalRatings;
  final double size;
  final bool showText;

  const RatingDisplay({
    super.key,
    required this.rating,
    required this.totalRatings,
    this.size = 20,
    this.showText = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: AppColors.warning, size: size),
        const SizedBox(width: AppDimensions.spacing4),
        if (showText)
          Text(
            '${rating.toStringAsFixed(1)} ($totalRatings)',
            style: AppTextStyles.bodyMedium.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
      ],
    );
  }
}
