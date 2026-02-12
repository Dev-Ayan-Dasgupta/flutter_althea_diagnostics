import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../../../sample_collection/domain/entities/sample_event.dart';
import '../entities/phlebotomist.dart';
import '../repositories/dashboard_repository.dart';

part 'auto_assign_phlebotomist.freezed.dart';

class AutoAssignPhlebotomist
    implements UseCase<Phlebotomist, AutoAssignPhlebotomistParams> {
  final DashboardRepository repository;

  AutoAssignPhlebotomist(this.repository);

  @override
  Future<Either<Failure, Phlebotomist>> call(
    AutoAssignPhlebotomistParams params,
  ) async {
    return await repository.autoAssignPhlebotomist(
      sampleId: params.sampleId,
      patientLocation: params.patientLocation,
      isPriority: params.isPriority,
    );
  }
}

@freezed
abstract class AutoAssignPhlebotomistParams
    with _$AutoAssignPhlebotomistParams {
  const factory AutoAssignPhlebotomistParams({
    required String sampleId,
    required GeoLocation patientLocation,
    @Default(false) bool isPriority,
  }) = _AutoAssignPhlebotomistParams;
}
