// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab_result_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidationIssueImpl _$$ValidationIssueImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidationIssueImpl(
      field: json['field'] as String,
      message: json['message'] as String,
      severity: $enumDecode(_$ValidationSeverityEnumMap, json['severity']),
    );

Map<String, dynamic> _$$ValidationIssueImplToJson(
        _$ValidationIssueImpl instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
      'severity': _$ValidationSeverityEnumMap[instance.severity]!,
    };

const _$ValidationSeverityEnumMap = {
  ValidationSeverity.error: 'error',
  ValidationSeverity.warning: 'warning',
  ValidationSeverity.info: 'info',
};
