import 'package:dartz/dartz.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/auth_repository.dart';

class SendOtp implements UseCase<String, String> {
  final AuthRepository repository;

  SendOtp(this.repository);

  @override
  Future<Either<Failure, String>> call(String phoneNumber) async {
    return await repository.sendOtp(phoneNumber);
  }
}
