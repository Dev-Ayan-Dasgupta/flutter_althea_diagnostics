import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/providers/providers.dart';
import '../../data/datasources/sample_local_datasource.dart';
import '../../data/datasources/sample_remote_datasource.dart';
import '../../data/repositories/sample_repository_impl.dart';
import '../../domain/entities/sample.dart';
import '../../domain/entities/sample_event.dart';
import '../../domain/repositories/sample_repository.dart';
import '../../domain/usecases/get_samples.dart';
import '../../domain/usecases/get_sample_by_id.dart';
import '../../domain/usecases/scan_barcode.dart';
import '../../domain/usecases/verify_biometric_handshake.dart';
import '../../domain/usecases/mark_sample_as_collected.dart';
import '../../domain/usecases/watch_sample.dart';

part 'sample_providers.g.dart';

// Data Sources

@riverpod
SampleRemoteDataSource sampleRemoteDataSource(Ref ref) {
  final graphqlService = ref.watch(graphqlServiceProvider);
  return SampleRemoteDataSourceImpl(graphqlService: graphqlService);
}

@riverpod
SampleLocalDataSource sampleLocalDataSource(Ref ref) {
  return SampleLocalDataSourceImpl();
}

// Repository

@riverpod
SampleRepository sampleRepository(Ref ref) {
  final remoteDataSource = ref.watch(sampleRemoteDataSourceProvider);
  final localDataSource = ref.watch(sampleLocalDataSourceProvider);
  return SampleRepositoryImpl(
    remoteDataSource: remoteDataSource,
    localDataSource: localDataSource,
  );
}

// Use Cases

@riverpod
GetSamples getSamplesUseCase(Ref ref) {
  final repository = ref.watch(sampleRepositoryProvider);
  return GetSamples(repository);
}

@riverpod
GetSampleById getSampleByIdUseCase(Ref ref) {
  final repository = ref.watch(sampleRepositoryProvider);
  return GetSampleById(repository);
}

@riverpod
ScanBarcode scanBarcodeUseCase(Ref ref) {
  final repository = ref.watch(sampleRepositoryProvider);
  return ScanBarcode(repository);
}

@riverpod
VerifyBiometricHandshake verifyBiometricHandshakeUseCase(
  Ref ref,
) {
  final repository = ref.watch(sampleRepositoryProvider);
  return VerifyBiometricHandshake(repository);
}

@riverpod
MarkSampleAsCollected markSampleAsCollectedUseCase(
  Ref ref,
) {
  final repository = ref.watch(sampleRepositoryProvider);
  return MarkSampleAsCollected(repository);
}

@riverpod
WatchSample watchSampleUseCase(Ref ref) {
  final repository = ref.watch(sampleRepositoryProvider);
  return WatchSample(repository);
}

// Samples List Provider

@riverpod
class SamplesNotifier extends _$SamplesNotifier {
  @override
  Future<List<Sample>> build({
    SampleStatus? status,
    DateTime? startDate,
    DateTime? endDate,
    int page = 1,
    int limit = 20,
  }) async {
    final result = await ref.read(getSamplesUseCaseProvider).call(
          GetSamplesParams(
            status: status,
            startDate: startDate,
            endDate: endDate,
            page: page,
            limit: limit,
          ),
        );

    return result.fold(
      (failure) => throw failure,
      (samples) => samples,
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => build(
          status: null,
          page: 1,
          limit: 20,
        ));
  }

  Future<void> loadMore() async {
    final currentSamples = state.value ?? [];
    final currentPage = (currentSamples.length / 20).ceil();

    final result = await ref.read(getSamplesUseCaseProvider).call(
          GetSamplesParams(
            page: currentPage + 1,
            limit: 20,
          ),
        );

    result.fold(
      (failure) => state = AsyncError(failure, StackTrace.current),
      (newSamples) {
        state = AsyncData([...currentSamples, ...newSamples]);
      },
    );
  }

  Future<void> filterByStatus(SampleStatus? status) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => build(
          status: status,
          page: 1,
          limit: 20,
        ));
  }
}

// Single Sample Provider

@riverpod
class SampleNotifier extends _$SampleNotifier {
  @override
  Future<Sample> build(String sampleId) async {
    final result = await ref.read(getSampleByIdUseCaseProvider).call(sampleId);

    return result.fold(
      (failure) => throw failure,
      (sample) => sample,
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => build(sampleId));
  }

  Future<void> scanBarcode({
    required String vialId,
    required String phlebotomistId,
    required GeoLocation location,
  }) async {
    state = const AsyncLoading();

    final result = await ref.read(scanBarcodeUseCaseProvider).call(
          ScanBarcodeParams(
            vialId: vialId,
            phlebotomistId: phlebotomistId,
            location: location,
          ),
        );

    state = result.fold(
      (failure) => AsyncError(failure, StackTrace.current),
      (sample) => AsyncData(sample),
    );
  }

  Future<void> verifyBiometric({
    required String patientDeviceId,
    required String phlebotomistDeviceId,
    required double proximityDistance,
    required int signalStrength,
    required GeoLocation location,
  }) async {
    final result = await ref.read(verifyBiometricHandshakeUseCaseProvider).call(
          BiometricHandshakeParams(
            sampleId: sampleId,
            patientDeviceId: patientDeviceId,
            phlebotomistDeviceId: phlebotomistDeviceId,
            proximityDistance: proximityDistance,
            signalStrength: signalStrength,
            location: location,
          ),
        );

    result.fold(
      (failure) => state = AsyncError(failure, StackTrace.current),
      (_) => refresh(),
    );
  }

  Future<void> markAsCollected({
    required DateTime collectionTime,
    required GeoLocation location,
    List<String>? imageUrls,
    String? notes,
  }) async {
    state = const AsyncLoading();

    final result = await ref.read(markSampleAsCollectedUseCaseProvider).call(
          MarkSampleAsCollectedParams(
            sampleId: sampleId,
            collectionTime: collectionTime,
            location: location,
            imageUrls: imageUrls,
            notes: notes,
          ),
        );

    state = result.fold(
      (failure) => AsyncError(failure, StackTrace.current),
      (sample) => AsyncData(sample),
    );
  }
}

// Watch Sample Stream Provider

@riverpod
Stream<Sample> watchSample(Ref ref, String sampleId) async* {
  final streamUseCase = ref.watch(watchSampleUseCaseProvider);

  await for (final result in streamUseCase.call(sampleId)) {
    yield result.fold(
      (failure) => throw failure,
      (sample) => sample,
    );
  }
}

// Filtered Samples Providers (Convenience)

@riverpod
Future<List<Sample>> samplesInTransit(Ref ref) async {
  final result = await ref.read(getSamplesUseCaseProvider).call(
        const GetSamplesParams(
          status: null, // Will need to filter for inTransit
          page: 1,
          limit: 50,
        ),
      );

  return result.fold(
    (failure) => throw failure,
    (samples) =>
        samples.where((s) => s.status is SampleStatusInTransit).toList(),
  );
}

@riverpod
Future<List<Sample>> samplesProcessing(Ref ref) async {
  final result = await ref.read(getSamplesUseCaseProvider).call(
        const GetSamplesParams(
          page: 1,
          limit: 50,
        ),
      );

  return result.fold(
    (failure) => throw failure,
    (samples) =>
        samples.where((s) => s.status is SampleStatusProcessing).toList(),
  );
}
