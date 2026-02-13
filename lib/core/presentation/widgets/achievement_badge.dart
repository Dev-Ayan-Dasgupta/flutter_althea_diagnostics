import 'package:flutter/material.dart';
import '../../config/design/export.dart';
import '../../config/theme/export.dart';
import '../../../features/performance/domain/entities/performance.dart';

class AchievementBadge extends StatelessWidget {
  final Achievement achievement;
  final VoidCallback? onTap;

  const AchievementBadge({super.key, required this.achievement, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppDimensions.spacing12),
        decoration: BoxDecoration(
          gradient: AppGradients.surfaceDark,
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          boxShadow: AppShadows.soft,
        ),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                gradient: _getTierGradient(),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: _getTierColor().withValues(alpha: 0.4),
                    blurRadius: 12,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  achievement.icon,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(height: AppDimensions.spacing8),
            Text(
              achievement.title,
              style: AppTextStyles.bodySmall.copyWith(
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: AppDimensions.spacing4),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.spacing8,
                vertical: AppDimensions.spacing4,
              ),
              decoration: BoxDecoration(
                color: _getTierColor().withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
              ),
              child: Text(
                achievement.tier.name.toUpperCase(),
                style: AppTextStyles.bodySmall.copyWith(
                  fontSize: 9,
                  fontWeight: FontWeight.w700,
                  color: _getTierColor(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getTierColor() {
    switch (achievement.tier) {
      case AchievementTier.bronze:
        return const Color(0xFFCD7F32);
      case AchievementTier.silver:
        return const Color(0xFFC0C0C0);
      case AchievementTier.gold:
        return const Color(0xFFFFD700);
      case AchievementTier.platinum:
        return const Color(0xFFE5E4E2);
    }
  }

  Gradient _getTierGradient() {
    switch (achievement.tier) {
      case AchievementTier.bronze:
        return const LinearGradient(
          colors: [Color(0xFFCD7F32), Color(0xFF8B5A00)],
        );
      case AchievementTier.silver:
        return const LinearGradient(
          colors: [Color(0xFFC0C0C0), Color(0xFF808080)],
        );
      case AchievementTier.gold:
        return AppGradients.goldText;
      case AchievementTier.platinum:
        return const LinearGradient(
          colors: [Color(0xFFE5E4E2), Color(0xFFB4B3B0)],
        );
    }
  }
}
