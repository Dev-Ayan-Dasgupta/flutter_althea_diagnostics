// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_parameter_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateParameterResultParams {
  String get resultId => throw _privateConstructorUsedError;
  String get testId => throw _privateConstructorUsedError;
  String get parameterId => throw _privateConstructorUsedError;
  ResultValue get value => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateParameterResultParamsCopyWith<UpdateParameterResultParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateParameterResultParamsCopyWith<$Res> {
  factory $UpdateParameterResultParamsCopyWith(
          UpdateParameterResultParams value,
          $Res Function(UpdateParameterResultParams) then) =
      _$UpdateParameterResultParamsCopyWithImpl<$Res,
          UpdateParameterResultParams>;
  @useResult
  $Res call(
      {String resultId,
      String testId,
      String parameterId,
      ResultValue value,
      String? notes});

  $ResultValueCopyWith<$Res> get value;
}

/// @nodoc
class _$UpdateParameterResultParamsCopyWithImpl<$Res,
        $Val extends UpdateParameterResultParams>
    implements $UpdateParameterResultParamsCopyWith<$Res> {
  _$UpdateParameterResultParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultId = null,
    Object? testId = null,
    Object? parameterId = null,
    Object? value = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as String,
      testId: null == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
      parameterId: null == parameterId
          ? _value.parameterId
          : parameterId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ResultValue,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultValueCopyWith<$Res> get value {
    return $ResultValueCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateParameterResultParamsImplCopyWith<$Res>
    implements $UpdateParameterResultParamsCopyWith<$Res> {
  factory _$$UpdateParameterResultParamsImplCopyWith(
          _$UpdateParameterResultParamsImpl value,
          $Res Function(_$UpdateParameterResultParamsImpl) then) =
      __$$UpdateParameterResultParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String resultId,
      String testId,
      String parameterId,
      ResultValue value,
      String? notes});

  @override
  $ResultValueCopyWith<$Res> get value;
}

/// @nodoc
class __$$UpdateParameterResultParamsImplCopyWithImpl<$Res>
    extends _$UpdateParameterResultParamsCopyWithImpl<$Res,
        _$UpdateParameterResultParamsImpl>
    implements _$$UpdateParameterResultParamsImplCopyWith<$Res> {
  __$$UpdateParameterResultParamsImplCopyWithImpl(
      _$UpdateParameterResultParamsImpl _value,
      $Res Function(_$UpdateParameterResultParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultId = null,
    Object? testId = null,
    Object? parameterId = null,
    Object? value = null,
    Object? notes = freezed,
  }) {
    return _then(_$UpdateParameterResultParamsImpl(
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as String,
      testId: null == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
      parameterId: null == parameterId
          ? _value.parameterId
          : parameterId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ResultValue,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateParameterResultParamsImpl
    implements _UpdateParameterResultParams {
  const _$UpdateParameterResultParamsImpl(
      {required this.resultId,
      required this.testId,
      required this.parameterId,
      required this.value,
      this.notes});

  @override
  final String resultId;
  @override
  final String testId;
  @override
  final String parameterId;
  @override
  final ResultValue value;
  @override
  final String? notes;

  @override
  String toString() {
    return 'UpdateParameterResultParams(resultId: $resultId, testId: $testId, parameterId: $parameterId, value: $value, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateParameterResultParamsImpl &&
            (identical(other.resultId, resultId) ||
                other.resultId == resultId) &&
            (identical(other.testId, testId) || other.testId == testId) &&
            (identical(other.parameterId, parameterId) ||
                other.parameterId == parameterId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, resultId, testId, parameterId, value, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateParameterResultParamsImplCopyWith<_$UpdateParameterResultParamsImpl>
      get copyWith => __$$UpdateParameterResultParamsImplCopyWithImpl<
          _$UpdateParameterResultParamsImpl>(this, _$identity);
}

abstract class _UpdateParameterResultParams
    implements UpdateParameterResultParams {
  const factory _UpdateParameterResultParams(
      {required final String resultId,
      required final String testId,
      required final String parameterId,
      required final ResultValue value,
      final String? notes}) = _$UpdateParameterResultParamsImpl;

  @override
  String get resultId;
  @override
  String get testId;
  @override
  String get parameterId;
  @override
  ResultValue get value;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$UpdateParameterResultParamsImplCopyWith<_$UpdateParameterResultParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
