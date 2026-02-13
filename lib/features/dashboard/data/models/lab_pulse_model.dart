import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/lab_pulse.dart';

part 'lab_pulse_model.freezed.dart';
part 'lab_pulse_model.g.dart';

@freezed
abstract class LabPulseModel with _$LabPulseModel {
  const factory LabPulseModel({
    required int samplesInTransit,
    required int samplesProcessing,
    required int samplesCompleted,
    required int samplesRejected,
    required List<TatAlertModel> tatAlerts,
    required LabCapacityModel capacity,
    required List<SampleTrendDataModel> trends,
    required String timestamp,
  }) = _LabPulseModel;

  factory LabPulseModel.fromJson(Map<String, dynamic> json) =>
      _$LabPulseModelFromJson(json);

  static LabPulseModel fromEntity(LabPulse entity) {
    return LabPulseModel(
      samplesInTransit: entity.samplesInTransit,
      samplesProcessing: entity.samplesProcessing,
      samplesCompleted: entity.samplesCompleted,
      samplesRejected: entity.samplesRejected,
      tatAlerts: entity.tatAlerts
          .map((e) => TatAlertModel.fromEntity(e))
          .toList(),
      capacity: LabCapacityModel.fromEntity(entity.capacity),
      trends: entity.trends
          .map((e) => SampleTrendDataModel.fromEntity(e))
          .toList(),
      timestamp: entity.timestamp.toIso8601String(),
    );
  }
}

extension LabPulseModelX on LabPulseModel {
  LabPulse toEntity() {
    return LabPulse(
      samplesInTransit: samplesInTransit,
      samplesProcessing: samplesProcessing,
      samplesCompleted: samplesCompleted,
      samplesRejected: samplesRejected,
      tatAlerts: tatAlerts.map((e) => e.toEntity()).toList(),
      capacity: capacity.toEntity(),
      trends: trends.map((e) => e.toEntity()).toList(),
      timestamp: DateTime.parse(timestamp),
    );
  }
}

@freezed
abstract class TatAlertModel with _$TatAlertModel {
  const factory TatAlertModel({
    required String sampleId,
    required String testName,
    required int remainingMinutes,
    required String severity,
    required String deadline,
  }) = _TatAlertModel;

  factory TatAlertModel.fromJson(Map<String, dynamic> json) =>
      _$TatAlertModelFromJson(json);

  static TatAlertModel fromEntity(TatAlert entity) {
    return TatAlertModel(
      sampleId: entity.sampleId,
      testName: entity.testName,
      remainingMinutes: entity.remainingMinutes,
      severity: entity.severity.name,
      deadline: entity.deadline.toIso8601String(),
    );
  }
}

extension TatAlertModelX on TatAlertModel {
  TatAlert toEntity() {
    return TatAlert(
      sampleId: sampleId,
      testName: testName,
      remainingMinutes: remainingMinutes,
      severity: TatSeverity.values.firstWhere((e) => e.name == severity),
      deadline: DateTime.parse(deadline),
    );
  }
}

@freezed
abstract class LabCapacityModel with _$LabCapacityModel {
  const factory LabCapacityModel({
    required int currentLoad,
    required int maxCapacity,
    required double utilizationPercentage,
    required int availableAnalyzers,
    required int totalAnalyzers,
  }) = _LabCapacityModel;

  factory LabCapacityModel.fromJson(Map<String, dynamic> json) =>
      _$LabCapacityModelFromJson(json);

  static LabCapacityModel fromEntity(LabCapacity entity) {
    return LabCapacityModel(
      currentLoad: entity.currentLoad,
      maxCapacity: entity.maxCapacity,
      utilizationPercentage: entity.utilizationPercentage,
      availableAnalyzers: entity.availableAnalyzers,
      totalAnalyzers: entity.totalAnalyzers,
    );
  }
}

extension LabCapacityModelX on LabCapacityModel {
  LabCapacity toEntity() {
    return LabCapacity(
      currentLoad: currentLoad,
      maxCapacity: maxCapacity,
      utilizationPercentage: utilizationPercentage,
      availableAnalyzers: availableAnalyzers,
      totalAnalyzers: totalAnalyzers,
    );
  }
}

@freezed
abstract class SampleTrendDataModel with _$SampleTrendDataModel {
  const factory SampleTrendDataModel({
    required String timestamp,
    required int inTransit,
    required int processing,
  }) = _SampleTrendDataModel;

  factory SampleTrendDataModel.fromJson(Map<String, dynamic> json) =>
      _$SampleTrendDataModelFromJson(json);

  static SampleTrendDataModel fromEntity(SampleTrendData entity) {
    return SampleTrendDataModel(
      timestamp: entity.timestamp.toIso8601String(),
      inTransit: entity.inTransit,
      processing: entity.processing,
    );
  }
}

extension SampleTrendDataModelX on SampleTrendDataModel {
  SampleTrendData toEntity() {
    return SampleTrendData(
      timestamp: DateTime.parse(timestamp),
      inTransit: inTransit,
      processing: processing,
    );
  }
}
