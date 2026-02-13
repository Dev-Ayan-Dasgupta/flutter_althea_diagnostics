import 'package:flutter/material.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/theme/app_text_styles.dart';
import '../../sync/models/sync_item.dart';
import '../../sync/services/background_sync_service.dart';

class SyncStatusBanner extends StatelessWidget {
  final SyncProgress progress;
  final VoidCallback? onRetry;

  const SyncStatusBanner({super.key, required this.progress, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: _getHeight(),
      child: _getHeight() > 0 ? _buildContent(context) : null,
    );
  }

  double _getHeight() {
    switch (progress.status) {
      case SyncStatus.pending:
        return 0;
      case SyncStatus.inProgress:
        return 60;
      case SyncStatus.completed:
        return 0; // Auto-hide after completion
      case SyncStatus.failed:
        return 70;
    }
  }

  Widget _buildContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing16,
        vertical: AppDimensions.spacing12,
      ),
      decoration: BoxDecoration(gradient: _getGradient()),
      child: Row(
        children: [
          _buildIcon(),
          const SizedBox(width: AppDimensions.spacing12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _getTitle(),
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (progress.status == SyncStatus.inProgress) ...[
                  const SizedBox(height: AppDimensions.spacing4),
                  LinearProgressIndicator(
                    value: progress.progress,
                    backgroundColor: Colors.white.withOpacity(0.3),
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      Colors.white,
                    ),
                  ),
                ],
                if (progress.error != null) ...[
                  const SizedBox(height: AppDimensions.spacing4),
                  Text(
                    progress.error!,
                    style: AppTextStyles.bodySmall.copyWith(
                      color: Colors.white.withOpacity(0.8),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
          if (progress.status == SyncStatus.failed && onRetry != null)
            TextButton(
              onPressed: onRetry,
              child: Text(
                'Retry',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildIcon() {
    switch (progress.status) {
      case SyncStatus.inProgress:
        return const SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        );
      case SyncStatus.completed:
        return const Icon(Icons.check_circle, color: Colors.white);
      case SyncStatus.failed:
        return const Icon(Icons.error, color: Colors.white);
      case SyncStatus.pending:
        return const Icon(Icons.sync, color: Colors.white);
    }
  }

  String _getTitle() {
    switch (progress.status) {
      case SyncStatus.inProgress:
        return 'Syncing ${progress.completed}/${progress.total}...';
      case SyncStatus.completed:
        return 'Sync completed';
      case SyncStatus.failed:
        return 'Sync failed';
      case SyncStatus.pending:
        return 'Waiting to sync...';
    }
  }

  Gradient _getGradient() {
    switch (progress.status) {
      case SyncStatus.inProgress:
      case SyncStatus.pending:
        return AppGradients.secondaryButton;
      case SyncStatus.completed:
        return AppGradients.success;
      case SyncStatus.failed:
        return AppGradients.critical;
    }
  }
}
