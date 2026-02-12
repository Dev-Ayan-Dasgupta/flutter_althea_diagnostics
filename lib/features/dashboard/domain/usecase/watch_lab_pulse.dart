import 'package:dartz/dartz.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../entities/lab_pulse.dart';
import '../repositories/dashboard_repository.dart';

class WatchLabPulse implements StreamUseCase<LabPulse, void> {
  final DashboardRepository repository;

  WatchLabPulse(this.repository);

  @override
  Stream<Either<Failure, LabPulse>> call(void params) {
    return repository.watchLabPulse();
  }
}
