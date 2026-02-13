import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_history.freezed.dart';

@freezed
abstract class SearchHistoryItem with _$SearchHistoryItem {
  const factory SearchHistoryItem({
    required String id,
    required String query,
    required DateTime timestamp,
    required SearchType type,
  }) = _SearchHistoryItem;
}

enum SearchType { text, barcode, filter }
