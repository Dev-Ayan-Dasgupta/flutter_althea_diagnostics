import 'package:flutter/material.dart';
import '../../../features/sample_integrity/domain/entities/sample_integrity_score.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_shadows.dart';
import '../../config/design/app_animations.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import '../../../features/sample_collection/domain/entities/sample.dart';
import 'status_badge.dart';
import 'package:timeago/timeago.dart' as timeago;

class SampleListItem extends StatefulWidget {
  final Sample sample;
  final VoidCallback onTap;

  const SampleListItem({super.key, required this.sample, required this.onTap});

  @override
  State<SampleListItem> createState() => _SampleListItemState();
}

class _SampleListItemState extends State<SampleListItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: AppAnimations.fast,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.98,
    ).animate(CurvedAnimation(parent: _controller, curve: AppAnimations.curve));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  BadgeType _getBadgeType() {
    return widget.sample.status.when(
      requested: () => BadgeType.info,
      assigned: (_) => BadgeType.info,
      inTransit: (_, __) => BadgeType.processing,
      reachedLab: (_) => BadgeType.warning,
      processing: (_) => BadgeType.warning,
      completed: (_, __) => BadgeType.success,
      rejected: (_, __, ___) => BadgeType.critical,
      cancelled: (_, __) => BadgeType.critical,
    );
  }

  String _getStatusText() {
    return widget.sample.status.when(
      requested: () => 'Requested',
      assigned: (_) => 'Assigned',
      inTransit: (_, __) => 'In Transit',
      reachedLab: (_) => 'At Lab',
      processing: (_) => 'Processing',
      completed: (_, __) => 'Completed',
      rejected: (_, __, ___) => 'Rejected',
      cancelled: (_, __) => 'Cancelled',
    );
  }

  IconData _getStatusIcon() {
    return widget.sample.status.when(
      requested: () => Icons.schedule,
      assigned: (_) => Icons.person_pin_circle,
      inTransit: (_, __) => Icons.local_shipping,
      reachedLab: (_) => Icons.business,
      processing: (_) => Icons.science,
      completed: (_, __) => Icons.check_circle,
      rejected: (_, __, ___) => Icons.error,
      cancelled: (_, __) => Icons.cancel,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ScaleTransition(
      scale: _scaleAnimation,
      child: GestureDetector(
        onTapDown: (_) => _controller.forward(),
        onTapUp: (_) {
          _controller.reverse();
          widget.onTap();
        },
        onTapCancel: () => _controller.reverse(),
        child: Container(
          margin: const EdgeInsets.only(bottom: AppDimensions.spacing12),
          padding: const EdgeInsets.all(AppDimensions.spacing16),
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
                  // Status Icon
                  Container(
                    padding: const EdgeInsets.all(AppDimensions.spacing8),
                    decoration: BoxDecoration(
                      gradient: _getBadgeType() == BadgeType.success
                          ? AppGradients.success
                          : _getBadgeType() == BadgeType.critical
                          ? AppGradients.critical
                          : _getBadgeType() == BadgeType.processing
                          ? AppGradients.secondaryButton
                          : const LinearGradient(
                              colors: [Color(0xFFFF9800), Color(0xFFF57C00)],
                            ),
                      borderRadius: BorderRadius.circular(
                        AppDimensions.radiusSmall,
                      ),
                    ),
                    child: Icon(
                      _getStatusIcon(),
                      size: AppDimensions.iconMedium,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: AppDimensions.spacing12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.sample.patientName,
                          style: AppTextStyles.bodyLarge.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: AppDimensions.spacing4),
                        Text(
                          'Vial: ${widget.sample.vialId}',
                          style: AppTextStyles.bodySmall.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  StatusBadge(text: _getStatusText(), type: _getBadgeType()),
                ],
              ),
              const SizedBox(height: AppDimensions.spacing12),
              // Integrity Score
              Row(
                children: [
                  Expanded(
                    child: _buildInfoChip(
                      'Integrity',
                      '${widget.sample.integrityScore.overallScore.toInt()}%',
                      Icons.verified_outlined,
                      _getIntegrityColor(widget.sample.integrityScore.level),
                    ),
                  ),
                  const SizedBox(width: AppDimensions.spacing8),
                  Expanded(
                    child: _buildInfoChip(
                      'Tests',
                      widget.sample.testIds.length.toString(),
                      Icons.assignment_outlined,
                      AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(width: AppDimensions.spacing8),
                  Expanded(
                    child: _buildInfoChip(
                      'Time',
                      timeago.format(
                        widget.sample.collectionTime,
                        locale: 'en_short',
                      ),
                      Icons.access_time,
                      AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoChip(
    String label,
    String value,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing8,
        vertical: AppDimensions.spacing8,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
      ),
      child: Column(
        children: [
          Icon(icon, size: 16, color: color),
          const SizedBox(height: AppDimensions.spacing4),
          Text(
            value,
            style: AppTextStyles.bodySmall.copyWith(
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
          Text(
            label,
            style: AppTextStyles.bodySmall.copyWith(
              fontSize: 10,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Color _getIntegrityColor(IntegrityLevel level) {
    switch (level) {
      case IntegrityLevel.high:
        return AppColors.integrityHigh;
      case IntegrityLevel.medium:
        return AppColors.integrityMedium;
      case IntegrityLevel.low:
        return AppColors.integrityLow;
    }
  }
}
