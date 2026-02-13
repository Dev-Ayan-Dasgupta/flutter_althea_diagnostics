import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'sync_item.freezed.dart';
part 'sync_item.g.dart';

enum SyncOperation { create, update, delete }

enum SyncStatus { pending, inProgress, completed, failed }

enum SyncEntityType { sample, temperature, chainOfCustody, integrityScore }

@freezed
@HiveType(typeId: 1)
abstract class SyncItem with _$SyncItem {
  const factory SyncItem({
    @HiveField(0) required String id,
    @HiveField(1) required SyncEntityType entityType,
    @HiveField(2) required SyncOperation operation,
    @HiveField(3) required Map<String, dynamic> data,
    @HiveField(4) required String status,
    @HiveField(5) required String createdAt,
    @HiveField(6) String? lastAttemptAt,
    @HiveField(7) @Default(0) int retryCount,
    @HiveField(8) String? error,
  }) = _SyncItem;

  factory SyncItem.fromJson(Map<String, dynamic> json) =>
      _$SyncItemFromJson(json);
}
