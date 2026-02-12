import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../entities/lab_result.dart';
import '../repositories/lab_result_repository.dart';

part 'sign_off_result.freezed.dart';

class SignOffResult implements UseCase<LabResult, SignOffResultParams> {
  final LabResultRepository repository;

  SignOffResult(this.repository);

  @override
  Future<Either<Failure, LabResult>> call(SignOffResultParams params) async {
    return await repository.signOffResult(
      resultId: params.resultId,
      pathologistId: params.pathologistId,
      digitalSignature: params.digitalSignature,
    );
  }
}

@freezed
abstract class SignOffResultParams with _$SignOffResultParams {
  const factory SignOffResultParams({
    required String resultId,
    required String pathologistId,
    required String digitalSignature,
  }) = _SignOffResultParams;
}
