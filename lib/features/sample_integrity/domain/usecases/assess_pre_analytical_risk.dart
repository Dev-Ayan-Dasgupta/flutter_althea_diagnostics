import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../entities/pre_analytical_risk.dart';
import '../repositories/sample_integrity_repository.dart';

part 'assess_pre_analytical_risk.freezed.dart';

class AssessPreAnalyticalRisk
    implements
        UseCase<PreAnalyticalRiskAssessment, AssessPreAnalyticalRiskParams> {
  final SampleIntegrityRepository repository;

  AssessPreAnalyticalRisk(this.repository);

  @override
  Future<Either<Failure, PreAnalyticalRiskAssessment>> call(
    AssessPreAnalyticalRiskParams params,
  ) async {
    return await repository.assessPreAnalyticalRisk(
      sampleId: params.sampleId,
      collectionData: params.collectionData,
    );
  }
}

@freezed
abstract class AssessPreAnalyticalRiskParams
    with _$AssessPreAnalyticalRiskParams {
  const factory AssessPreAnalyticalRiskParams({
    required String sampleId,
    required Map<String, dynamic> collectionData,
  }) = _AssessPreAnalyticalRiskParams;
}
