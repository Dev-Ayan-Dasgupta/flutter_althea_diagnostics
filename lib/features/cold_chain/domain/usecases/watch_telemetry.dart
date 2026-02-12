import 'package:dartz/dartz.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../entities/cold_chain_data.dart';
import '../repositories/cold_chain_repository.dart';

class WatchTelemetry implements StreamUseCase<TelemetryReading, String> {
  final ColdChainRepository repository;

  WatchTelemetry(this.repository);

  @override
  Stream<Either<Failure, TelemetryReading>> call(String sampleId) {
    return repository.watchTelemetry(sampleId);
  }
}
