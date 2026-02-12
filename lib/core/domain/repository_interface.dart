import 'package:dartz/dartz.dart';
import '../errors/failures.dart';

/// Base repository interface for all repositories
/// Uses Either from dartz for functional error handling
abstract class RepositoryInterface {}

/// Type alias for result with failure handling
typedef ResultType<T> = Either<Failure, T>;
