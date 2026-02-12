// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_integrity_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SampleIntegrityScoreImpl _$$SampleIntegrityScoreImplFromJson(
        Map<String, dynamic> json) =>
    _$SampleIntegrityScoreImpl(
      overallScore: (json['overallScore'] as num).toDouble(),
      level: $enumDecode(_$IntegrityLevelEnumMap, json['level']),
      calculatedAt: DateTime.parse(json['calculatedAt'] as String),
      factors:
          IntegrityFactors.fromJson(json['factors'] as Map<String, dynamic>),
      alerts: (json['alerts'] as List<dynamic>)
          .map((e) => IntegrityAlert.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendation: json['recommendation'] as String?,
      requiresRecollection: json['requiresRecollection'] as bool?,
    );

Map<String, dynamic> _$$SampleIntegrityScoreImplToJson(
    _$SampleIntegrityScoreImpl instance) {
  final val = <String, dynamic>{
    'overallScore': instance.overallScore,
    'level': _$IntegrityLevelEnumMap[instance.level]!,
    'calculatedAt': instance.calculatedAt.toIso8601String(),
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

const _$IntegrityLevelEnumMap = {
  IntegrityLevel.high: 'high',
  IntegrityLevel.medium: 'medium',
  IntegrityLevel.low: 'low',
};

_$IntegrityFactorsImpl _$$IntegrityFactorsImplFromJson(
        Map<String, dynamic> json) =>
    _$IntegrityFactorsImpl(
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

Map<String, dynamic> _$$IntegrityFactorsImplToJson(
    _$IntegrityFactorsImpl instance) {
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

_$IntegrityAlertImpl _$$IntegrityAlertImplFromJson(Map<String, dynamic> json) =>
    _$IntegrityAlertImpl(
      severity: $enumDecode(_$AlertSeverityEnumMap, json['severity']),
      message: json['message'] as String,
      type: $enumDecode(_$AlertTypeEnumMap, json['type']),
      timestamp: DateTime.parse(json['timestamp'] as String),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$IntegrityAlertImplToJson(
    _$IntegrityAlertImpl instance) {
  final val = <String, dynamic>{
    'severity': _$AlertSeverityEnumMap[instance.severity]!,
    'message': instance.message,
    'type': _$AlertTypeEnumMap[instance.type]!,
    'timestamp': instance.timestamp.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  return val;
}

const _$AlertSeverityEnumMap = {
  AlertSeverity.critical: 'critical',
  AlertSeverity.warning: 'warning',
  AlertSeverity.info: 'info',
};

const _$AlertTypeEnumMap = {
  AlertType.temperatureBreach: 'temperatureBreach',
  AlertType.delayExceeded: 'delayExceeded',
  AlertType.multipleHandovers: 'multipleHandovers',
  AlertType.containerCompromised: 'containerCompromised',
  AlertType.barcodeDiscrepancy: 'barcodeDiscrepancy',
  AlertType.biometricFailed: 'biometricFailed',
  AlertType.preAnalyticalRisk: 'preAnalyticalRisk',
};
