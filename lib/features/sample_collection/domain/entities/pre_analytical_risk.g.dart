// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_analytical_risk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreAnalyticalRiskAssessmentImpl _$$PreAnalyticalRiskAssessmentImplFromJson(
        Map<String, dynamic> json) =>
    _$PreAnalyticalRiskAssessmentImpl(
      riskScore: (json['riskScore'] as num).toDouble(),
      riskLevel: $enumDecode(_$RiskLevelEnumMap, json['riskLevel']),
      factors: (json['factors'] as List<dynamic>)
          .map((e) => RiskFactor.fromJson(e as Map<String, dynamic>))
          .toList(),
      assessedAt: DateTime.parse(json['assessedAt'] as String),
      recommendation: json['recommendation'] as String?,
      requiresRecollection: json['requiresRecollection'] as bool?,
      sampleViabilityProbability:
          (json['sampleViabilityProbability'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PreAnalyticalRiskAssessmentImplToJson(
    _$PreAnalyticalRiskAssessmentImpl instance) {
  final val = <String, dynamic>{
    'riskScore': instance.riskScore,
    'riskLevel': _$RiskLevelEnumMap[instance.riskLevel]!,
    'factors': instance.factors.map((e) => e.toJson()).toList(),
    'assessedAt': instance.assessedAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('recommendation', instance.recommendation);
  writeNotNull('requiresRecollection', instance.requiresRecollection);
  writeNotNull(
      'sampleViabilityProbability', instance.sampleViabilityProbability);
  return val;
}

const _$RiskLevelEnumMap = {
  RiskLevel.low: 'low',
  RiskLevel.moderate: 'moderate',
  RiskLevel.high: 'high',
  RiskLevel.critical: 'critical',
};

_$RiskFactorImpl _$$RiskFactorImplFromJson(Map<String, dynamic> json) =>
    _$RiskFactorImpl(
      type: $enumDecode(_$RiskFactorTypeEnumMap, json['type']),
      impact: (json['impact'] as num).toDouble(),
      description: json['description'] as String,
      detected: json['detected'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$RiskFactorImplToJson(_$RiskFactorImpl instance) {
  final val = <String, dynamic>{
    'type': _$RiskFactorTypeEnumMap[instance.type]!,
    'impact': instance.impact,
    'description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('detected', instance.detected);
  writeNotNull('metadata', instance.metadata);
  return val;
}

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
