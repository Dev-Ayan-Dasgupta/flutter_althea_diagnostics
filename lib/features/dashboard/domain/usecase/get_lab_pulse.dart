import 'package:dartz/dartz.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../entities/lab_pulse.dart';
import '../repositories/dashboard_repository.dart';

class GetLabPulse implements UseCaseNoParams<LabPulse> {
  final DashboardRepository repository;

  GetLabPulse(this.repository);

  @override
  Future<Either<Failure, LabPulse>> call() async {
    return await repository.getLabPulse();
  }
}
