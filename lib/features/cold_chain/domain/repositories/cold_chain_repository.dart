import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../../sample_collection/domain/entities/sample_event.dart';
import '../entities/cold_chain_data.dart';

abstract class ColdChainRepository {
  /// Log manual temperature reading
  Future<Either<Failure, TelemetryReading>> logTemperature({
    required String sampleId,
    required double temperature,
    double? humidity,
    required GeoLocation location,
  });

  /// Ingest telemetry data from smart bag (IoT)
  Future<Either<Failure, void>> ingestTelemetryData({
    required String sampleId,
    required List<TelemetryReading> readings,
    required String deviceId,
  });

  /// Get cold chain data for a sample
  Future<Either<Failure, ColdChainData>> getColdChainData(String sampleId);

  /// Get cold chain compliance report
  Future<Either<Failure, ColdChainCompliance>> getComplianceReport(
    String sampleId,
  );

  /// Get temperature history
  Future<Either<Failure, List<TelemetryReading>>> getTemperatureHistory({
    required String sampleId,
    DateTime? startTime,
    DateTime? endTime,
  });

  /// Get temperature breaches
  Future<Either<Failure, List<TemperatureBreach>>> getTemperatureBreaches(
    String sampleId,
  );

  /// Start cold chain monitoring
  Future<Either<Failure, ColdChainData>> startMonitoring({
    required String sampleId,
    String? smartBagId,
    bool isManualLogging = false,
  });

  /// Stop cold chain monitoring
  Future<Either<Failure, ColdChainData>> stopMonitoring(String sampleId);

  /// Check cold chain compliance in real-time
  Future<Either<Failure, bool>> checkCompliance(String sampleId);

  /// Stream real-time telemetry
  Stream<Either<Failure, TelemetryReading>> watchTelemetry(String sampleId);

  /// Stream cold chain compliance
  Stream<Either<Failure, ColdChainCompliance>> watchCompliance(String sampleId);
}
