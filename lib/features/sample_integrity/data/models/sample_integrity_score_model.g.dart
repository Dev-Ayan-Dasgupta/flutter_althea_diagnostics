// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_integrity_score_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SampleIntegrityScoreModel _$SampleIntegrityScoreModelFromJson(
  Map<String, dynamic> json,
) => _SampleIntegrityScoreModel(
  overallScore: (json['overallScore'] as num).toDouble(),
  level: json['level'] as String,
  calculatedAt: json['calculatedAt'] as String,
  factors: IntegrityFactorsModel.fromJson(
    json['factors'] as Map<String, dynamic>,
  ),
  alerts: (json['alerts'] as List<dynamic>)
      .map((e) => IntegrityAlertModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  recommendation: json['recommendation'] as String?,
  requiresRecollection: json['requiresRecollection'] as bool?,
);

Map<String, dynamic> _$SampleIntegrityScoreModelToJson(
  _SampleIntegrityScoreModel instance,
) => <String, dynamic>{
  'overallScore': instance.overallScore,
  'level': instance.level,
  'calculatedAt': instance.calculatedAt,
  'factors': instance.factors,
  'alerts': instance.alerts,
  'recommendation': instance.recommendation,
  'requiresRecollection': instance.requiresRecollection,
};

_IntegrityFactorsModel _$IntegrityFactorsModelFromJson(
  Map<String, dynamic> json,
) => _IntegrityFactorsModel(
  transitDelayScore: (json['transitDelayScore'] as num).toDouble(),
  temperatureComplianceScore: (json['temperatureComplianceScore'] as num)
      .toDouble(),
  handoverScore: (json['handoverScore'] as num).toDouble(),
  conditionScore: (json['conditionScore'] as num).toDouble(),
  timelinessScore: (json['timelinessScore'] as num).toDouble(),
  transitDelayMinutes: (json['transitDelayMinutes'] as num?)?.toInt(),
  maxTemperatureDeviation: (json['maxTemperatureDeviation'] as num?)
      ?.toDouble(),
  numberOfHandovers: (json['numberOfHandovers'] as num?)?.toInt(),
  totalTransitTime: (json['totalTransitTime'] as num?)?.toInt(),
);

Map<String, dynamic> _$IntegrityFactorsModelToJson(
  _IntegrityFactorsModel instance,
) => <String, dynamic>{
  'transitDelayScore': instance.transitDelayScore,
  'temperatureComplianceScore': instance.temperatureComplianceScore,
  'handoverScore': instance.handoverScore,
  'conditionScore': instance.conditionScore,
  'timelinessScore': instance.timelinessScore,
  'transitDelayMinutes': instance.transitDelayMinutes,
  'maxTemperatureDeviation': instance.maxTemperatureDeviation,
  'numberOfHandovers': instance.numberOfHandovers,
  'totalTransitTime': instance.totalTransitTime,
};

_IntegrityAlertModel _$IntegrityAlertModelFromJson(Map<String, dynamic> json) =>
    _IntegrityAlertModel(
      severity: json['severity'] as String,
      message: json['message'] as String,
      type: json['type'] as String,
      timestamp: json['timestamp'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$IntegrityAlertModelToJson(
  _IntegrityAlertModel instance,
) => <String, dynamic>{
  'severity': instance.severity,
  'message': instance.message,
  'type': instance.type,
  'timestamp': instance.timestamp,
  'metadata': instance.metadata,
};
