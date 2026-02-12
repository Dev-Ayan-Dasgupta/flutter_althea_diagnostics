import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../entities/auth_token.dart';
import '../repositories/auth_repository.dart';

part 'login.freezed.dart';

class Login implements UseCase<AuthToken, LoginParams> {
  final AuthRepository repository;

  Login(this.repository);

  @override
  Future<Either<Failure, AuthToken>> call(LoginParams params) async {
    return await repository.login(
      email: params.email,
      password: params.password,
    );
  }
}

@freezed
abstract class LoginParams with _$LoginParams {
  const factory LoginParams({
    required String email,
    required String password,
  }) = _LoginParams;
}
