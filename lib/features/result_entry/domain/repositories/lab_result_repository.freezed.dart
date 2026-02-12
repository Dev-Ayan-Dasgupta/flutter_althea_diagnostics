// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lab_result_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidationIssue _$ValidationIssueFromJson(Map<String, dynamic> json) {
  return _ValidationIssue.fromJson(json);
}

/// @nodoc
mixin _$ValidationIssue {
  String get field => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ValidationSeverity get severity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidationIssueCopyWith<ValidationIssue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationIssueCopyWith<$Res> {
  factory $ValidationIssueCopyWith(
          ValidationIssue value, $Res Function(ValidationIssue) then) =
      _$ValidationIssueCopyWithImpl<$Res, ValidationIssue>;
  @useResult
  $Res call({String field, String message, ValidationSeverity severity});
}

/// @nodoc
class _$ValidationIssueCopyWithImpl<$Res, $Val extends ValidationIssue>
    implements $ValidationIssueCopyWith<$Res> {
  _$ValidationIssueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? message = null,
    Object? severity = null,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ValidationSeverity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationIssueImplCopyWith<$Res>
    implements $ValidationIssueCopyWith<$Res> {
  factory _$$ValidationIssueImplCopyWith(_$ValidationIssueImpl value,
          $Res Function(_$ValidationIssueImpl) then) =
      __$$ValidationIssueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String field, String message, ValidationSeverity severity});
}

/// @nodoc
class __$$ValidationIssueImplCopyWithImpl<$Res>
    extends _$ValidationIssueCopyWithImpl<$Res, _$ValidationIssueImpl>
    implements _$$ValidationIssueImplCopyWith<$Res> {
  __$$ValidationIssueImplCopyWithImpl(
      _$ValidationIssueImpl _value, $Res Function(_$ValidationIssueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? message = null,
    Object? severity = null,
  }) {
    return _then(_$ValidationIssueImpl(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as ValidationSeverity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationIssueImpl implements _ValidationIssue {
  const _$ValidationIssueImpl(
      {required this.field, required this.message, required this.severity});

  factory _$ValidationIssueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationIssueImplFromJson(json);

  @override
  final String field;
  @override
  final String message;
  @override
  final ValidationSeverity severity;

  @override
  String toString() {
    return 'ValidationIssue(field: $field, message: $message, severity: $severity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationIssueImpl &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.severity, severity) ||
                other.severity == severity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, field, message, severity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationIssueImplCopyWith<_$ValidationIssueImpl> get copyWith =>
      __$$ValidationIssueImplCopyWithImpl<_$ValidationIssueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationIssueImplToJson(
      this,
    );
  }
}

abstract class _ValidationIssue implements ValidationIssue {
  const factory _ValidationIssue(
      {required final String field,
      required final String message,
      required final ValidationSeverity severity}) = _$ValidationIssueImpl;

  factory _ValidationIssue.fromJson(Map<String, dynamic> json) =
      _$ValidationIssueImpl.fromJson;

  @override
  String get field;
  @override
  String get message;
  @override
  ValidationSeverity get severity;
  @override
  @JsonKey(ignore: true)
  _$$ValidationIssueImplCopyWith<_$ValidationIssueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
