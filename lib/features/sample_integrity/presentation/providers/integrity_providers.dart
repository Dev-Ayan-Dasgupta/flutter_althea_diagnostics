import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/providers/providers.dart';
import '../../data/datasources/sample_integrity_remote_datasource.dart';
import '../../data/repositories/sample_integrity_repository_impl.dart';
import '../../domain/entities/sample_integrity_score.dart';
import '../../domain/repositories/sample_integrity_repository.dart';
import '../../domain/usecases/calculate_integrity_score.dart';
import '../../domain/usecases/get_integrity_score.dart';
import '../../domain/usecases/assess_pre_analytical_risk.dart';

part 'integrity_providers.g.dart';

// Data Source

@riverpod
SampleIntegrityRemoteDataSource sampleIntegrityRemoteDataSource(
  Ref ref,
) {
  final graphqlService = ref.watch(graphqlServiceProvider);
  return SampleIntegrityRemoteDataSourceImpl(graphqlService: graphqlService);
}

// Repository

@riverpod
SampleIntegrityRepository sampleIntegrityRepository(
  Ref ref,
) {
  final remoteDataSource = ref.watch(sampleIntegrityRemoteDataSourceProvider);
  return SampleIntegrityRepositoryImpl(remoteDataSource: remoteDataSource);
}

// Use Cases

@riverpod
CalculateIntegrityScore calculateIntegrityScoreUseCase(
  Ref ref,
) {
  final repository = ref.watch(sampleIntegrityRepositoryProvider);
  return CalculateIntegrityScore(repository);
}

@riverpod
GetIntegrityScore getIntegrityScoreUseCase(Ref ref) {
  final repository = ref.watch(sampleIntegrityRepositoryProvider);
  return GetIntegrityScore(repository);
}

@riverpod
AssessPreAnalyticalRisk assessPreAnalyticalRiskUseCase(
  Ref ref,
) {
  final repository = ref.watch(sampleIntegrityRepositoryProvider);
  return AssessPreAnalyticalRisk(repository);
}

// Integrity Score Provider

@riverpod
class IntegrityScoreNotifier extends _$IntegrityScoreNotifier {
  @override
  Future<SampleIntegrityScore> build(String sampleId) async {
    final result =
        await ref.read(getIntegrityScoreUseCaseProvider).call(sampleId);

    return result.fold(
      (failure) => throw failure,
      (score) => score,
    );
  }

  Future<void> calculate() async {
    state = const AsyncLoading();

    final result = await ref.read(calculateIntegrityScoreUseCaseProvider).call(
          sampleId,
        );

    state = result.fold(
      (failure) => AsyncError(failure, StackTrace.current),
      (score) => AsyncData(score),
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => build(sampleId));
  }
}

// Integrity Level Color Provider (UI Helper)

@riverpod
int integrityLevelColor(Ref ref, IntegrityLevel level) {
  switch (level) {
    case IntegrityLevel.high:
      return 0xFF00E676; // Green
    case IntegrityLevel.medium:
      return 0xFFFFD600; // Yellow
    case IntegrityLevel.low:
      return 0xFFFF1744; // Red
  }
}
