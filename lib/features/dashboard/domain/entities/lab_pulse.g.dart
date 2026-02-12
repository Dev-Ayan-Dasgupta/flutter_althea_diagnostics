// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab_pulse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LabPulseImpl _$$LabPulseImplFromJson(Map<String, dynamic> json) =>
    _$LabPulseImpl(
      samplesInTransit: (json['samplesInTransit'] as num).toInt(),
      samplesProcessing: (json['samplesProcessing'] as num).toInt(),
      samplesCompleted: (json['samplesCompleted'] as num).toInt(),
      samplesRejected: (json['samplesRejected'] as num).toInt(),
      tatAlerts: (json['tatAlerts'] as List<dynamic>)
          .map((e) => TatAlert.fromJson(e as Map<String, dynamic>))
          .toList(),
      capacity: LabCapacity.fromJson(json['capacity'] as Map<String, dynamic>),
      trends: (json['trends'] as List<dynamic>)
          .map((e) => SampleTrendData.fromJson(e as Map<String, dynamic>))
          .toList(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$LabPulseImplToJson(_$LabPulseImpl instance) =>
    <String, dynamic>{
      'samplesInTransit': instance.samplesInTransit,
      'samplesProcessing': instance.samplesProcessing,
      'samplesCompleted': instance.samplesCompleted,
      'samplesRejected': instance.samplesRejected,
      'tatAlerts': instance.tatAlerts.map((e) => e.toJson()).toList(),
      'capacity': instance.capacity.toJson(),
      'trends': instance.trends.map((e) => e.toJson()).toList(),
      'timestamp': instance.timestamp.toIso8601String(),
    };

_$TatAlertImpl _$$TatAlertImplFromJson(Map<String, dynamic> json) =>
    _$TatAlertImpl(
      sampleId: json['sampleId'] as String,
      testName: json['testName'] as String,
      remainingMinutes: (json['remainingMinutes'] as num).toInt(),
      severity: $enumDecode(_$TatSeverityEnumMap, json['severity']),
      deadline: DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$TatAlertImplToJson(_$TatAlertImpl instance) =>
    <String, dynamic>{
      'sampleId': instance.sampleId,
      'testName': instance.testName,
      'remainingMinutes': instance.remainingMinutes,
      'severity': _$TatSeverityEnumMap[instance.severity]!,
      'deadline': instance.deadline.toIso8601String(),
    };

const _$TatSeverityEnumMap = {
  TatSeverity.normal: 'normal',
  TatSeverity.amber: 'amber',
  TatSeverity.critical: 'critical',
};

_$LabCapacityImpl _$$LabCapacityImplFromJson(Map<String, dynamic> json) =>
    _$LabCapacityImpl(
      currentLoad: (json['currentLoad'] as num).toInt(),
      maxCapacity: (json['maxCapacity'] as num).toInt(),
      utilizationPercentage: (json['utilizationPercentage'] as num).toDouble(),
      availableAnalyzers: (json['availableAnalyzers'] as num).toInt(),
      totalAnalyzers: (json['totalAnalyzers'] as num).toInt(),
    );

Map<String, dynamic> _$$LabCapacityImplToJson(_$LabCapacityImpl instance) =>
    <String, dynamic>{
      'currentLoad': instance.currentLoad,
      'maxCapacity': instance.maxCapacity,
      'utilizationPercentage': instance.utilizationPercentage,
      'availableAnalyzers': instance.availableAnalyzers,
      'totalAnalyzers': instance.totalAnalyzers,
    };

_$SampleTrendDataImpl _$$SampleTrendDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SampleTrendDataImpl(
      timestamp: DateTime.parse(json['timestamp'] as String),
      inTransit: (json['inTransit'] as num).toInt(),
      processing: (json['processing'] as num).toInt(),
    );

Map<String, dynamic> _$$SampleTrendDataImplToJson(
        _$SampleTrendDataImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'inTransit': instance.inTransit,
      'processing': instance.processing,
    };
