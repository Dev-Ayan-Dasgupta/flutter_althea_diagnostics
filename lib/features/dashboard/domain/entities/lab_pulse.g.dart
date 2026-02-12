// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab_pulse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LabPulse _$LabPulseFromJson(Map<String, dynamic> json) => _LabPulse(
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

Map<String, dynamic> _$LabPulseToJson(_LabPulse instance) => <String, dynamic>{
  'samplesInTransit': instance.samplesInTransit,
  'samplesProcessing': instance.samplesProcessing,
  'samplesCompleted': instance.samplesCompleted,
  'samplesRejected': instance.samplesRejected,
  'tatAlerts': instance.tatAlerts,
  'capacity': instance.capacity,
  'trends': instance.trends,
  'timestamp': instance.timestamp.toIso8601String(),
};

_TatAlert _$TatAlertFromJson(Map<String, dynamic> json) => _TatAlert(
  sampleId: json['sampleId'] as String,
  testName: json['testName'] as String,
  remainingMinutes: (json['remainingMinutes'] as num).toInt(),
  severity: $enumDecode(_$TatSeverityEnumMap, json['severity']),
  deadline: DateTime.parse(json['deadline'] as String),
);

Map<String, dynamic> _$TatAlertToJson(_TatAlert instance) => <String, dynamic>{
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

_LabCapacity _$LabCapacityFromJson(Map<String, dynamic> json) => _LabCapacity(
  currentLoad: (json['currentLoad'] as num).toInt(),
  maxCapacity: (json['maxCapacity'] as num).toInt(),
  utilizationPercentage: (json['utilizationPercentage'] as num).toDouble(),
  availableAnalyzers: (json['availableAnalyzers'] as num).toInt(),
  totalAnalyzers: (json['totalAnalyzers'] as num).toInt(),
);

Map<String, dynamic> _$LabCapacityToJson(_LabCapacity instance) =>
    <String, dynamic>{
      'currentLoad': instance.currentLoad,
      'maxCapacity': instance.maxCapacity,
      'utilizationPercentage': instance.utilizationPercentage,
      'availableAnalyzers': instance.availableAnalyzers,
      'totalAnalyzers': instance.totalAnalyzers,
    };

_SampleTrendData _$SampleTrendDataFromJson(Map<String, dynamic> json) =>
    _SampleTrendData(
      timestamp: DateTime.parse(json['timestamp'] as String),
      inTransit: (json['inTransit'] as num).toInt(),
      processing: (json['processing'] as num).toInt(),
    );

Map<String, dynamic> _$SampleTrendDataToJson(_SampleTrendData instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'inTransit': instance.inTransit,
      'processing': instance.processing,
    };
