// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_to_abha.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PushToAbhaParams {
  String get resultId => throw _privateConstructorUsedError;
  String get patientAbhaId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PushToAbhaParamsCopyWith<PushToAbhaParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushToAbhaParamsCopyWith<$Res> {
  factory $PushToAbhaParamsCopyWith(
          PushToAbhaParams value, $Res Function(PushToAbhaParams) then) =
      _$PushToAbhaParamsCopyWithImpl<$Res, PushToAbhaParams>;
  @useResult
  $Res call({String resultId, String patientAbhaId});
}

/// @nodoc
class _$PushToAbhaParamsCopyWithImpl<$Res, $Val extends PushToAbhaParams>
    implements $PushToAbhaParamsCopyWith<$Res> {
  _$PushToAbhaParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultId = null,
    Object? patientAbhaId = null,
  }) {
    return _then(_value.copyWith(
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as String,
      patientAbhaId: null == patientAbhaId
          ? _value.patientAbhaId
          : patientAbhaId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PushToAbhaParamsImplCopyWith<$Res>
    implements $PushToAbhaParamsCopyWith<$Res> {
  factory _$$PushToAbhaParamsImplCopyWith(_$PushToAbhaParamsImpl value,
          $Res Function(_$PushToAbhaParamsImpl) then) =
      __$$PushToAbhaParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String resultId, String patientAbhaId});
}

/// @nodoc
class __$$PushToAbhaParamsImplCopyWithImpl<$Res>
    extends _$PushToAbhaParamsCopyWithImpl<$Res, _$PushToAbhaParamsImpl>
    implements _$$PushToAbhaParamsImplCopyWith<$Res> {
  __$$PushToAbhaParamsImplCopyWithImpl(_$PushToAbhaParamsImpl _value,
      $Res Function(_$PushToAbhaParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultId = null,
    Object? patientAbhaId = null,
  }) {
    return _then(_$PushToAbhaParamsImpl(
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as String,
      patientAbhaId: null == patientAbhaId
          ? _value.patientAbhaId
          : patientAbhaId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PushToAbhaParamsImpl implements _PushToAbhaParams {
  const _$PushToAbhaParamsImpl(
      {required this.resultId, required this.patientAbhaId});

  @override
  final String resultId;
  @override
  final String patientAbhaId;

  @override
  String toString() {
    return 'PushToAbhaParams(resultId: $resultId, patientAbhaId: $patientAbhaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushToAbhaParamsImpl &&
            (identical(other.resultId, resultId) ||
                other.resultId == resultId) &&
            (identical(other.patientAbhaId, patientAbhaId) ||
                other.patientAbhaId == patientAbhaId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resultId, patientAbhaId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PushToAbhaParamsImplCopyWith<_$PushToAbhaParamsImpl> get copyWith =>
      __$$PushToAbhaParamsImplCopyWithImpl<_$PushToAbhaParamsImpl>(
          this, _$identity);
}

abstract class _PushToAbhaParams implements PushToAbhaParams {
  const factory _PushToAbhaParams(
      {required final String resultId,
      required final String patientAbhaId}) = _$PushToAbhaParamsImpl;

  @override
  String get resultId;
  @override
  String get patientAbhaId;
  @override
  @JsonKey(ignore: true)
  _$$PushToAbhaParamsImplCopyWith<_$PushToAbhaParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
