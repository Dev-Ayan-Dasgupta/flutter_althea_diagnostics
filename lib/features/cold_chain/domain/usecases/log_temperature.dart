import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../../../sample_collection/domain/entities/sample_event.dart';
import '../entities/cold_chain_data.dart';
import '../repositories/cold_chain_repository.dart';

part 'log_temperature.freezed.dart';

class LogTemperature
    implements UseCase<TelemetryReading, LogTemperatureParams> {
  final ColdChainRepository repository;

  LogTemperature(this.repository);

  @override
  Future<Either<Failure, TelemetryReading>> call(
    LogTemperatureParams params,
  ) async {
    return await repository.logTemperature(
      sampleId: params.sampleId,
      temperature: params.temperature,
      humidity: params.humidity,
      location: params.location,
    );
  }
}

@freezed
abstract class LogTemperatureParams with _$LogTemperatureParams {
  const factory LogTemperatureParams({
    required String sampleId,
    required double temperature,
    double? humidity,
    required GeoLocation location,
  }) = _LogTemperatureParams;
}
