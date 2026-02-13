// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab_pulse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LabPulseModel _$LabPulseModelFromJson(Map<String, dynamic> json) =>
    _LabPulseModel(
      samplesInTransit: (json['samplesInTransit'] as num).toInt(),
      samplesProcessing: (json['samplesProcessing'] as num).toInt(),
      samplesCompleted: (json['samplesCompleted'] as num).toInt(),
      samplesRejected: (json['samplesRejected'] as num).toInt(),
      tatAlerts: (json['tatAlerts'] as List<dynamic>)
          .map((e) => TatAlertModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      capacity: LabCapacityModel.fromJson(
        json['capacity'] as Map<String, dynamic>,
      ),
      trends: (json['trends'] as List<dynamic>)
          .map((e) => SampleTrendDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$LabPulseModelToJson(_LabPulseModel instance) =>
    <String, dynamic>{
      'samplesInTransit': instance.samplesInTransit,
      'samplesProcessing': instance.samplesProcessing,
      'samplesCompleted': instance.samplesCompleted,
      'samplesRejected': instance.samplesRejected,
      'tatAlerts': instance.tatAlerts,
      'capacity': instance.capacity,
      'trends': instance.trends,
      'timestamp': instance.timestamp,
    };

_TatAlertModel _$TatAlertModelFromJson(Map<String, dynamic> json) =>
    _TatAlertModel(
      sampleId: json['sampleId'] as String,
      testName: json['testName'] as String,
      remainingMinutes: (json['remainingMinutes'] as num).toInt(),
      severity: json['severity'] as String,
      deadline: json['deadline'] as String,
    );

Map<String, dynamic> _$TatAlertModelToJson(_TatAlertModel instance) =>
    <String, dynamic>{
      'sampleId': instance.sampleId,
      'testName': instance.testName,
      'remainingMinutes': instance.remainingMinutes,
      'severity': instance.severity,
      'deadline': instance.deadline,
    };

_LabCapacityModel _$LabCapacityModelFromJson(Map<String, dynamic> json) =>
    _LabCapacityModel(
      currentLoad: (json['currentLoad'] as num).toInt(),
      maxCapacity: (json['maxCapacity'] as num).toInt(),
      utilizationPercentage: (json['utilizationPercentage'] as num).toDouble(),
      availableAnalyzers: (json['availableAnalyzers'] as num).toInt(),
      totalAnalyzers: (json['totalAnalyzers'] as num).toInt(),
    );

Map<String, dynamic> _$LabCapacityModelToJson(_LabCapacityModel instance) =>
    <String, dynamic>{
      'currentLoad': instance.currentLoad,
      'maxCapacity': instance.maxCapacity,
      'utilizationPercentage': instance.utilizationPercentage,
      'availableAnalyzers': instance.availableAnalyzers,
      'totalAnalyzers': instance.totalAnalyzers,
    };

_SampleTrendDataModel _$SampleTrendDataModelFromJson(
  Map<String, dynamic> json,
) => _SampleTrendDataModel(
  timestamp: json['timestamp'] as String,
  inTransit: (json['inTransit'] as num).toInt(),
  processing: (json['processing'] as num).toInt(),
);

Map<String, dynamic> _$SampleTrendDataModelToJson(
  _SampleTrendDataModel instance,
) => <String, dynamic>{
  'timestamp': instance.timestamp,
  'inTransit': instance.inTransit,
  'processing': instance.processing,
};
