// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cold_chain_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ColdChainDataModel _$ColdChainDataModelFromJson(Map<String, dynamic> json) =>
    _ColdChainDataModel(
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

Map<String, dynamic> _$ColdChainDataModelToJson(_ColdChainDataModel instance) =>
    <String, dynamic>{
      'sampleId': instance.sampleId,
      'readings': instance.readings,
      'compliance': instance.compliance,
      'monitoringStartTime': instance.monitoringStartTime,
      'monitoringEndTime': instance.monitoringEndTime,
      'smartBagId': instance.smartBagId,
      'isManualLogging': instance.isManualLogging,
    };

_TelemetryReadingModel _$TelemetryReadingModelFromJson(
        Map<String, dynamic> json) =>
    _TelemetryReadingModel(
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

Map<String, dynamic> _$TelemetryReadingModelToJson(
        _TelemetryReadingModel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'shockDetected': instance.shockDetected,
      'tiltDetected': instance.tiltDetected,
      'lidOpenDetected': instance.lidOpenDetected,
      'batteryLevel': instance.batteryLevel,
      'location': instance.location,
      'deviceId': instance.deviceId,
    };

_ColdChainComplianceModel _$ColdChainComplianceModelFromJson(
        Map<String, dynamic> json) =>
    _ColdChainComplianceModel(
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

Map<String, dynamic> _$ColdChainComplianceModelToJson(
        _ColdChainComplianceModel instance) =>
    <String, dynamic>{
      'compliancePercentage': instance.compliancePercentage,
      'totalReadings': instance.totalReadings,
      'compliantReadings': instance.compliantReadings,
      'breachCount': instance.breachCount,
      'breaches': instance.breaches,
      'maxDeviation': instance.maxDeviation,
      'totalExposureDuration': instance.totalExposureDuration,
      'cumulativeStress': instance.cumulativeStress,
    };

_TemperatureBreachModel _$TemperatureBreachModelFromJson(
        Map<String, dynamic> json) =>
    _TemperatureBreachModel(
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      peakTemperature: (json['peakTemperature'] as num).toDouble(),
      durationSeconds: (json['durationSeconds'] as num).toInt(),
      severity: json['severity'] as String,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$TemperatureBreachModelToJson(
        _TemperatureBreachModel instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'peakTemperature': instance.peakTemperature,
      'durationSeconds': instance.durationSeconds,
      'severity': instance.severity,
      'notes': instance.notes,
    };

_CumulativeThermalStressModel _$CumulativeThermalStressModelFromJson(
        Map<String, dynamic> json) =>
    _CumulativeThermalStressModel(
      stressIndex: (json['stressIndex'] as num).toDouble(),
      predictedDegradation: (json['predictedDegradation'] as num).toDouble(),
      recommendation: json['recommendation'] as String?,
    );

Map<String, dynamic> _$CumulativeThermalStressModelToJson(
        _CumulativeThermalStressModel instance) =>
    <String, dynamic>{
      'stressIndex': instance.stressIndex,
      'predictedDegradation': instance.predictedDegradation,
      'recommendation': instance.recommendation,
    };
