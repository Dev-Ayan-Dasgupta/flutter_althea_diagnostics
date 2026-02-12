import 'package:freezed_annotation/freezed_annotation.dart';

part 'pre_analytical_risk.freezed.dart';
part 'pre_analytical_risk.g.dart';

@freezed
abstract class PreAnalyticalRiskAssessment with _$PreAnalyticalRiskAssessment {
  const factory PreAnalyticalRiskAssessment({
    required double riskScore, // 0-100
    required RiskLevel riskLevel,
    required List<RiskFactor> factors,
    required DateTime assessedAt,
    String? recommendation,
    bool? requiresRecollection,
    double? sampleViabilityProbability,
  }) = _PreAnalyticalRiskAssessment;

  factory PreAnalyticalRiskAssessment.fromJson(Map<String, dynamic> json) =>
      _$PreAnalyticalRiskAssessmentFromJson(json);
}

enum RiskLevel {
  low,
  moderate,
  high,
  critical,
}

@freezed
abstract class RiskFactor with _$RiskFactor {
  const factory RiskFactor({
    required RiskFactorType type,
    required double impact, // 0-100
    required String description,
    bool? detected,
    Map<String, dynamic>? metadata,
  }) = _RiskFactor;

  factory RiskFactor.fromJson(Map<String, dynamic> json) =>
      _$RiskFactorFromJson(json);
}

enum RiskFactorType {
  hemolysisRisk,
  clottingRisk,
  transportDelayDegradation,
  incorrectTubeType,
  underfillOverfill,
  prolongedTimeToCentrifuge,
  excessiveAgitation,
  temperatureExposure,
  collectionTechniqueIssue,
  patientPreparationIssue,
}
