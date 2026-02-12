// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cold_chain_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ColdChainData _$ColdChainDataFromJson(Map<String, dynamic> json) =>
    _ColdChainData(
      sampleId: json['sampleId'] as String,
      readings: (json['readings'] as List<dynamic>)
          .map((e) => TelemetryReading.fromJson(e as Map<String, dynamic>))
          .toList(),
      compliance: ColdChainCompliance.fromJson(
        json['compliance'] as Map<String, dynamic>,
      ),
      monitoringStartTime: DateTime.parse(
        json['monitoringStartTime'] as String,
      ),
      monitoringEndTime: json['monitoringEndTime'] == null
          ? null
          : DateTime.parse(json['monitoringEndTime'] as String),
      smartBagId: json['smartBagId'] as String?,
      isManualLogging: json['isManualLogging'] as bool?,
    );

Map<String, dynamic> _$ColdChainDataToJson(_ColdChainData instance) =>
    <String, dynamic>{
      'sampleId': instance.sampleId,
      'readings': instance.readings,
      'compliance': instance.compliance,
      'monitoringStartTime': instance.monitoringStartTime.toIso8601String(),
      'monitoringEndTime': instance.monitoringEndTime?.toIso8601String(),
      'smartBagId': instance.smartBagId,
      'isManualLogging': instance.isManualLogging,
    };

_TelemetryReading _$TelemetryReadingFromJson(Map<String, dynamic> json) =>
    _TelemetryReading(
      timestamp: DateTime.parse(json['timestamp'] as String),
      temperature: (json['temperature'] as num).toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      shockDetected: json['shockDetected'] as bool?,
      tiltDetected: json['tiltDetected'] as bool?,
      lidOpenDetected: json['lidOpenDetected'] as bool?,
      batteryLevel: (json['batteryLevel'] as num?)?.toInt(),
      location: json['location'] == null
          ? null
          : GeoLocation.fromJson(json['location'] as Map<String, dynamic>),
      deviceId: json['deviceId'] as String?,
    );

Map<String, dynamic> _$TelemetryReadingToJson(_TelemetryReading instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'shockDetected': instance.shockDetected,
      'tiltDetected': instance.tiltDetected,
      'lidOpenDetected': instance.lidOpenDetected,
      'batteryLevel': instance.batteryLevel,
      'location': instance.location,
      'deviceId': instance.deviceId,
    };

_ColdChainCompliance _$ColdChainComplianceFromJson(Map<String, dynamic> json) =>
    _ColdChainCompliance(
      compliancePercentage: (json['compliancePercentage'] as num).toDouble(),
      totalReadings: (json['totalReadings'] as num).toInt(),
      compliantReadings: (json['compliantReadings'] as num).toInt(),
      breachCount: (json['breachCount'] as num).toInt(),
      breaches: (json['breaches'] as List<dynamic>)
          .map((e) => TemperatureBreach.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxDeviation: (json['maxDeviation'] as num).toDouble(),
      totalExposureDuration: (json['totalExposureDuration'] as num).toInt(),
      cumulativeStress: CumulativeThermalStress.fromJson(
        json['cumulativeStress'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ColdChainComplianceToJson(
  _ColdChainCompliance instance,
) => <String, dynamic>{
  'compliancePercentage': instance.compliancePercentage,
  'totalReadings': instance.totalReadings,
  'compliantReadings': instance.compliantReadings,
  'breachCount': instance.breachCount,
  'breaches': instance.breaches,
  'maxDeviation': instance.maxDeviation,
  'totalExposureDuration': instance.totalExposureDuration,
  'cumulativeStress': instance.cumulativeStress,
};

_TemperatureBreach _$TemperatureBreachFromJson(Map<String, dynamic> json) =>
    _TemperatureBreach(
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      peakTemperature: (json['peakTemperature'] as num).toDouble(),
      durationSeconds: (json['durationSeconds'] as num).toInt(),
      severity: $enumDecode(_$BreachSeverityEnumMap, json['severity']),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$TemperatureBreachToJson(_TemperatureBreach instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'peakTemperature': instance.peakTemperature,
      'durationSeconds': instance.durationSeconds,
      'severity': _$BreachSeverityEnumMap[instance.severity]!,
      'notes': instance.notes,
    };

const _$BreachSeverityEnumMap = {
  BreachSeverity.minor: 'minor',
  BreachSeverity.moderate: 'moderate',
  BreachSeverity.severe: 'severe',
};

_CumulativeThermalStress _$CumulativeThermalStressFromJson(
  Map<String, dynamic> json,
) => _CumulativeThermalStress(
  stressIndex: (json['stressIndex'] as num).toDouble(),
  predictedDegradation: (json['predictedDegradation'] as num).toDouble(),
  recommendation: json['recommendation'] as String?,
);

Map<String, dynamic> _$CumulativeThermalStressToJson(
  _CumulativeThermalStress instance,
) => <String, dynamic>{
  'stressIndex': instance.stressIndex,
  'predictedDegradation': instance.predictedDegradation,
  'recommendation': instance.recommendation,
};
