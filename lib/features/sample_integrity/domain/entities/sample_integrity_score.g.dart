// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_integrity_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SampleIntegrityScore _$SampleIntegrityScoreFromJson(
  Map<String, dynamic> json,
) => _SampleIntegrityScore(
  overallScore: (json['overallScore'] as num).toDouble(),
  level: $enumDecode(_$IntegrityLevelEnumMap, json['level']),
  calculatedAt: DateTime.parse(json['calculatedAt'] as String),
  factors: IntegrityFactors.fromJson(json['factors'] as Map<String, dynamic>),
  alerts: (json['alerts'] as List<dynamic>)
      .map((e) => IntegrityAlert.fromJson(e as Map<String, dynamic>))
      .toList(),
  recommendation: json['recommendation'] as String?,
  requiresRecollection: json['requiresRecollection'] as bool?,
);

Map<String, dynamic> _$SampleIntegrityScoreToJson(
  _SampleIntegrityScore instance,
) => <String, dynamic>{
  'overallScore': instance.overallScore,
  'level': _$IntegrityLevelEnumMap[instance.level]!,
  'calculatedAt': instance.calculatedAt.toIso8601String(),
  'factors': instance.factors,
  'alerts': instance.alerts,
  'recommendation': instance.recommendation,
  'requiresRecollection': instance.requiresRecollection,
};

const _$IntegrityLevelEnumMap = {
  IntegrityLevel.high: 'high',
  IntegrityLevel.medium: 'medium',
  IntegrityLevel.low: 'low',
};

_IntegrityFactors _$IntegrityFactorsFromJson(Map<String, dynamic> json) =>
    _IntegrityFactors(
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

Map<String, dynamic> _$IntegrityFactorsToJson(_IntegrityFactors instance) =>
    <String, dynamic>{
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

_IntegrityAlert _$IntegrityAlertFromJson(Map<String, dynamic> json) =>
    _IntegrityAlert(
      severity: $enumDecode(_$AlertSeverityEnumMap, json['severity']),
      message: json['message'] as String,
      type: $enumDecode(_$AlertTypeEnumMap, json['type']),
      timestamp: DateTime.parse(json['timestamp'] as String),
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$IntegrityAlertToJson(_IntegrityAlert instance) =>
    <String, dynamic>{
      'severity': _$AlertSeverityEnumMap[instance.severity]!,
      'message': instance.message,
      'type': _$AlertTypeEnumMap[instance.type]!,
      'timestamp': instance.timestamp.toIso8601String(),
      'metadata': instance.metadata,
    };

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
