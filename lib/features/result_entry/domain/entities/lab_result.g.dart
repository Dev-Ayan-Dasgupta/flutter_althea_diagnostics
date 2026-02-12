// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LabResult _$LabResultFromJson(Map<String, dynamic> json) => _LabResult(
  id: json['id'] as String,
  sampleId: json['sampleId'] as String,
  patientAbhaId: json['patientAbhaId'] as String,
  orderId: json['orderId'] as String,
  testResults: (json['testResults'] as List<dynamic>)
      .map((e) => TestResult.fromJson(e as Map<String, dynamic>))
      .toList(),
  status: $enumDecode(_$ResultStatusEnumMap, json['status']),
  pathologistId: json['pathologistId'] as String?,
  pathologistName: json['pathologistName'] as String?,
  clinicalInterpretation: json['clinicalInterpretation'] as String?,
  digitalSignature: json['digitalSignature'] as String?,
  signedOffAt: json['signedOffAt'] == null
      ? null
      : DateTime.parse(json['signedOffAt'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  pdfUrl: json['pdfUrl'] as String?,
  pushedToAbha: json['pushedToAbha'] as bool?,
  abhaPushTime: json['abhaPushTime'] == null
      ? null
      : DateTime.parse(json['abhaPushTime'] as String),
);

Map<String, dynamic> _$LabResultToJson(_LabResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sampleId': instance.sampleId,
      'patientAbhaId': instance.patientAbhaId,
      'orderId': instance.orderId,
      'testResults': instance.testResults,
      'status': _$ResultStatusEnumMap[instance.status]!,
      'pathologistId': instance.pathologistId,
      'pathologistName': instance.pathologistName,
      'clinicalInterpretation': instance.clinicalInterpretation,
      'digitalSignature': instance.digitalSignature,
      'signedOffAt': instance.signedOffAt?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'pdfUrl': instance.pdfUrl,
      'pushedToAbha': instance.pushedToAbha,
      'abhaPushTime': instance.abhaPushTime?.toIso8601String(),
    };

const _$ResultStatusEnumMap = {
  ResultStatus.pending: 'pending',
  ResultStatus.inProgress: 'inProgress',
  ResultStatus.pendingReview: 'pendingReview',
  ResultStatus.reviewed: 'reviewed',
  ResultStatus.signedOff: 'signedOff',
  ResultStatus.dispatched: 'dispatched',
};

_TestResult _$TestResultFromJson(Map<String, dynamic> json) => _TestResult(
  testId: json['testId'] as String,
  testName: json['testName'] as String,
  loincCode: json['loincCode'] as String,
  parameters: (json['parameters'] as List<dynamic>)
      .map((e) => ParameterResult.fromJson(e as Map<String, dynamic>))
      .toList(),
  methodology: json['methodology'] as String?,
  specimenType: json['specimenType'] as String?,
  analyzedAt: json['analyzedAt'] == null
      ? null
      : DateTime.parse(json['analyzedAt'] as String),
);

Map<String, dynamic> _$TestResultToJson(_TestResult instance) =>
    <String, dynamic>{
      'testId': instance.testId,
      'testName': instance.testName,
      'loincCode': instance.loincCode,
      'parameters': instance.parameters,
      'methodology': instance.methodology,
      'specimenType': instance.specimenType,
      'analyzedAt': instance.analyzedAt?.toIso8601String(),
    };

_ParameterResult _$ParameterResultFromJson(Map<String, dynamic> json) =>
    _ParameterResult(
      parameterId: json['parameterId'] as String,
      parameterName: json['parameterName'] as String,
      loincCode: json['loincCode'] as String,
      value: ResultValue.fromJson(json['value'] as Map<String, dynamic>),
      unit: json['unit'] as String,
      referenceRange: ReferenceRange.fromJson(
        json['referenceRange'] as Map<String, dynamic>,
      ),
      flag: $enumDecode(_$ResultFlagEnumMap, json['flag']),
      notes: json['notes'] as String?,
      historicalValues: (json['historicalValues'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      requiresDoubleEntry: json['requiresDoubleEntry'] as bool?,
      verifiedValue: json['verifiedValue'] as String?,
      isVerified: json['isVerified'] as bool?,
    );

Map<String, dynamic> _$ParameterResultToJson(_ParameterResult instance) =>
    <String, dynamic>{
      'parameterId': instance.parameterId,
      'parameterName': instance.parameterName,
      'loincCode': instance.loincCode,
      'value': instance.value,
      'unit': instance.unit,
      'referenceRange': instance.referenceRange,
      'flag': _$ResultFlagEnumMap[instance.flag]!,
      'notes': instance.notes,
      'historicalValues': instance.historicalValues,
      'requiresDoubleEntry': instance.requiresDoubleEntry,
      'verifiedValue': instance.verifiedValue,
      'isVerified': instance.isVerified,
    };

const _$ResultFlagEnumMap = {
  ResultFlag.normal: 'normal',
  ResultFlag.borderlineHigh: 'borderlineHigh',
  ResultFlag.borderlineLow: 'borderlineLow',
  ResultFlag.high: 'high',
  ResultFlag.low: 'low',
  ResultFlag.critical: 'critical',
  ResultFlag.abnormal: 'abnormal',
};

NumericResultValue _$NumericResultValueFromJson(Map<String, dynamic> json) =>
    NumericResultValue(
      value: (json['value'] as num).toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NumericResultValueToJson(NumericResultValue instance) =>
    <String, dynamic>{'value': instance.value, 'runtimeType': instance.$type};

TextResultValue _$TextResultValueFromJson(Map<String, dynamic> json) =>
    TextResultValue(
      value: json['value'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$TextResultValueToJson(TextResultValue instance) =>
    <String, dynamic>{'value': instance.value, 'runtimeType': instance.$type};

RangeResultValue _$RangeResultValueFromJson(Map<String, dynamic> json) =>
    RangeResultValue(
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$RangeResultValueToJson(RangeResultValue instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
      'runtimeType': instance.$type,
    };

QualitativeResultValue _$QualitativeResultValueFromJson(
  Map<String, dynamic> json,
) => QualitativeResultValue(
  value: json['value'] as String,
  options: (json['options'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$QualitativeResultValueToJson(
  QualitativeResultValue instance,
) => <String, dynamic>{
  'value': instance.value,
  'options': instance.options,
  'runtimeType': instance.$type,
};

_ReferenceRange _$ReferenceRangeFromJson(Map<String, dynamic> json) =>
    _ReferenceRange(
      min: (json['min'] as num?)?.toDouble(),
      max: (json['max'] as num?)?.toDouble(),
      textRange: json['textRange'] as String?,
      ageGroup: json['ageGroup'] as String,
      gender: json['gender'] as String,
      condition: json['condition'] as String?,
    );

Map<String, dynamic> _$ReferenceRangeToJson(_ReferenceRange instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
      'textRange': instance.textRange,
      'ageGroup': instance.ageGroup,
      'gender': instance.gender,
      'condition': instance.condition,
    };
