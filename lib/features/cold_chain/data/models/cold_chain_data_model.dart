import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../sample_collection/data/models/sample_model.dart';
import '../../domain/entities/cold_chain_data.dart';

part 'cold_chain_data_model.freezed.dart';
part 'cold_chain_data_model.g.dart';

@freezed
abstract class ColdChainDataModel with _$ColdChainDataModel {
  const factory ColdChainDataModel({
    required String sampleId,
    required List<TelemetryReadingModel> readings,
    required ColdChainComplianceModel compliance,
    required String monitoringStartTime,
    String? monitoringEndTime,
    String? smartBagId,
    bool? isManualLogging,
  }) = _ColdChainDataModel;

  factory ColdChainDataModel.fromJson(Map<String, dynamic> json) =>
      _$ColdChainDataModelFromJson(json);

  static ColdChainDataModel fromEntity(ColdChainData entity) {
    return ColdChainDataModel(
      sampleId: entity.sampleId,
      readings: entity.readings
          .map((e) => TelemetryReadingModel.fromEntity(e))
          .toList(),
      compliance: ColdChainComplianceModel.fromEntity(entity.compliance),
      monitoringStartTime: entity.monitoringStartTime.toIso8601String(),
      monitoringEndTime: entity.monitoringEndTime?.toIso8601String(),
      smartBagId: entity.smartBagId,
      isManualLogging: entity.isManualLogging,
    );
  }
}

extension ColdChainDataModelX on ColdChainDataModel {
  ColdChainData toEntity() {
    return ColdChainData(
      sampleId: sampleId,
      readings: readings.map((e) => e.toEntity()).toList(),
      compliance: compliance.toEntity(),
      monitoringStartTime: DateTime.parse(monitoringStartTime),
      monitoringEndTime:
          monitoringEndTime != null ? DateTime.parse(monitoringEndTime!) : null,
      smartBagId: smartBagId,
      isManualLogging: isManualLogging,
    );
  }
}

@freezed
abstract class TelemetryReadingModel with _$TelemetryReadingModel {
  const factory TelemetryReadingModel({
    required String timestamp,
    required double temperature,
    double? humidity,
    bool? shockDetected,
    bool? tiltDetected,
    bool? lidOpenDetected,
    int? batteryLevel,
    GeoLocationModel? location,
    String? deviceId,
  }) = _TelemetryReadingModel;

  factory TelemetryReadingModel.fromJson(Map<String, dynamic> json) =>
      _$TelemetryReadingModelFromJson(json);

  static TelemetryReadingModel fromEntity(TelemetryReading entity) {
    return TelemetryReadingModel(
      timestamp: entity.timestamp.toIso8601String(),
      temperature: entity.temperature,
      humidity: entity.humidity,
      shockDetected: entity.shockDetected,
      tiltDetected: entity.tiltDetected,
      lidOpenDetected: entity.lidOpenDetected,
      batteryLevel: entity.batteryLevel,
      location: entity.location != null
          ? GeoLocationModel.fromEntity(entity.location!)
          : null,
      deviceId: entity.deviceId,
    );
  }
}

extension TelemetryReadingModelX on TelemetryReadingModel {
  TelemetryReading toEntity() {
    return TelemetryReading(
      timestamp: DateTime.parse(timestamp),
      temperature: temperature,
      humidity: humidity,
      shockDetected: shockDetected,
      tiltDetected: tiltDetected,
      lidOpenDetected: lidOpenDetected,
      batteryLevel: batteryLevel,
      location: location?.toEntity(),
      deviceId: deviceId,
    );
  }
}

@freezed
abstract class ColdChainComplianceModel with _$ColdChainComplianceModel {
  const factory ColdChainComplianceModel({
    required double compliancePercentage,
    required int totalReadings,
    required int compliantReadings,
    required int breachCount,
    required List<TemperatureBreachModel> breaches,
    required double maxDeviation,
    required int totalExposureDuration,
    required CumulativeThermalStressModel cumulativeStress,
  }) = _ColdChainComplianceModel;

  factory ColdChainComplianceModel.fromJson(Map<String, dynamic> json) =>
      _$ColdChainComplianceModelFromJson(json);

  static ColdChainComplianceModel fromEntity(ColdChainCompliance entity) {
    return ColdChainComplianceModel(
      compliancePercentage: entity.compliancePercentage,
      totalReadings: entity.totalReadings,
      compliantReadings: entity.compliantReadings,
      breachCount: entity.breachCount,
      breaches: entity.breaches
          .map((e) => TemperatureBreachModel.fromEntity(e))
          .toList(),
      maxDeviation: entity.maxDeviation,
      totalExposureDuration: entity.totalExposureDuration,
      cumulativeStress: CumulativeThermalStressModel.fromEntity(
        entity.cumulativeStress,
      ),
    );
  }
}

extension ColdChainComplianceModelX on ColdChainComplianceModel {
  ColdChainCompliance toEntity() {
    return ColdChainCompliance(
      compliancePercentage: compliancePercentage,
      totalReadings: totalReadings,
      compliantReadings: compliantReadings,
      breachCount: breachCount,
      breaches: breaches.map((e) => e.toEntity()).toList(),
      maxDeviation: maxDeviation,
      totalExposureDuration: totalExposureDuration,
      cumulativeStress: cumulativeStress.toEntity(),
    );
  }
}

@freezed
abstract class TemperatureBreachModel with _$TemperatureBreachModel {
  const factory TemperatureBreachModel({
    required String startTime,
    required String endTime,
    required double peakTemperature,
    required int durationSeconds,
    required String severity,
    String? notes,
  }) = _TemperatureBreachModel;

  factory TemperatureBreachModel.fromJson(Map<String, dynamic> json) =>
      _$TemperatureBreachModelFromJson(json);

  static TemperatureBreachModel fromEntity(TemperatureBreach entity) {
    return TemperatureBreachModel(
      startTime: entity.startTime.toIso8601String(),
      endTime: entity.endTime.toIso8601String(),
      peakTemperature: entity.peakTemperature,
      durationSeconds: entity.durationSeconds,
      severity: entity.severity.name,
      notes: entity.notes,
    );
  }
}

extension TemperatureBreachModelX on TemperatureBreachModel {
  TemperatureBreach toEntity() {
    return TemperatureBreach(
      startTime: DateTime.parse(startTime),
      endTime: DateTime.parse(endTime),
      peakTemperature: peakTemperature,
      durationSeconds: durationSeconds,
      severity: BreachSeverity.values.firstWhere((e) => e.name == severity),
      notes: notes,
    );
  }
}

@freezed
abstract class CumulativeThermalStressModel
    with _$CumulativeThermalStressModel {
  const factory CumulativeThermalStressModel({
    required double stressIndex,
    required double predictedDegradation,
    String? recommendation,
  }) = _CumulativeThermalStressModel;

  factory CumulativeThermalStressModel.fromJson(Map<String, dynamic> json) =>
      _$CumulativeThermalStressModelFromJson(json);

  static CumulativeThermalStressModel fromEntity(
      CumulativeThermalStress entity) {
    return CumulativeThermalStressModel(
      stressIndex: entity.stressIndex,
      predictedDegradation: entity.predictedDegradation,
      recommendation: entity.recommendation,
    );
  }
}

extension CumulativeThermalStressModelX on CumulativeThermalStressModel {
  CumulativeThermalStress toEntity() {
    return CumulativeThermalStress(
      stressIndex: stressIndex,
      predictedDegradation: predictedDegradation,
      recommendation: recommendation,
    );
  }
}
