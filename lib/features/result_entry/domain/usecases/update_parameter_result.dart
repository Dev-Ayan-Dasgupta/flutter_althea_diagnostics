import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../entities/lab_result.dart';
import '../repositories/lab_result_repository.dart';

part 'update_parameter_result.freezed.dart';

class UpdateParameterResult
    implements UseCase<LabResult, UpdateParameterResultParams> {
  final LabResultRepository repository;

  UpdateParameterResult(this.repository);

  @override
  Future<Either<Failure, LabResult>> call(
    UpdateParameterResultParams params,
  ) async {
    return await repository.updateParameterResult(
      resultId: params.resultId,
      testId: params.testId,
      parameterId: params.parameterId,
      value: params.value,
      notes: params.notes,
    );
  }
}

@freezed
abstract class UpdateParameterResultParams with _$UpdateParameterResultParams {
  const factory UpdateParameterResultParams({
    required String resultId,
    required String testId,
    required String parameterId,
    required ResultValue value,
    String? notes,
  }) = _UpdateParameterResultParams;
}
