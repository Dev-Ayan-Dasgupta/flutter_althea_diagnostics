// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_analytical_risk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PreAnalyticalRiskAssessment _$PreAnalyticalRiskAssessmentFromJson(
  Map<String, dynamic> json,
) => _PreAnalyticalRiskAssessment(
  riskScore: (json['riskScore'] as num).toDouble(),
  riskLevel: $enumDecode(_$RiskLevelEnumMap, json['riskLevel']),
  factors: (json['factors'] as List<dynamic>)
      .map((e) => RiskFactor.fromJson(e as Map<String, dynamic>))
      .toList(),
  assessedAt: DateTime.parse(json['assessedAt'] as String),
  recommendation: json['recommendation'] as String?,
  requiresRecollection: json['requiresRecollection'] as bool?,
  sampleViabilityProbability: (json['sampleViabilityProbability'] as num?)
      ?.toDouble(),
);

Map<String, dynamic> _$PreAnalyticalRiskAssessmentToJson(
  _PreAnalyticalRiskAssessment instance,
) => <String, dynamic>{
  'riskScore': instance.riskScore,
  'riskLevel': _$RiskLevelEnumMap[instance.riskLevel]!,
  'factors': instance.factors,
  'assessedAt': instance.assessedAt.toIso8601String(),
  'recommendation': instance.recommendation,
  'requiresRecollection': instance.requiresRecollection,
  'sampleViabilityProbability': instance.sampleViabilityProbability,
};

const _$RiskLevelEnumMap = {
  RiskLevel.low: 'low',
  RiskLevel.moderate: 'moderate',
  RiskLevel.high: 'high',
  RiskLevel.critical: 'critical',
};

_RiskFactor _$RiskFactorFromJson(Map<String, dynamic> json) => _RiskFactor(
  type: $enumDecode(_$RiskFactorTypeEnumMap, json['type']),
  impact: (json['impact'] as num).toDouble(),
  description: json['description'] as String,
  detected: json['detected'] as bool?,
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$RiskFactorToJson(_RiskFactor instance) =>
    <String, dynamic>{
      'type': _$RiskFactorTypeEnumMap[instance.type]!,
      'impact': instance.impact,
      'description': instance.description,
      'detected': instance.detected,
      'metadata': instance.metadata,
    };

const _$RiskFactorTypeEnumMap = {
  RiskFactorType.hemolysisRisk: 'hemolysisRisk',
  RiskFactorType.clottingRisk: 'clottingRisk',
  RiskFactorType.transportDelayDegradation: 'transportDelayDegradation',
  RiskFactorType.incorrectTubeType: 'incorrectTubeType',
  RiskFactorType.underfillOverfill: 'underfillOverfill',
  RiskFactorType.prolongedTimeToCentrifuge: 'prolongedTimeToCentrifuge',
  RiskFactorType.excessiveAgitation: 'excessiveAgitation',
  RiskFactorType.temperatureExposure: 'temperatureExposure',
  RiskFactorType.collectionTechniqueIssue: 'collectionTechniqueIssue',
  RiskFactorType.patientPreparationIssue: 'patientPreparationIssue',
};
