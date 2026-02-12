// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_assign_phlebotomist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AutoAssignPhlebotomistParams {
  String get sampleId => throw _privateConstructorUsedError;
  GeoLocation get patientLocation => throw _privateConstructorUsedError;
  bool get isPriority => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AutoAssignPhlebotomistParamsCopyWith<AutoAssignPhlebotomistParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoAssignPhlebotomistParamsCopyWith<$Res> {
  factory $AutoAssignPhlebotomistParamsCopyWith(
          AutoAssignPhlebotomistParams value,
          $Res Function(AutoAssignPhlebotomistParams) then) =
      _$AutoAssignPhlebotomistParamsCopyWithImpl<$Res,
          AutoAssignPhlebotomistParams>;
  @useResult
  $Res call({String sampleId, GeoLocation patientLocation, bool isPriority});

  $GeoLocationCopyWith<$Res> get patientLocation;
}

/// @nodoc
class _$AutoAssignPhlebotomistParamsCopyWithImpl<$Res,
        $Val extends AutoAssignPhlebotomistParams>
    implements $AutoAssignPhlebotomistParamsCopyWith<$Res> {
  _$AutoAssignPhlebotomistParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = null,
    Object? patientLocation = null,
    Object? isPriority = null,
  }) {
    return _then(_value.copyWith(
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      patientLocation: null == patientLocation
          ? _value.patientLocation
          : patientLocation // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
      isPriority: null == isPriority
          ? _value.isPriority
          : isPriority // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res> get patientLocation {
    return $GeoLocationCopyWith<$Res>(_value.patientLocation, (value) {
      return _then(_value.copyWith(patientLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AutoAssignPhlebotomistParamsImplCopyWith<$Res>
    implements $AutoAssignPhlebotomistParamsCopyWith<$Res> {
  factory _$$AutoAssignPhlebotomistParamsImplCopyWith(
          _$AutoAssignPhlebotomistParamsImpl value,
          $Res Function(_$AutoAssignPhlebotomistParamsImpl) then) =
      __$$AutoAssignPhlebotomistParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sampleId, GeoLocation patientLocation, bool isPriority});

  @override
  $GeoLocationCopyWith<$Res> get patientLocation;
}

/// @nodoc
class __$$AutoAssignPhlebotomistParamsImplCopyWithImpl<$Res>
    extends _$AutoAssignPhlebotomistParamsCopyWithImpl<$Res,
        _$AutoAssignPhlebotomistParamsImpl>
    implements _$$AutoAssignPhlebotomistParamsImplCopyWith<$Res> {
  __$$AutoAssignPhlebotomistParamsImplCopyWithImpl(
      _$AutoAssignPhlebotomistParamsImpl _value,
      $Res Function(_$AutoAssignPhlebotomistParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = null,
    Object? patientLocation = null,
    Object? isPriority = null,
  }) {
    return _then(_$AutoAssignPhlebotomistParamsImpl(
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      patientLocation: null == patientLocation
          ? _value.patientLocation
          : patientLocation // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
      isPriority: null == isPriority
          ? _value.isPriority
          : isPriority // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AutoAssignPhlebotomistParamsImpl
    implements _AutoAssignPhlebotomistParams {
  const _$AutoAssignPhlebotomistParamsImpl(
      {required this.sampleId,
      required this.patientLocation,
      this.isPriority = false});

  @override
  final String sampleId;
  @override
  final GeoLocation patientLocation;
  @override
  @JsonKey()
  final bool isPriority;

  @override
  String toString() {
    return 'AutoAssignPhlebotomistParams(sampleId: $sampleId, patientLocation: $patientLocation, isPriority: $isPriority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoAssignPhlebotomistParamsImpl &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            (identical(other.patientLocation, patientLocation) ||
                other.patientLocation == patientLocation) &&
            (identical(other.isPriority, isPriority) ||
                other.isPriority == isPriority));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sampleId, patientLocation, isPriority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoAssignPhlebotomistParamsImplCopyWith<
          _$AutoAssignPhlebotomistParamsImpl>
      get copyWith => __$$AutoAssignPhlebotomistParamsImplCopyWithImpl<
          _$AutoAssignPhlebotomistParamsImpl>(this, _$identity);
}

abstract class _AutoAssignPhlebotomistParams
    implements AutoAssignPhlebotomistParams {
  const factory _AutoAssignPhlebotomistParams(
      {required final String sampleId,
      required final GeoLocation patientLocation,
      final bool isPriority}) = _$AutoAssignPhlebotomistParamsImpl;

  @override
  String get sampleId;
  @override
  GeoLocation get patientLocation;
  @override
  bool get isPriority;
  @override
  @JsonKey(ignore: true)
  _$$AutoAssignPhlebotomistParamsImplCopyWith<
          _$AutoAssignPhlebotomistParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
