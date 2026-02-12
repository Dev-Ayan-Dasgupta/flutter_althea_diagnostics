import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/providers/providers.dart';
import '../../../sample_collection/domain/entities/sample_event.dart';
import '../../data/datasources/cold_chain_remote_datasource.dart';
import '../../data/repositories/cold_chain_repository_impl.dart';
import '../../domain/entities/cold_chain_data.dart';
import '../../domain/repositories/cold_chain_repository.dart';
import '../../domain/usecases/get_cold_chain_data.dart';
import '../../domain/usecases/log_temperature.dart';
import '../../domain/usecases/watch_telemetry.dart';

part 'cold_chain_providers.g.dart';

// Data Source

@riverpod
ColdChainRemoteDataSource coldChainRemoteDataSource(
  Ref ref,
) {
  final graphqlService = ref.watch(graphqlServiceProvider);
  return ColdChainRemoteDataSourceImpl(graphqlService: graphqlService);
}

// Repository

@riverpod
ColdChainRepository coldChainRepository(Ref ref) {
  final remoteDataSource = ref.watch(coldChainRemoteDataSourceProvider);
  return ColdChainRepositoryImpl(remoteDataSource: remoteDataSource);
}

// Use Cases

@riverpod
GetColdChainData getColdChainDataUseCase(Ref ref) {
  final repository = ref.watch(coldChainRepositoryProvider);
  return GetColdChainData(repository);
}

@riverpod
LogTemperature logTemperatureUseCase(Ref ref) {
  final repository = ref.watch(coldChainRepositoryProvider);
  return LogTemperature(repository);
}

@riverpod
WatchTelemetry watchTelemetryUseCase(Ref ref) {
  final repository = ref.watch(coldChainRepositoryProvider);
  return WatchTelemetry(repository);
}

// Cold Chain Data Provider

@riverpod
class ColdChainNotifier extends _$ColdChainNotifier {
  @override
  Future<ColdChainData> build(String sampleId) async {
    final result =
        await ref.read(getColdChainDataUseCaseProvider).call(sampleId);

    return result.fold(
      (failure) => throw failure,
      (data) => data,
    );
  }

  Future<void> logTemperature({
    required double temperature,
    double? humidity,
    required GeoLocation location,
  }) async {
    final result = await ref.read(logTemperatureUseCaseProvider).call(
          LogTemperatureParams(
            sampleId: sampleId,
            temperature: temperature,
            humidity: humidity,
            location: location,
          ),
        );

    result.fold(
      (failure) => state = AsyncError(failure, StackTrace.current),
      (_) => refresh(),
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => build(sampleId));
  }
}

// Watch Telemetry Stream Provider

@riverpod
Stream<TelemetryReading> watchTelemetry(
  Ref ref,
  String sampleId,
) async* {
  final streamUseCase = ref.watch(watchTelemetryUseCaseProvider);

  await for (final result in streamUseCase.call(sampleId)) {
    yield result.fold(
      (failure) => throw failure,
      (reading) => reading,
    );
  }
}

// Compliance Status Provider (UI Helper)

@riverpod
bool isCompliant(Ref ref, String sampleId) {
  final coldChainState = ref.watch(coldChainProvider(sampleId));

  return coldChainState.when(
    data: (data) => data.compliance.compliancePercentage >= 95.0,
    loading: () => true,
    error: (_, __) => false,
  );
}
