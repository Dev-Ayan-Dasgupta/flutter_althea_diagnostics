// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_analytical_risk_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PreAnalyticalRiskModel _$PreAnalyticalRiskModelFromJson(
        Map<String, dynamic> json) =>
    _PreAnalyticalRiskModel(
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

Map<String, dynamic> _$PreAnalyticalRiskModelToJson(
        _PreAnalyticalRiskModel instance) =>
    <String, dynamic>{
      'riskScore': instance.riskScore,
      'riskLevel': instance.riskLevel,
      'factors': instance.factors,
      'assessedAt': instance.assessedAt,
      'recommendation': instance.recommendation,
      'requiresRecollection': instance.requiresRecollection,
      'sampleViabilityProbability': instance.sampleViabilityProbability,
    };

_RiskFactorModel _$RiskFactorModelFromJson(Map<String, dynamic> json) =>
    _RiskFactorModel(
      type: json['type'] as String,
      impact: (json['impact'] as num).toDouble(),
      description: json['description'] as String,
      detected: json['detected'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$RiskFactorModelToJson(_RiskFactorModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'impact': instance.impact,
      'description': instance.description,
      'detected': instance.detected,
      'metadata': instance.metadata,
    };
