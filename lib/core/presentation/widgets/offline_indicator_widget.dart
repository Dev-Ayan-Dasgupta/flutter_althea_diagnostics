import 'package:flutter/material.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';

class OfflineIndicator extends StatelessWidget {
  final bool isOnline;
  final int pendingSyncCount;

  const OfflineIndicator({
    super.key,
    required this.isOnline,
    this.pendingSyncCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    if (isOnline && pendingSyncCount == 0) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing12,
        vertical: AppDimensions.spacing8,
      ),
      margin: const EdgeInsets.all(AppDimensions.spacing16),
      decoration: BoxDecoration(
        gradient: isOnline
            ? AppGradients.secondaryButton
            : AppGradients.critical,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        boxShadow: [
          BoxShadow(
            color: (isOnline ? AppColors.secondary : AppColors.critical)
                .withValues(alpha: 0.3),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isOnline ? Icons.sync : Icons.cloud_off,
            size: 16,
            color: Colors.white,
          ),
          const SizedBox(width: AppDimensions.spacing8),
          Text(
            isOnline
                ? 'Syncing $pendingSyncCount item${pendingSyncCount != 1 ? 's' : ''}...'
                : 'Offline Mode',
            style: AppTextStyles.bodySmall.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
