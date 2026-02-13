import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../../../core/config/design/export.dart';
import '../../../../core/config/theme/export.dart';
import '../../domain/entities/search_history.dart';

class RecentSearches extends StatelessWidget {
  final List<SearchHistoryItem> searches;
  final ValueChanged<SearchHistoryItem> onSearchTap;
  final ValueChanged<SearchHistoryItem> onDeleteTap;
  final VoidCallback? onClearAll;

  const RecentSearches({
    super.key,
    required this.searches,
    required this.onSearchTap,
    required this.onDeleteTap,
    this.onClearAll,
  });

  @override
  Widget build(BuildContext context) {
    if (searches.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent Searches',
              style: AppTextStyles.bodyMedium.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.textSecondary,
              ),
            ),
            if (onClearAll != null)
              TextButton(
                onPressed: onClearAll,
                child: Text(
                  'Clear All',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.critical,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: AppDimensions.spacing12),
        ...searches.map((item) => _buildSearchItem(item)),
      ],
    );
  }

  Widget _buildSearchItem(SearchHistoryItem item) {
    return GestureDetector(
      onTap: () => onSearchTap(item),
      child: Container(
        margin: const EdgeInsets.only(bottom: AppDimensions.spacing8),
        padding: const EdgeInsets.all(AppDimensions.spacing12),
        decoration: BoxDecoration(
          gradient: AppGradients.surfaceDark,
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        ),
        child: Row(
          children: [
            Icon(_getIcon(item.type), size: 20, color: AppColors.textSecondary),
            const SizedBox(width: AppDimensions.spacing12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.query,
                    style: AppTextStyles.bodyMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    timeago.format(item.timestamp),
                    style: AppTextStyles.bodySmall.copyWith(
                      fontSize: 11,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.close, size: 20, color: AppColors.textSecondary),
              onPressed: () => onDeleteTap(item),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getIcon(SearchType type) {
    switch (type) {
      case SearchType.text:
        return Icons.search;
      case SearchType.barcode:
        return Icons.qr_code;
      case SearchType.filter:
        return Icons.filter_list;
    }
  }
}
