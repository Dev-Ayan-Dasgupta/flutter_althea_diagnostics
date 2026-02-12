// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cold_chain_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColdChainDataModelImpl _$$ColdChainDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ColdChainDataModelImpl(
      sampleId: json['sampleId'] as String,
      readings: (json['readings'] as List<dynamic>)
          .map((e) => TelemetryReadingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      compliance: ColdChainComplianceModel.fromJson(
          json['compliance'] as Map<String, dynamic>),
      monitoringStartTime: json['monitoringStartTime'] as String,
      monitoringEndTime: json['monitoringEndTime'] as String?,
      smartBagId: json['smartBagId'] as String?,
      isManualLogging: json['isManualLogging'] as bool?,
    );

Map<String, dynamic> _$$ColdChainDataModelImplToJson(
    _$ColdChainDataModelImpl instance) {
  final val = <String, dynamic>{
    'sampleId': instance.sampleId,
    'readings': instance.readings.map((e) => e.toJson()).toList(),
    'compliance': instance.compliance.toJson(),
    'monitoringStartTime': instance.monitoringStartTime,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('monitoringEndTime', instance.monitoringEndTime);
  writeNotNull('smartBagId', instance.smartBagId);
  writeNotNull('isManualLogging', instance.isManualLogging);
  return val;
}

_$TelemetryReadingModelImpl _$$TelemetryReadingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TelemetryReadingModelImpl(
      timestamp: json['timestamp'] as String,
      temperature: (json['temperature'] as num).toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      shockDetected: json['shockDetected'] as bool?,
      tiltDetected: json['tiltDetected'] as bool?,
      lidOpenDetected: json['lidOpenDetected'] as bool?,
      batteryLevel: (json['batteryLevel'] as num?)?.toInt(),
      location: json['location'] == null
          ? null
          : GeoLocationModel.fromJson(json['location'] as Map<String, dynamic>),
      deviceId: json['deviceId'] as String?,
    );

Map<String, dynamic> _$$TelemetryReadingModelImplToJson(
    _$TelemetryReadingModelImpl instance) {
  final val = <String, dynamic>{
    'timestamp': instance.timestamp,
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

_$ColdChainComplianceModelImpl _$$ColdChainComplianceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ColdChainComplianceModelImpl(
      compliancePercentage: (json['compliancePercentage'] as num).toDouble(),
      totalReadings: (json['totalReadings'] as num).toInt(),
      compliantReadings: (json['compliantReadings'] as num).toInt(),
      breachCount: (json['breachCount'] as num).toInt(),
      breaches: (json['breaches'] as List<dynamic>)
          .map(
              (e) => TemperatureBreachModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxDeviation: (json['maxDeviation'] as num).toDouble(),
      totalExposureDuration: (json['totalExposureDuration'] as num).toInt(),
      cumulativeStress: CumulativeThermalStressModel.fromJson(
          json['cumulativeStress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ColdChainComplianceModelImplToJson(
        _$ColdChainComplianceModelImpl instance) =>
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

_$TemperatureBreachModelImpl _$$TemperatureBreachModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TemperatureBreachModelImpl(
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      peakTemperature: (json['peakTemperature'] as num).toDouble(),
      durationSeconds: (json['durationSeconds'] as num).toInt(),
      severity: json['severity'] as String,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$TemperatureBreachModelImplToJson(
    _$TemperatureBreachModelImpl instance) {
  final val = <String, dynamic>{
    'startTime': instance.startTime,
    'endTime': instance.endTime,
    'peakTemperature': instance.peakTemperature,
    'durationSeconds': instance.durationSeconds,
    'severity': instance.severity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('notes', instance.notes);
  return val;
}

_$CumulativeThermalStressModelImpl _$$CumulativeThermalStressModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CumulativeThermalStressModelImpl(
      stressIndex: (json['stressIndex'] as num).toDouble(),
      predictedDegradation: (json['predictedDegradation'] as num).toDouble(),
      recommendation: json['recommendation'] as String?,
    );

Map<String, dynamic> _$$CumulativeThermalStressModelImplToJson(
    _$CumulativeThermalStressModelImpl instance) {
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
