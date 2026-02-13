import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_shadows.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import '../../../features/wallet/domain/entities/wallet.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;

  const TransactionItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final isCredit =
        transaction.type == TransactionType.earning ||
        transaction.type == TransactionType.bonus ||
        transaction.type == TransactionType.refund;

    return Container(
      margin: const EdgeInsets.only(bottom: AppDimensions.spacing12),
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      decoration: BoxDecoration(
        gradient: isDark ? AppGradients.surfaceDark : AppGradients.surfaceLight,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        boxShadow: AppShadows.soft,
      ),
      child: Row(
        children: [
          // Icon
          Container(
            padding: const EdgeInsets.all(AppDimensions.spacing12),
            decoration: BoxDecoration(
              color: _getIconColor().withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
            ),
            child: Icon(
              _getIcon(),
              color: _getIconColor(),
              size: AppDimensions.iconMedium,
            ),
          ),
          const SizedBox(width: AppDimensions.spacing16),
          // Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.description,
                  style: AppTextStyles.bodyLarge.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: AppDimensions.spacing4),
                Row(
                  children: [
                    Text(
                      timeago.format(transaction.timestamp),
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                    if (transaction.status != TransactionStatus.completed) ...[
                      const SizedBox(width: AppDimensions.spacing8),
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
                          transaction.status.name.toUpperCase(),
                          style: AppTextStyles.bodySmall.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: _getStatusColor(),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
          // Amount
          Text(
            '${isCredit ? '+' : '-'}₹${transaction.amount.toStringAsFixed(0)}',
            style: AppTextStyles.h4.copyWith(
              fontWeight: FontWeight.w800,
              color: isCredit ? AppColors.success : AppColors.critical,
            ),
          ),
        ],
      ),
    );
  }

  IconData _getIcon() {
    switch (transaction.type) {
      case TransactionType.earning:
        return Icons.science;
      case TransactionType.withdrawal:
        return Icons.download;
      case TransactionType.bonus:
        return Icons.card_giftcard;
      case TransactionType.penalty:
        return Icons.remove_circle;
      case TransactionType.refund:
        return Icons.refresh;
    }
  }

  Color _getIconColor() {
    switch (transaction.type) {
      case TransactionType.earning:
        return AppColors.success;
      case TransactionType.withdrawal:
        return AppColors.primary;
      case TransactionType.bonus:
        return AppColors.warning;
      case TransactionType.penalty:
        return AppColors.critical;
      case TransactionType.refund:
        return AppColors.inTransit;
    }
  }

  Color _getStatusColor() {
    switch (transaction.status) {
      case TransactionStatus.pending:
        return AppColors.warning;
      case TransactionStatus.completed:
        return AppColors.success;
      case TransactionStatus.failed:
        return AppColors.critical;
      case TransactionStatus.cancelled:
        return AppColors.textSecondary;
    }
  }
}
