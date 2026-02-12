import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../sample_collection/domain/entities/sample_event.dart';

part 'cold_chain_data.freezed.dart';
part 'cold_chain_data.g.dart';

@freezed
abstract class ColdChainData with _$ColdChainData {
  const factory ColdChainData({
    required String sampleId,
    required List<TelemetryReading> readings,
    required ColdChainCompliance compliance,
    required DateTime monitoringStartTime,
    DateTime? monitoringEndTime,
    String? smartBagId,
    bool? isManualLogging,
  }) = _ColdChainData;

  factory ColdChainData.fromJson(Map<String, dynamic> json) =>
      _$ColdChainDataFromJson(json);
}

@freezed
abstract class TelemetryReading with _$TelemetryReading {
  const factory TelemetryReading({
    required DateTime timestamp,
    required double temperature, // Celsius
    double? humidity,
    bool? shockDetected,
    bool? tiltDetected,
    bool? lidOpenDetected,
    int? batteryLevel,
    GeoLocation? location,
    String? deviceId,
  }) = _TelemetryReading;

  factory TelemetryReading.fromJson(Map<String, dynamic> json) =>
      _$TelemetryReadingFromJson(json);
}

@freezed
abstract class ColdChainCompliance with _$ColdChainCompliance {
  const factory ColdChainCompliance({
    required double compliancePercentage, // 0-100
    required int totalReadings,
    required int compliantReadings,
    required int breachCount,
    required List<TemperatureBreach> breaches,
    required double maxDeviation,
    required int totalExposureDuration, // seconds
    required CumulativeThermalStress cumulativeStress,
  }) = _ColdChainCompliance;

  factory ColdChainCompliance.fromJson(Map<String, dynamic> json) =>
      _$ColdChainComplianceFromJson(json);
}

@freezed
abstract class TemperatureBreach with _$TemperatureBreach {
  const factory TemperatureBreach({
    required DateTime startTime,
    required DateTime endTime,
    required double peakTemperature,
    required int durationSeconds,
    required BreachSeverity severity,
    String? notes,
  }) = _TemperatureBreach;

  factory TemperatureBreach.fromJson(Map<String, dynamic> json) =>
      _$TemperatureBreachFromJson(json);
}

enum BreachSeverity {
  minor, // < 2°C deviation for < 5 minutes
  moderate, // 2-4°C deviation or 5-15 minutes
  severe, // > 4°C deviation or > 15 minutes
}

@freezed
abstract class CumulativeThermalStress with _$CumulativeThermalStress {
  const factory CumulativeThermalStress({
    required double stressIndex, // 0-100
    required double predictedDegradation, // 0-100%
    String? recommendation,
  }) = _CumulativeThermalStress;

  factory CumulativeThermalStress.fromJson(Map<String, dynamic> json) =>
      _$CumulativeThermalStressFromJson(json);
}
