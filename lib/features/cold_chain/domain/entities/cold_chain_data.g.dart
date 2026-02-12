// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cold_chain_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColdChainDataImpl _$$ColdChainDataImplFromJson(Map<String, dynamic> json) =>
    _$ColdChainDataImpl(
      sampleId: json['sampleId'] as String,
      readings: (json['readings'] as List<dynamic>)
          .map((e) => TelemetryReading.fromJson(e as Map<String, dynamic>))
          .toList(),
      compliance: ColdChainCompliance.fromJson(
          json['compliance'] as Map<String, dynamic>),
      monitoringStartTime:
          DateTime.parse(json['monitoringStartTime'] as String),
      monitoringEndTime: json['monitoringEndTime'] == null
          ? null
          : DateTime.parse(json['monitoringEndTime'] as String),
      smartBagId: json['smartBagId'] as String?,
      isManualLogging: json['isManualLogging'] as bool?,
    );

Map<String, dynamic> _$$ColdChainDataImplToJson(_$ColdChainDataImpl instance) {
  final val = <String, dynamic>{
    'sampleId': instance.sampleId,
    'readings': instance.readings.map((e) => e.toJson()).toList(),
    'compliance': instance.compliance.toJson(),
    'monitoringStartTime': instance.monitoringStartTime.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'monitoringEndTime', instance.monitoringEndTime?.toIso8601String());
  writeNotNull('smartBagId', instance.smartBagId);
  writeNotNull('isManualLogging', instance.isManualLogging);
  return val;
}

_$TelemetryReadingImpl _$$TelemetryReadingImplFromJson(
        Map<String, dynamic> json) =>
    _$TelemetryReadingImpl(
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

Map<String, dynamic> _$$TelemetryReadingImplToJson(
    _$TelemetryReadingImpl instance) {
  final val = <String, dynamic>{
    'timestamp': instance.timestamp.toIso8601String(),
    'temperature': instance.temperature,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('humidity', instance.humidity);
  writeNotNull('shockDetected', instance.shockDetected);
  writeNotNull('tiltDetected', instance.tiltDetected);
  writeNotNull('lidOpenDetected', instance.lidOpenDetected);
  writeNotNull('batteryLevel', instance.batteryLevel);
  writeNotNull('location', instance.location?.toJson());
  writeNotNull('deviceId', instance.deviceId);
  return val;
}

_$ColdChainComplianceImpl _$$ColdChainComplianceImplFromJson(
        Map<String, dynamic> json) =>
    _$ColdChainComplianceImpl(
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
          json['cumulativeStress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ColdChainComplianceImplToJson(
        _$ColdChainComplianceImpl instance) =>
    <String, dynamic>{
      'compliancePercentage': instance.compliancePercentage,
      'totalReadings': instance.totalReadings,
      'compliantReadings': instance.compliantReadings,
      'breachCount': instance.breachCount,
      'breaches': instance.breaches.map((e) => e.toJson()).toList(),
      'maxDeviation': instance.maxDeviation,
      'totalExposureDuration': instance.totalExposureDuration,
      'cumulativeStress': instance.cumulativeStress.toJson(),
    };

_$TemperatureBreachImpl _$$TemperatureBreachImplFromJson(
        Map<String, dynamic> json) =>
    _$TemperatureBreachImpl(
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      peakTemperature: (json['peakTemperature'] as num).toDouble(),
      durationSeconds: (json['durationSeconds'] as num).toInt(),
      severity: $enumDecode(_$BreachSeverityEnumMap, json['severity']),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$TemperatureBreachImplToJson(
    _$TemperatureBreachImpl instance) {
  final val = <String, dynamic>{
    'startTime': instance.startTime.toIso8601String(),
    'endTime': instance.endTime.toIso8601String(),
    'peakTemperature': instance.peakTemperature,
    'durationSeconds': instance.durationSeconds,
    'severity': _$BreachSeverityEnumMap[instance.severity]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('notes', instance.notes);
  return val;
}

const _$BreachSeverityEnumMap = {
  BreachSeverity.minor: 'minor',
  BreachSeverity.moderate: 'moderate',
  BreachSeverity.severe: 'severe',
};

_$CumulativeThermalStressImpl _$$CumulativeThermalStressImplFromJson(
        Map<String, dynamic> json) =>
    _$CumulativeThermalStressImpl(
      stressIndex: (json['stressIndex'] as num).toDouble(),
      predictedDegradation: (json['predictedDegradation'] as num).toDouble(),
      recommendation: json['recommendation'] as String?,
    );

Map<String, dynamic> _$$CumulativeThermalStressImplToJson(
    _$CumulativeThermalStressImpl instance) {
  final val = <String, dynamic>{
    'stressIndex': instance.stressIndex,
    'predictedDegradation': instance.predictedDegradation,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('recommendation', instance.recommendation);
  return val;
}
