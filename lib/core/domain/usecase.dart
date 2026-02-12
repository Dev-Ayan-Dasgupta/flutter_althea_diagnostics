import 'package:dartz/dartz.dart';
import '../errors/failures.dart';

/// Base class for all use cases
/// [UsecaseType] is the return type
/// [Params] is the parameters type
abstract class UseCase<UseCaseType, Params> {
  Future<Either<Failure, UseCaseType>> call(Params params);
}

/// Use case with no parameters
abstract class UseCaseNoParams<UseCaseType> {
  Future<Either<Failure, UseCaseType>> call();
}

/// Use case that returns a stream
abstract class StreamUseCase<UseCaseType, Params> {
  Stream<Either<Failure, UseCaseType>> call(Params params);
}
