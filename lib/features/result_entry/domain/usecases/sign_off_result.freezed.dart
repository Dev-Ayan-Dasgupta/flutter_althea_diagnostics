// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_off_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignOffResultParams {
  String get resultId => throw _privateConstructorUsedError;
  String get pathologistId => throw _privateConstructorUsedError;
  String get digitalSignature => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignOffResultParamsCopyWith<SignOffResultParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOffResultParamsCopyWith<$Res> {
  factory $SignOffResultParamsCopyWith(
          SignOffResultParams value, $Res Function(SignOffResultParams) then) =
      _$SignOffResultParamsCopyWithImpl<$Res, SignOffResultParams>;
  @useResult
  $Res call({String resultId, String pathologistId, String digitalSignature});
}

/// @nodoc
class _$SignOffResultParamsCopyWithImpl<$Res, $Val extends SignOffResultParams>
    implements $SignOffResultParamsCopyWith<$Res> {
  _$SignOffResultParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultId = null,
    Object? pathologistId = null,
    Object? digitalSignature = null,
  }) {
    return _then(_value.copyWith(
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as String,
      pathologistId: null == pathologistId
          ? _value.pathologistId
          : pathologistId // ignore: cast_nullable_to_non_nullable
              as String,
      digitalSignature: null == digitalSignature
          ? _value.digitalSignature
          : digitalSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignOffResultParamsImplCopyWith<$Res>
    implements $SignOffResultParamsCopyWith<$Res> {
  factory _$$SignOffResultParamsImplCopyWith(_$SignOffResultParamsImpl value,
          $Res Function(_$SignOffResultParamsImpl) then) =
      __$$SignOffResultParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String resultId, String pathologistId, String digitalSignature});
}

/// @nodoc
class __$$SignOffResultParamsImplCopyWithImpl<$Res>
    extends _$SignOffResultParamsCopyWithImpl<$Res, _$SignOffResultParamsImpl>
    implements _$$SignOffResultParamsImplCopyWith<$Res> {
  __$$SignOffResultParamsImplCopyWithImpl(_$SignOffResultParamsImpl _value,
      $Res Function(_$SignOffResultParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultId = null,
    Object? pathologistId = null,
    Object? digitalSignature = null,
  }) {
    return _then(_$SignOffResultParamsImpl(
      resultId: null == resultId
          ? _value.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as String,
      pathologistId: null == pathologistId
          ? _value.pathologistId
          : pathologistId // ignore: cast_nullable_to_non_nullable
              as String,
      digitalSignature: null == digitalSignature
          ? _value.digitalSignature
          : digitalSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignOffResultParamsImpl implements _SignOffResultParams {
  const _$SignOffResultParamsImpl(
      {required this.resultId,
      required this.pathologistId,
      required this.digitalSignature});

  @override
  final String resultId;
  @override
  final String pathologistId;
  @override
  final String digitalSignature;

  @override
  String toString() {
    return 'SignOffResultParams(resultId: $resultId, pathologistId: $pathologistId, digitalSignature: $digitalSignature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignOffResultParamsImpl &&
            (identical(other.resultId, resultId) ||
                other.resultId == resultId) &&
            (identical(other.pathologistId, pathologistId) ||
                other.pathologistId == pathologistId) &&
            (identical(other.digitalSignature, digitalSignature) ||
                other.digitalSignature == digitalSignature));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, resultId, pathologistId, digitalSignature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignOffResultParamsImplCopyWith<_$SignOffResultParamsImpl> get copyWith =>
      __$$SignOffResultParamsImplCopyWithImpl<_$SignOffResultParamsImpl>(
          this, _$identity);
}

abstract class _SignOffResultParams implements SignOffResultParams {
  const factory _SignOffResultParams(
      {required final String resultId,
      required final String pathologistId,
      required final String digitalSignature}) = _$SignOffResultParamsImpl;

  @override
  String get resultId;
  @override
  String get pathologistId;
  @override
  String get digitalSignature;
  @override
  @JsonKey(ignore: true)
  _$$SignOffResultParamsImplCopyWith<_$SignOffResultParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
