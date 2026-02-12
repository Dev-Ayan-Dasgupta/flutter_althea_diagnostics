import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/lab_result_repository.dart';

part 'push_to_abha.freezed.dart';

class PushToAbha implements UseCase<void, PushToAbhaParams> {
  final LabResultRepository repository;

  PushToAbha(this.repository);

  @override
  Future<Either<Failure, void>> call(PushToAbhaParams params) async {
    return await repository.pushToAbha(
      resultId: params.resultId,
      patientAbhaId: params.patientAbhaId,
    );
  }
}

@freezed
abstract class PushToAbhaParams with _$PushToAbhaParams {
  const factory PushToAbhaParams({
    required String resultId,
    required String patientAbhaId,
  }) = _PushToAbhaParams;
}
