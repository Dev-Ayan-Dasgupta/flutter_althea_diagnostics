import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_integrity_score.freezed.dart';
part 'sample_integrity_score.g.dart';

@freezed
abstract class SampleIntegrityScore with _$SampleIntegrityScore {
  const factory SampleIntegrityScore({
    required double overallScore, // 0-100
    required IntegrityLevel level,
    required DateTime calculatedAt,
    required IntegrityFactors factors,
    required List<IntegrityAlert> alerts,
    String? recommendation,
    bool? requiresRecollection,
  }) = _SampleIntegrityScore;

  factory SampleIntegrityScore.fromJson(Map<String, dynamic> json) =>
      _$SampleIntegrityScoreFromJson(json);
}

enum IntegrityLevel {
  high, // 80-100
  medium, // 50-79
  low, // 0-49
}

@freezed
abstract class IntegrityFactors with _$IntegrityFactors {
  const factory IntegrityFactors({
    required double transitDelayScore, // 0-100
    required double temperatureComplianceScore, // 0-100
    required double handoverScore, // 0-100
    required double conditionScore, // 0-100
    required double timelinessScore, // 0-100
    int? transitDelayMinutes,
    double? maxTemperatureDeviation,
    int? numberOfHandovers,
    int? totalTransitTime,
  }) = _IntegrityFactors;

  factory IntegrityFactors.fromJson(Map<String, dynamic> json) =>
      _$IntegrityFactorsFromJson(json);
}

@freezed
abstract class IntegrityAlert with _$IntegrityAlert {
  const factory IntegrityAlert({
    required AlertSeverity severity,
    required String message,
    required AlertType type,
    required DateTime timestamp,
    Map<String, dynamic>? metadata,
  }) = _IntegrityAlert;

  factory IntegrityAlert.fromJson(Map<String, dynamic> json) =>
      _$IntegrityAlertFromJson(json);
}

enum AlertSeverity {
  critical,
  warning,
  info,
}

enum AlertType {
  temperatureBreach,
  delayExceeded,
  multipleHandovers,
  containerCompromised,
  barcodeDiscrepancy,
  biometricFailed,
  preAnalyticalRisk,
}
