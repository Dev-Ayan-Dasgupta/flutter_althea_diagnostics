import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_shadows.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import '../../../features/orders/domain/entities/order.dart';

class OrderCard extends StatelessWidget {
  final CollectionOrder order;
  final VoidCallback? onAccept;
  final VoidCallback? onReject;
  final VoidCallback onTap;

  const OrderCard({
    super.key,
    required this.order,
    this.onAccept,
    this.onReject,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: AppDimensions.spacing12),
        decoration: BoxDecoration(
          gradient: isDark
              ? AppGradients.surfaceDark
              : AppGradients.surfaceLight,
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
          boxShadow: AppShadows.medium,
          border: order.status == OrderStatus.pending
              ? Border.all(
                  color: AppColors.warning.withValues(alpha: 0.5),
                  width: 2,
                )
              : null,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppDimensions.spacing16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // Patient Avatar
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: AppGradients.primaryButton,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            order.patientName.substring(0, 1).toUpperCase(),
                            style: AppTextStyles.h4.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: AppDimensions.spacing16),

                      // Patient Info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              order.patientName,
                              style: AppTextStyles.bodyLarge.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: AppDimensions.spacing4),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  size: 14,
                                  color: AppColors.textSecondary,
                                ),
                                const SizedBox(width: AppDimensions.spacing4),
                                Text(
                                  timeago.format(order.requestedAt),
                                  style: AppTextStyles.bodySmall.copyWith(
                                    color: AppColors.textSecondary,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // Status Badge
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppDimensions.spacing8,
                          vertical: AppDimensions.spacing4,
                        ),
                        decoration: BoxDecoration(
                          color: _getStatusColor().withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(
                            AppDimensions.radiusSmall,
                          ),
                        ),
                        child: Text(
                          _getStatusLabel(),
                          style: AppTextStyles.bodySmall.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: _getStatusColor(),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: AppDimensions.spacing16),
                  const Divider(),
                  const SizedBox(height: AppDimensions.spacing16),

                  // Tests
                  Row(
                    children: [
                      Icon(
                        Icons.science,
                        size: 16,
                        color: AppColors.textSecondary,
                      ),
                      const SizedBox(width: AppDimensions.spacing8),
                      Expanded(
                        child: Text(
                          order.testNames.join(', '),
                          style: AppTextStyles.bodyMedium,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: AppDimensions.spacing12),

                  // Location & Distance
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 16,
                        color: AppColors.textSecondary,
                      ),
                      const SizedBox(width: AppDimensions.spacing8),
                      Expanded(
                        child: Text(
                          order.patientAddress,
                          style: AppTextStyles.bodySmall.copyWith(
                            color: AppColors.textSecondary,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (order.distanceToPatient != null) ...[
                        const SizedBox(width: AppDimensions.spacing8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppDimensions.spacing8,
                            vertical: AppDimensions.spacing4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.primary.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(
                              AppDimensions.radiusSmall,
                            ),
                          ),
                          child: Text(
                            '${order.distanceToPatient!.toStringAsFixed(1)} km',
                            style: AppTextStyles.bodySmall.copyWith(
                              fontWeight: FontWeight.w700,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),

                  if (order.collectionFee != null) ...[
                    const SizedBox(height: AppDimensions.spacing12),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 16,
                          color: AppColors.success,
                        ),
                        const SizedBox(width: AppDimensions.spacing4),
                        Text(
                          'Collection Fee: ₹${order.collectionFee!.toStringAsFixed(0)}',
                          style: AppTextStyles.bodyMedium.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.success,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),

            // Action Buttons
            if (order.status == OrderStatus.pending &&
                onAccept != null &&
                onReject != null)
              Container(
                padding: const EdgeInsets.all(AppDimensions.spacing12),
                decoration: BoxDecoration(
                  color: AppColors.darkSurfaceVariant.withValues(alpha: 0.3),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(AppDimensions.radiusLarge),
                    bottomRight: Radius.circular(AppDimensions.radiusLarge),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: onReject,
                        style: OutlinedButton.styleFrom(
                          foregroundColor: AppColors.critical,
                          side: BorderSide(color: AppColors.critical),
                        ),
                        child: const Text('Reject'),
                      ),
                    ),
                    const SizedBox(width: AppDimensions.spacing12),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: onAccept,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.success,
                        ),
                        child: const Text('Accept Order'),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor() {
    switch (order.status) {
      case OrderStatus.pending:
        return AppColors.warning;
      case OrderStatus.accepted:
      case OrderStatus.onTheWay:
        return AppColors.inTransit;
      case OrderStatus.arrived:
      case OrderStatus.collectionInProgress:
        return AppColors.primary;
      case OrderStatus.collectionCompleted:
      case OrderStatus.delivered:
        return AppColors.success;
      case OrderStatus.cancelled:
        return AppColors.critical;
      case OrderStatus.inTransit:
        return AppColors.secondary;
    }
  }

  String _getStatusLabel() {
    switch (order.status) {
      case OrderStatus.pending:
        return 'NEW';
      case OrderStatus.accepted:
        return 'ACCEPTED';
      case OrderStatus.onTheWay:
        return 'ON THE WAY';
      case OrderStatus.arrived:
        return 'ARRIVED';
      case OrderStatus.collectionInProgress:
        return 'IN PROGRESS';
      case OrderStatus.collectionCompleted:
        return 'COMPLETED';
      case OrderStatus.inTransit:
        return 'IN TRANSIT';
      case OrderStatus.delivered:
        return 'DELIVERED';
      case OrderStatus.cancelled:
        return 'CANCELLED';
    }
  }
}
