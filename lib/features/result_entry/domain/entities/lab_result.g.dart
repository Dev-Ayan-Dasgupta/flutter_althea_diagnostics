// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LabResultImpl _$$LabResultImplFromJson(Map<String, dynamic> json) =>
    _$LabResultImpl(
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

Map<String, dynamic> _$$LabResultImplToJson(_$LabResultImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'sampleId': instance.sampleId,
    'patientAbhaId': instance.patientAbhaId,
    'orderId': instance.orderId,
    'testResults': instance.testResults.map((e) => e.toJson()).toList(),
    'status': _$ResultStatusEnumMap[instance.status]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pathologistId', instance.pathologistId);
  writeNotNull('pathologistName', instance.pathologistName);
  writeNotNull('clinicalInterpretation', instance.clinicalInterpretation);
  writeNotNull('digitalSignature', instance.digitalSignature);
  writeNotNull('signedOffAt', instance.signedOffAt?.toIso8601String());
  val['createdAt'] = instance.createdAt.toIso8601String();
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('pdfUrl', instance.pdfUrl);
  writeNotNull('pushedToAbha', instance.pushedToAbha);
  writeNotNull('abhaPushTime', instance.abhaPushTime?.toIso8601String());
  return val;
}

const _$ResultStatusEnumMap = {
  ResultStatus.pending: 'pending',
  ResultStatus.inProgress: 'inProgress',
  ResultStatus.pendingReview: 'pendingReview',
  ResultStatus.reviewed: 'reviewed',
  ResultStatus.signedOff: 'signedOff',
  ResultStatus.dispatched: 'dispatched',
};

_$TestResultImpl _$$TestResultImplFromJson(Map<String, dynamic> json) =>
    _$TestResultImpl(
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

Map<String, dynamic> _$$TestResultImplToJson(_$TestResultImpl instance) {
  final val = <String, dynamic>{
    'testId': instance.testId,
    'testName': instance.testName,
    'loincCode': instance.loincCode,
    'parameters': instance.parameters.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('methodology', instance.methodology);
  writeNotNull('specimenType', instance.specimenType);
  writeNotNull('analyzedAt', instance.analyzedAt?.toIso8601String());
  return val;
}

_$ParameterResultImpl _$$ParameterResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ParameterResultImpl(
      parameterId: json['parameterId'] as String,
      parameterName: json['parameterName'] as String,
      loincCode: json['loincCode'] as String,
      value: ResultValue.fromJson(json['value'] as Map<String, dynamic>),
      unit: json['unit'] as String,
      referenceRange: ReferenceRange.fromJson(
          json['referenceRange'] as Map<String, dynamic>),
      flag: $enumDecode(_$ResultFlagEnumMap, json['flag']),
      notes: json['notes'] as String?,
      historicalValues: (json['historicalValues'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      requiresDoubleEntry: json['requiresDoubleEntry'] as bool?,
      verifiedValue: json['verifiedValue'] as String?,
      isVerified: json['isVerified'] as bool?,
    );

Map<String, dynamic> _$$ParameterResultImplToJson(
    _$ParameterResultImpl instance) {
  final val = <String, dynamic>{
    'parameterId': instance.parameterId,
    'parameterName': instance.parameterName,
    'loincCode': instance.loincCode,
    'value': instance.value.toJson(),
    'unit': instance.unit,
    'referenceRange': instance.referenceRange.toJson(),
    'flag': _$ResultFlagEnumMap[instance.flag]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('notes', instance.notes);
  writeNotNull('historicalValues', instance.historicalValues);
  writeNotNull('requiresDoubleEntry', instance.requiresDoubleEntry);
  writeNotNull('verifiedValue', instance.verifiedValue);
  writeNotNull('isVerified', instance.isVerified);
  return val;
}

const _$ResultFlagEnumMap = {
  ResultFlag.normal: 'normal',
  ResultFlag.borderlineHigh: 'borderlineHigh',
  ResultFlag.borderlineLow: 'borderlineLow',
  ResultFlag.high: 'high',
  ResultFlag.low: 'low',
  ResultFlag.critical: 'critical',
  ResultFlag.abnormal: 'abnormal',
};

_$NumericResultValueImpl _$$NumericResultValueImplFromJson(
        Map<String, dynamic> json) =>
    _$NumericResultValueImpl(
      value: (json['value'] as num).toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NumericResultValueImplToJson(
        _$NumericResultValueImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$TextResultValueImpl _$$TextResultValueImplFromJson(
        Map<String, dynamic> json) =>
    _$TextResultValueImpl(
      value: json['value'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TextResultValueImplToJson(
        _$TextResultValueImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$RangeResultValueImpl _$$RangeResultValueImplFromJson(
        Map<String, dynamic> json) =>
    _$RangeResultValueImpl(
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RangeResultValueImplToJson(
        _$RangeResultValueImpl instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
      'runtimeType': instance.$type,
    };

_$QualitativeResultValueImpl _$$QualitativeResultValueImplFromJson(
        Map<String, dynamic> json) =>
    _$QualitativeResultValueImpl(
      value: json['value'] as String,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$QualitativeResultValueImplToJson(
    _$QualitativeResultValueImpl instance) {
  final val = <String, dynamic>{
    'value': instance.value,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('options', instance.options);
  val['runtimeType'] = instance.$type;
  return val;
}

_$ReferenceRangeImpl _$$ReferenceRangeImplFromJson(Map<String, dynamic> json) =>
    _$ReferenceRangeImpl(
      min: (json['min'] as num?)?.toDouble(),
      max: (json['max'] as num?)?.toDouble(),
      textRange: json['textRange'] as String?,
      ageGroup: json['ageGroup'] as String,
      gender: json['gender'] as String,
      condition: json['condition'] as String?,
    );

Map<String, dynamic> _$$ReferenceRangeImplToJson(
    _$ReferenceRangeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('min', instance.min);
  writeNotNull('max', instance.max);
  writeNotNull('textRange', instance.textRange);
  val['ageGroup'] = instance.ageGroup;
  val['gender'] = instance.gender;
  writeNotNull('condition', instance.condition);
  return val;
}
