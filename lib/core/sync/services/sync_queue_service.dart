import 'dart:async';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';
import '../models/sync_item.dart';

class SyncQueueService {
  static final SyncQueueService _instance = SyncQueueService._internal();
  factory SyncQueueService() => _instance;
  SyncQueueService._internal();

  static const String _boxName = 'sync_queue';
  Box<SyncItem>? _box;
  final _uuid = const Uuid();

  final StreamController<int> _queueSizeController =
      StreamController<int>.broadcast();

  Stream<int> get queueSize => _queueSizeController.stream;

  Future<void> initialize() async {
    if (!Hive.isAdapterRegistered(1)) {
      // Register adapter if needed
    }
    _box = await Hive.openBox<SyncItem>(_boxName);
    _notifyQueueSize();
  }

  Future<void> addToQueue({
    required SyncEntityType entityType,
    required SyncOperation operation,
    required Map<String, dynamic> data,
  }) async {
    final item = SyncItem(
      id: _uuid.v4(),
      entityType: entityType,
      operation: operation,
      data: data,
      status: SyncStatus.pending.name,
      createdAt: DateTime.now().toIso8601String(),
    );

    await _box?.put(item.id, item);
    _notifyQueueSize();
  }

  Future<List<SyncItem>> getPendingItems() async {
    return _box?.values
            .where((item) => item.status == SyncStatus.pending.name)
            .toList() ??
        [];
  }

  Future<void> updateItemStatus({
    required String itemId,
    required SyncStatus status,
    String? error,
  }) async {
    final item = _box?.get(itemId);
    if (item == null) return;

    final updatedItem = SyncItem(
      id: item.id,
      entityType: item.entityType,
      operation: item.operation,
      data: item.data,
      status: status.name,
      createdAt: item.createdAt,
      lastAttemptAt: DateTime.now().toIso8601String(),
      retryCount: item.retryCount + 1,
      error: error,
    );

    await _box?.put(itemId, updatedItem);
    _notifyQueueSize();
  }

  Future<void> removeItem(String itemId) async {
    await _box?.delete(itemId);
    _notifyQueueSize();
  }

  Future<void> clearCompleted() async {
    final completedKeys = _box?.values
        .where((item) => item.status == SyncStatus.completed.name)
        .map((item) => item.id)
        .toList();

    if (completedKeys != null) {
      for (final key in completedKeys) {
        await _box?.delete(key);
      }
    }
    _notifyQueueSize();
  }

  Future<void> clearAll() async {
    await _box?.clear();
    _notifyQueueSize();
  }

  int getPendingCount() {
    return _box?.values
            .where((item) => item.status == SyncStatus.pending.name)
            .length ??
        0;
  }

  void _notifyQueueSize() {
    _queueSizeController.add(getPendingCount());
  }

  void dispose() {
    _queueSizeController.close();
  }
}
