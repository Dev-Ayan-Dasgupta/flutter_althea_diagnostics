import 'package:flutter/material.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_shadows.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import 'gradient_text.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String email;
  final String? phoneNumber;
  final String? avatarUrl;
  final VoidCallback? onEditTap;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.email,
    this.phoneNumber,
    this.avatarUrl,
    this.onEditTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimensions.spacing24),
      decoration: BoxDecoration(
        gradient: AppGradients.surfaceDark,
        borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
        boxShadow: AppShadows.medium,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              // Avatar
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  gradient: AppGradients.primaryButton,
                  shape: BoxShape.circle,
                  boxShadow: AppShadows.primary,
                ),
                child: avatarUrl != null
                    ? ClipOval(
                        child: Image.network(avatarUrl!, fit: BoxFit.cover),
                      )
                    : Center(
                        child: Text(
                          name.substring(0, 1).toUpperCase(),
                          style: AppTextStyles.h1.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
              ),
              // Edit button
              if (onEditTap != null)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: onEditTap,
                    child: Container(
                      padding: const EdgeInsets.all(AppDimensions.spacing8),
                      decoration: BoxDecoration(
                        gradient: AppGradients.secondaryButton,
                        shape: BoxShape.circle,
                        boxShadow: AppShadows.secondary,
                      ),
                      child: const Icon(
                        Icons.edit,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacing16),
          GradientText(
            name,
            style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
            gradient: AppGradients.primaryText,
          ),
          const SizedBox(height: AppDimensions.spacing8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.email_outlined,
                size: 16,
                color: AppColors.textSecondary,
              ),
              const SizedBox(width: AppDimensions.spacing4),
              Text(
                email,
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          if (phoneNumber != null) ...[
            const SizedBox(height: AppDimensions.spacing4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_outlined,
                  size: 16,
                  color: AppColors.textSecondary,
                ),
                const SizedBox(width: AppDimensions.spacing4),
                Text(
                  phoneNumber!,
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
