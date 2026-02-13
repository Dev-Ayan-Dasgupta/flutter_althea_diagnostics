import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/providers/providers.dart';
import '../../data/datasources/dashboard_remote_datasource.dart';
import '../../data/repositories/dashboard_repository_impl.dart';
import '../../domain/entities/lab_pulse.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../../domain/usecase/get_lab_pulse.dart';
import '../../domain/usecase/watch_lab_pulse.dart';

part 'dashboard_providers.g.dart';

// Data Source
@riverpod
DashboardRemoteDataSource dashboardRemoteDataSource(Ref ref) {
  final graphqlService = ref.watch(graphqlServiceProvider);
  return DashboardRemoteDataSourceImpl(graphqlService: graphqlService);
}

// Repository
@riverpod
DashboardRepository dashboardRepository(Ref ref) {
  final remoteDataSource = ref.watch(dashboardRemoteDataSourceProvider);
  return DashboardRepositoryImpl(remoteDataSource: remoteDataSource);
}

// Use Cases
@riverpod
GetLabPulse getLabPulseUseCase(Ref ref) {
  final repository = ref.watch(dashboardRepositoryProvider);
  return GetLabPulse(repository);
}

@riverpod
WatchLabPulse watchLabPulseUseCase(Ref ref) {
  final repository = ref.watch(dashboardRepositoryProvider);
  return WatchLabPulse(repository);
}

// Lab Pulse Provider
@riverpod
class LabPulseNotifier extends _$LabPulseNotifier {
  @override
  Future<LabPulse> build() async {
    final result = await ref.read(getLabPulseUseCaseProvider).call();
    return result.fold((failure) => throw failure, (pulse) => pulse);
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => build());
  }
}

// Stream Lab Pulse
@riverpod
Stream<LabPulse> watchLabPulse(Ref ref) async* {
  final streamUseCase = ref.watch(watchLabPulseUseCaseProvider);

  await for (final result in streamUseCase.call(null)) {
    yield result.fold((failure) => throw failure, (pulse) => pulse);
  }
}
