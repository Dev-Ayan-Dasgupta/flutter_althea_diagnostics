import 'package:flutter/material.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';

class SettingsSectionHeader extends StatelessWidget {
  final String title;
  final IconData? icon;

  const SettingsSectionHeader({super.key, required this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppDimensions.spacing16,
        top: AppDimensions.spacing24,
        bottom: AppDimensions.spacing12,
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(icon, size: 20, color: AppColors.primary),
            const SizedBox(width: AppDimensions.spacing8),
          ],
          Text(
            title.toUpperCase(),
            style: AppTextStyles.bodySmall.copyWith(
              fontWeight: FontWeight.w700,
              letterSpacing: 1.5,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
