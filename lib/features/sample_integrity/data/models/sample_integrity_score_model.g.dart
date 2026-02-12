// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_integrity_score_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SampleIntegrityScoreModelImpl _$$SampleIntegrityScoreModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SampleIntegrityScoreModelImpl(
      overallScore: (json['overallScore'] as num).toDouble(),
      level: json['level'] as String,
      calculatedAt: json['calculatedAt'] as String,
      factors: IntegrityFactorsModel.fromJson(
          json['factors'] as Map<String, dynamic>),
      alerts: (json['alerts'] as List<dynamic>)
          .map((e) => IntegrityAlertModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendation: json['recommendation'] as String?,
      requiresRecollection: json['requiresRecollection'] as bool?,
    );

Map<String, dynamic> _$$SampleIntegrityScoreModelImplToJson(
    _$SampleIntegrityScoreModelImpl instance) {
  final val = <String, dynamic>{
    'overallScore': instance.overallScore,
    'level': instance.level,
    'calculatedAt': instance.calculatedAt,
    'factors': instance.factors.toJson(),
    'alerts': instance.alerts.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('recommendation', instance.recommendation);
  writeNotNull('requiresRecollection', instance.requiresRecollection);
  return val;
}

_$IntegrityFactorsModelImpl _$$IntegrityFactorsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IntegrityFactorsModelImpl(
      transitDelayScore: (json['transitDelayScore'] as num).toDouble(),
      temperatureComplianceScore:
          (json['temperatureComplianceScore'] as num).toDouble(),
      handoverScore: (json['handoverScore'] as num).toDouble(),
      conditionScore: (json['conditionScore'] as num).toDouble(),
      timelinessScore: (json['timelinessScore'] as num).toDouble(),
      transitDelayMinutes: (json['transitDelayMinutes'] as num?)?.toInt(),
      maxTemperatureDeviation:
          (json['maxTemperatureDeviation'] as num?)?.toDouble(),
      numberOfHandovers: (json['numberOfHandovers'] as num?)?.toInt(),
      totalTransitTime: (json['totalTransitTime'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$IntegrityFactorsModelImplToJson(
    _$IntegrityFactorsModelImpl instance) {
  final val = <String, dynamic>{
    'transitDelayScore': instance.transitDelayScore,
    'temperatureComplianceScore': instance.temperatureComplianceScore,
    'handoverScore': instance.handoverScore,
    'conditionScore': instance.conditionScore,
    'timelinessScore': instance.timelinessScore,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transitDelayMinutes', instance.transitDelayMinutes);
  writeNotNull('maxTemperatureDeviation', instance.maxTemperatureDeviation);
  writeNotNull('numberOfHandovers', instance.numberOfHandovers);
  writeNotNull('totalTransitTime', instance.totalTransitTime);
  return val;
}

_$IntegrityAlertModelImpl _$$IntegrityAlertModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IntegrityAlertModelImpl(
      severity: json['severity'] as String,
      message: json['message'] as String,
      type: json['type'] as String,
      timestamp: json['timestamp'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$IntegrityAlertModelImplToJson(
    _$IntegrityAlertModelImpl instance) {
  final val = <String, dynamic>{
    'severity': instance.severity,
    'message': instance.message,
    'type': instance.type,
    'timestamp': instance.timestamp,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  return val;
}
