import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/connectivity_service.dart';
import '../models/sync_item.dart';
import 'sync_queue_service.dart';
import '../../../features/sample_collection/data/datasources/sample_remote_datasource.dart';
import '../../../features/cold_chain/data/datasources/cold_chain_remote_datasource.dart';

class BackgroundSyncService {
  static final BackgroundSyncService _instance =
      BackgroundSyncService._internal();
  factory BackgroundSyncService() => _instance;
  BackgroundSyncService._internal();

  final SyncQueueService _queueService = SyncQueueService();
  final ConnectivityService _connectivityService = ConnectivityService();

  Timer? _syncTimer;
  bool _isSyncing = false;

  final StreamController<SyncProgress> _syncProgressController =
      StreamController<SyncProgress>.broadcast();

  Stream<SyncProgress> get syncProgress => _syncProgressController.stream;

  Future<void> initialize({
    required SampleRemoteDataSource sampleDataSource,
    required ColdChainRemoteDataSource coldChainDataSource,
  }) async {
    _sampleDataSource = sampleDataSource;
    _coldChainDataSource = coldChainDataSource;

    // Listen to connectivity changes
    _connectivityService.connectionStatus.listen((isOnline) {
      if (isOnline && !_isSyncing) {
        syncNow();
      }
    });

    // Start periodic sync (every 5 minutes)
    _syncTimer = Timer.periodic(const Duration(minutes: 5), (_) {
      if (_connectivityService.isOnline && !_isSyncing) {
        syncNow();
      }
    });
  }

  SampleRemoteDataSource? _sampleDataSource;
  ColdChainRemoteDataSource? _coldChainDataSource;

  Future<void> syncNow() async {
    if (_isSyncing || !_connectivityService.isOnline) return;

    _isSyncing = true;
    _syncProgressController.add(
      SyncProgress(status: SyncStatus.inProgress, total: 0, completed: 0),
    );

    try {
      final pendingItems = await _queueService.getPendingItems();
      final total = pendingItems.length;

      if (total == 0) {
        _syncProgressController.add(
          SyncProgress(status: SyncStatus.completed, total: 0, completed: 0),
        );
        return;
      }

      int completed = 0;

      for (final item in pendingItems) {
        try {
          await _syncItem(item);
          await _queueService.updateItemStatus(
            itemId: item.id,
            status: SyncStatus.completed,
          );
          completed++;
        } catch (e) {
          await _queueService.updateItemStatus(
            itemId: item.id,
            status: item.retryCount >= 3
                ? SyncStatus.failed
                : SyncStatus.pending,
            error: e.toString(),
          );
        }

        _syncProgressController.add(
          SyncProgress(
            status: SyncStatus.inProgress,
            total: total,
            completed: completed,
          ),
        );
      }

      // Clear completed items
      await _queueService.clearCompleted();

      _syncProgressController.add(
        SyncProgress(
          status: SyncStatus.completed,
          total: total,
          completed: completed,
        ),
      );
    } catch (e) {
      _syncProgressController.add(
        SyncProgress(
          status: SyncStatus.failed,
          total: 0,
          completed: 0,
          error: e.toString(),
        ),
      );
    } finally {
      _isSyncing = false;
    }
  }

  Future<void> _syncItem(SyncItem item) async {
    switch (item.entityType) {
      case SyncEntityType.sample:
        await _syncSampleItem(item);
        break;
      case SyncEntityType.temperature:
        await _syncTemperatureItem(item);
        break;
      case SyncEntityType.chainOfCustody:
        await _syncChainOfCustodyItem(item);
        break;
      case SyncEntityType.integrityScore:
        // TODO: Implement integrity score sync
        break;
    }
  }

  Future<void> _syncSampleItem(SyncItem item) async {
    if (_sampleDataSource == null) return;

    switch (item.operation) {
      case SyncOperation.create:
        // TODO: Implement sample creation sync
        break;
      case SyncOperation.update:
        await _sampleDataSource!.updateSampleStatus(
          sampleId: item.data['sampleId'] as String,
          status: item.data['status'] as Map<String, dynamic>,
          notes: item.data['notes'] as String?,
        );
        break;
      case SyncOperation.delete:
        // TODO: Implement sample deletion if supported
        break;
    }
  }

  Future<void> _syncTemperatureItem(SyncItem item) async {
    if (_coldChainDataSource == null) return;

    await _coldChainDataSource!.logTemperature(
      sampleId: item.data['sampleId'] as String,
      temperature: item.data['temperature'] as double,
      humidity: item.data['humidity'] as double?,
      location: item.data['location'] as Map<String, dynamic>,
    );
  }

  Future<void> _syncChainOfCustodyItem(SyncItem item) async {
    if (_sampleDataSource == null) return;

    await _sampleDataSource!.addChainOfCustodyEvent(
      sampleId: item.data['sampleId'] as String,
      eventType: item.data['eventType'] as String,
      location: item.data['location'] as Map<String, dynamic>,
      metadata: item.data['metadata'] as Map<String, dynamic>?,
      notes: item.data['notes'] as String?,
    );
  }

  void dispose() {
    _syncTimer?.cancel();
    _syncProgressController.close();
  }
}

class SyncProgress {
  final SyncStatus status;
  final int total;
  final int completed;
  final String? error;

  SyncProgress({
    required this.status,
    required this.total,
    required this.completed,
    this.error,
  });

  double get progress => total > 0 ? completed / total : 0.0;
}

// Provider
final backgroundSyncServiceProvider = Provider<BackgroundSyncService>((ref) {
  return BackgroundSyncService();
});

final syncProgressProvider = StreamProvider<SyncProgress>((ref) {
  final service = ref.watch(backgroundSyncServiceProvider);
  return service.syncProgress;
});

final syncQueueSizeProvider = StreamProvider<int>((ref) {
  return SyncQueueService().queueSize;
});
