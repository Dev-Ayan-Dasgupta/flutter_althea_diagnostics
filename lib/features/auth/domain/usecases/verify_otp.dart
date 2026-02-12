import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../entities/auth_token.dart';
import '../repositories/auth_repository.dart';

part 'verify_otp.freezed.dart';

class VerifyOtp implements UseCase<AuthToken, VerifyOtpParams> {
  final AuthRepository repository;

  VerifyOtp(this.repository);

  @override
  Future<Either<Failure, AuthToken>> call(VerifyOtpParams params) async {
    return await repository.verifyOtp(
      phoneNumber: params.phoneNumber,
      otp: params.otp,
    );
  }
}

@freezed
abstract class VerifyOtpParams with _$VerifyOtpParams {
  const factory VerifyOtpParams({
    required String phoneNumber,
    required String otp,
  }) = _VerifyOtpParams;
}
