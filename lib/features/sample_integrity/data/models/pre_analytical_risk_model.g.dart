// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_analytical_risk_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreAnalyticalRiskModelImpl _$$PreAnalyticalRiskModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PreAnalyticalRiskModelImpl(
      riskScore: (json['riskScore'] as num).toDouble(),
      riskLevel: json['riskLevel'] as String,
      factors: (json['factors'] as List<dynamic>)
          .map((e) => RiskFactorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      assessedAt: json['assessedAt'] as String,
      recommendation: json['recommendation'] as String?,
      requiresRecollection: json['requiresRecollection'] as bool?,
      sampleViabilityProbability:
          (json['sampleViabilityProbability'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PreAnalyticalRiskModelImplToJson(
    _$PreAnalyticalRiskModelImpl instance) {
  final val = <String, dynamic>{
    'riskScore': instance.riskScore,
    'riskLevel': instance.riskLevel,
    'factors': instance.factors.map((e) => e.toJson()).toList(),
    'assessedAt': instance.assessedAt,
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

_$RiskFactorModelImpl _$$RiskFactorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RiskFactorModelImpl(
      type: json['type'] as String,
      impact: (json['impact'] as num).toDouble(),
      description: json['description'] as String,
      detected: json['detected'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$RiskFactorModelImplToJson(
    _$RiskFactorModelImpl instance) {
  final val = <String, dynamic>{
    'type': instance.type,
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
