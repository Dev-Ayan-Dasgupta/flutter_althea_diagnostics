import 'package:freezed_annotation/freezed_annotation.dart';

part 'lab_pulse.freezed.dart';
part 'lab_pulse.g.dart';

@freezed
abstract class LabPulse with _$LabPulse {
  const factory LabPulse({
    required int samplesInTransit,
    required int samplesProcessing,
    required int samplesCompleted,
    required int samplesRejected,
    required List<TatAlert> tatAlerts,
    required LabCapacity capacity,
    required List<SampleTrendData> trends,
    required DateTime timestamp,
  }) = _LabPulse;

  factory LabPulse.fromJson(Map<String, dynamic> json) =>
      _$LabPulseFromJson(json);
}

@freezed
abstract class TatAlert with _$TatAlert {
  const factory TatAlert({
    required String sampleId,
    required String testName,
    required int remainingMinutes,
    required TatSeverity severity,
    required DateTime deadline,
  }) = _TatAlert;

  factory TatAlert.fromJson(Map<String, dynamic> json) =>
      _$TatAlertFromJson(json);
}

enum TatSeverity {
  normal, // > 60 minutes remaining
  amber, // 30-60 minutes remaining
  critical, // < 30 minutes remaining
}

@freezed
abstract class LabCapacity with _$LabCapacity {
  const factory LabCapacity({
    required int currentLoad,
    required int maxCapacity,
    required double utilizationPercentage,
    required int availableAnalyzers,
    required int totalAnalyzers,
  }) = _LabCapacity;

  factory LabCapacity.fromJson(Map<String, dynamic> json) =>
      _$LabCapacityFromJson(json);
}

@freezed
abstract class SampleTrendData with _$SampleTrendData {
  const factory SampleTrendData({
    required DateTime timestamp,
    required int inTransit,
    required int processing,
  }) = _SampleTrendData;

  factory SampleTrendData.fromJson(Map<String, dynamic> json) =>
      _$SampleTrendDataFromJson(json);
}
