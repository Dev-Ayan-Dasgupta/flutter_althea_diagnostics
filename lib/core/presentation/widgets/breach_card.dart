import 'package:flutter/material.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_shadows.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import '../../../features/cold_chain/domain/entities/cold_chain_data.dart';
import 'package:timeago/timeago.dart' as timeago;

class BreachCard extends StatelessWidget {
  final TemperatureBreach breach;

  const BreachCard({super.key, required this.breach});

  Color get _severityColor {
    switch (breach.severity) {
      case BreachSeverity.minor:
        return AppColors.warning;
      case BreachSeverity.moderate:
        return Color(0xFFFF9800);
      case BreachSeverity.severe:
        return AppColors.critical;
    }
  }

  IconData get _severityIcon {
    switch (breach.severity) {
      case BreachSeverity.minor:
        return Icons.warning_amber;
      case BreachSeverity.moderate:
        return Icons.error_outline;
      case BreachSeverity.severe:
        return Icons.dangerous;
    }
  }

  @override
  Widget build(BuildContext context) {
    final duration = Duration(seconds: breach.durationSeconds);

    return Container(
      margin: const EdgeInsets.only(bottom: AppDimensions.spacing12),
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      decoration: BoxDecoration(
        gradient: AppGradients.surfaceDark,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        boxShadow: AppShadows.soft,
        border: Border.all(color: _severityColor.withOpacity(0.3), width: 2),
      ),
      child: Row(
        children: [
          // Severity indicator
          Container(
            padding: const EdgeInsets.all(AppDimensions.spacing12),
            decoration: BoxDecoration(
              color: _severityColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
            ),
            child: Icon(
              _severityIcon,
              color: _severityColor,
              size: AppDimensions.iconLarge,
            ),
          ),
          const SizedBox(width: AppDimensions.spacing16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      breach.severity.name.toUpperCase(),
                      style: AppTextStyles.bodyMedium.copyWith(
                        fontWeight: FontWeight.w700,
                        color: _severityColor,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      timeago.format(breach.startTime),
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppDimensions.spacing8),
                Row(
                  children: [
                    Icon(
                      Icons.thermostat,
                      size: 16,
                      color: AppColors.textSecondary,
                    ),
                    const SizedBox(width: AppDimensions.spacing4),
                    Text(
                      'Peak: ${breach.peakTemperature.toStringAsFixed(1)}°C',
                      style: AppTextStyles.bodySmall,
                    ),
                    const SizedBox(width: AppDimensions.spacing16),
                    Icon(Icons.timer, size: 16, color: AppColors.textSecondary),
                    const SizedBox(width: AppDimensions.spacing4),
                    Text(
                      '${duration.inMinutes}m ${duration.inSeconds % 60}s',
                      style: AppTextStyles.bodySmall,
                    ),
                  ],
                ),
                if (breach.notes != null) ...[
                  const SizedBox(height: AppDimensions.spacing8),
                  Text(
                    breach.notes!,
                    style: AppTextStyles.bodySmall.copyWith(
                      color: AppColors.textSecondary,
                      fontStyle: FontStyle.italic,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
