// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_biometric_handshake.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BiometricHandshakeParams {
  String get sampleId => throw _privateConstructorUsedError;
  String get patientDeviceId => throw _privateConstructorUsedError;
  String get phlebotomistDeviceId => throw _privateConstructorUsedError;
  double get proximityDistance => throw _privateConstructorUsedError;
  int get signalStrength => throw _privateConstructorUsedError;
  GeoLocation get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BiometricHandshakeParamsCopyWith<BiometricHandshakeParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiometricHandshakeParamsCopyWith<$Res> {
  factory $BiometricHandshakeParamsCopyWith(BiometricHandshakeParams value,
          $Res Function(BiometricHandshakeParams) then) =
      _$BiometricHandshakeParamsCopyWithImpl<$Res, BiometricHandshakeParams>;
  @useResult
  $Res call(
      {String sampleId,
      String patientDeviceId,
      String phlebotomistDeviceId,
      double proximityDistance,
      int signalStrength,
      GeoLocation location});
}

/// @nodoc
class _$BiometricHandshakeParamsCopyWithImpl<$Res,
        $Val extends BiometricHandshakeParams>
    implements $BiometricHandshakeParamsCopyWith<$Res> {
  _$BiometricHandshakeParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = null,
    Object? patientDeviceId = null,
    Object? phlebotomistDeviceId = null,
    Object? proximityDistance = null,
    Object? signalStrength = null,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      patientDeviceId: null == patientDeviceId
          ? _value.patientDeviceId
          : patientDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      phlebotomistDeviceId: null == phlebotomistDeviceId
          ? _value.phlebotomistDeviceId
          : phlebotomistDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      proximityDistance: null == proximityDistance
          ? _value.proximityDistance
          : proximityDistance // ignore: cast_nullable_to_non_nullable
              as double,
      signalStrength: null == signalStrength
          ? _value.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BiometricHandshakeParamsImplCopyWith<$Res>
    implements $BiometricHandshakeParamsCopyWith<$Res> {
  factory _$$BiometricHandshakeParamsImplCopyWith(
          _$BiometricHandshakeParamsImpl value,
          $Res Function(_$BiometricHandshakeParamsImpl) then) =
      __$$BiometricHandshakeParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sampleId,
      String patientDeviceId,
      String phlebotomistDeviceId,
      double proximityDistance,
      int signalStrength,
      GeoLocation location});
}

/// @nodoc
class __$$BiometricHandshakeParamsImplCopyWithImpl<$Res>
    extends _$BiometricHandshakeParamsCopyWithImpl<$Res,
        _$BiometricHandshakeParamsImpl>
    implements _$$BiometricHandshakeParamsImplCopyWith<$Res> {
  __$$BiometricHandshakeParamsImplCopyWithImpl(
      _$BiometricHandshakeParamsImpl _value,
      $Res Function(_$BiometricHandshakeParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = null,
    Object? patientDeviceId = null,
    Object? phlebotomistDeviceId = null,
    Object? proximityDistance = null,
    Object? signalStrength = null,
    Object? location = freezed,
  }) {
    return _then(_$BiometricHandshakeParamsImpl(
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      patientDeviceId: null == patientDeviceId
          ? _value.patientDeviceId
          : patientDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      phlebotomistDeviceId: null == phlebotomistDeviceId
          ? _value.phlebotomistDeviceId
          : phlebotomistDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      proximityDistance: null == proximityDistance
          ? _value.proximityDistance
          : proximityDistance // ignore: cast_nullable_to_non_nullable
              as double,
      signalStrength: null == signalStrength
          ? _value.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
    ));
  }
}

/// @nodoc

class _$BiometricHandshakeParamsImpl implements _BiometricHandshakeParams {
  const _$BiometricHandshakeParamsImpl(
      {required this.sampleId,
      required this.patientDeviceId,
      required this.phlebotomistDeviceId,
      required this.proximityDistance,
      required this.signalStrength,
      required this.location});

  @override
  final String sampleId;
  @override
  final String patientDeviceId;
  @override
  final String phlebotomistDeviceId;
  @override
  final double proximityDistance;
  @override
  final int signalStrength;
  @override
  final GeoLocation location;

  @override
  String toString() {
    return 'BiometricHandshakeParams(sampleId: $sampleId, patientDeviceId: $patientDeviceId, phlebotomistDeviceId: $phlebotomistDeviceId, proximityDistance: $proximityDistance, signalStrength: $signalStrength, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiometricHandshakeParamsImpl &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            (identical(other.patientDeviceId, patientDeviceId) ||
                other.patientDeviceId == patientDeviceId) &&
            (identical(other.phlebotomistDeviceId, phlebotomistDeviceId) ||
                other.phlebotomistDeviceId == phlebotomistDeviceId) &&
            (identical(other.proximityDistance, proximityDistance) ||
                other.proximityDistance == proximityDistance) &&
            (identical(other.signalStrength, signalStrength) ||
                other.signalStrength == signalStrength) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      sampleId,
      patientDeviceId,
      phlebotomistDeviceId,
      proximityDistance,
      signalStrength,
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BiometricHandshakeParamsImplCopyWith<_$BiometricHandshakeParamsImpl>
      get copyWith => __$$BiometricHandshakeParamsImplCopyWithImpl<
          _$BiometricHandshakeParamsImpl>(this, _$identity);
}

abstract class _BiometricHandshakeParams implements BiometricHandshakeParams {
  const factory _BiometricHandshakeParams(
      {required final String sampleId,
      required final String patientDeviceId,
      required final String phlebotomistDeviceId,
      required final double proximityDistance,
      required final int signalStrength,
      required final GeoLocation location}) = _$BiometricHandshakeParamsImpl;

  @override
  String get sampleId;
  @override
  String get patientDeviceId;
  @override
  String get phlebotomistDeviceId;
  @override
  double get proximityDistance;
  @override
  int get signalStrength;
  @override
  GeoLocation get location;
  @override
  @JsonKey(ignore: true)
  _$$BiometricHandshakeParamsImplCopyWith<_$BiometricHandshakeParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
