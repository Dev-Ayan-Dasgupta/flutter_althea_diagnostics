// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'biometric_verification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BiometricVerification _$BiometricVerificationFromJson(
    Map<String, dynamic> json) {
  return _BiometricVerification.fromJson(json);
}

/// @nodoc
mixin _$BiometricVerification {
  String get verificationId => throw _privateConstructorUsedError;
  String get patientDeviceId => throw _privateConstructorUsedError;
  String get phlebotomistDeviceId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  double get proximityDistance => throw _privateConstructorUsedError; // meters
  int get signalStrength => throw _privateConstructorUsedError; // RSSI
  String? get failureReason => throw _privateConstructorUsedError;
  int? get attemptCount => throw _privateConstructorUsedError;
  GeoLocation? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BiometricVerificationCopyWith<BiometricVerification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiometricVerificationCopyWith<$Res> {
  factory $BiometricVerificationCopyWith(BiometricVerification value,
          $Res Function(BiometricVerification) then) =
      _$BiometricVerificationCopyWithImpl<$Res, BiometricVerification>;
  @useResult
  $Res call(
      {String verificationId,
      String patientDeviceId,
      String phlebotomistDeviceId,
      DateTime timestamp,
      bool success,
      double proximityDistance,
      int signalStrength,
      String? failureReason,
      int? attemptCount,
      GeoLocation? location});

  $GeoLocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$BiometricVerificationCopyWithImpl<$Res,
        $Val extends BiometricVerification>
    implements $BiometricVerificationCopyWith<$Res> {
  _$BiometricVerificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? patientDeviceId = null,
    Object? phlebotomistDeviceId = null,
    Object? timestamp = null,
    Object? success = null,
    Object? proximityDistance = null,
    Object? signalStrength = null,
    Object? failureReason = freezed,
    Object? attemptCount = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      patientDeviceId: null == patientDeviceId
          ? _value.patientDeviceId
          : patientDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      phlebotomistDeviceId: null == phlebotomistDeviceId
          ? _value.phlebotomistDeviceId
          : phlebotomistDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      proximityDistance: null == proximityDistance
          ? _value.proximityDistance
          : proximityDistance // ignore: cast_nullable_to_non_nullable
              as double,
      signalStrength: null == signalStrength
          ? _value.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
      attemptCount: freezed == attemptCount
          ? _value.attemptCount
          : attemptCount // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $GeoLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BiometricVerificationImplCopyWith<$Res>
    implements $BiometricVerificationCopyWith<$Res> {
  factory _$$BiometricVerificationImplCopyWith(
          _$BiometricVerificationImpl value,
          $Res Function(_$BiometricVerificationImpl) then) =
      __$$BiometricVerificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String verificationId,
      String patientDeviceId,
      String phlebotomistDeviceId,
      DateTime timestamp,
      bool success,
      double proximityDistance,
      int signalStrength,
      String? failureReason,
      int? attemptCount,
      GeoLocation? location});

  @override
  $GeoLocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$BiometricVerificationImplCopyWithImpl<$Res>
    extends _$BiometricVerificationCopyWithImpl<$Res,
        _$BiometricVerificationImpl>
    implements _$$BiometricVerificationImplCopyWith<$Res> {
  __$$BiometricVerificationImplCopyWithImpl(_$BiometricVerificationImpl _value,
      $Res Function(_$BiometricVerificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? patientDeviceId = null,
    Object? phlebotomistDeviceId = null,
    Object? timestamp = null,
    Object? success = null,
    Object? proximityDistance = null,
    Object? signalStrength = null,
    Object? failureReason = freezed,
    Object? attemptCount = freezed,
    Object? location = freezed,
  }) {
    return _then(_$BiometricVerificationImpl(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      patientDeviceId: null == patientDeviceId
          ? _value.patientDeviceId
          : patientDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      phlebotomistDeviceId: null == phlebotomistDeviceId
          ? _value.phlebotomistDeviceId
          : phlebotomistDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      proximityDistance: null == proximityDistance
          ? _value.proximityDistance
          : proximityDistance // ignore: cast_nullable_to_non_nullable
              as double,
      signalStrength: null == signalStrength
          ? _value.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      failureReason: freezed == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
      attemptCount: freezed == attemptCount
          ? _value.attemptCount
          : attemptCount // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiometricVerificationImpl implements _BiometricVerification {
  const _$BiometricVerificationImpl(
      {required this.verificationId,
      required this.patientDeviceId,
      required this.phlebotomistDeviceId,
      required this.timestamp,
      required this.success,
      required this.proximityDistance,
      required this.signalStrength,
      this.failureReason,
      this.attemptCount,
      this.location});

  factory _$BiometricVerificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiometricVerificationImplFromJson(json);

  @override
  final String verificationId;
  @override
  final String patientDeviceId;
  @override
  final String phlebotomistDeviceId;
  @override
  final DateTime timestamp;
  @override
  final bool success;
  @override
  final double proximityDistance;
// meters
  @override
  final int signalStrength;
// RSSI
  @override
  final String? failureReason;
  @override
  final int? attemptCount;
  @override
  final GeoLocation? location;

  @override
  String toString() {
    return 'BiometricVerification(verificationId: $verificationId, patientDeviceId: $patientDeviceId, phlebotomistDeviceId: $phlebotomistDeviceId, timestamp: $timestamp, success: $success, proximityDistance: $proximityDistance, signalStrength: $signalStrength, failureReason: $failureReason, attemptCount: $attemptCount, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiometricVerificationImpl &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.patientDeviceId, patientDeviceId) ||
                other.patientDeviceId == patientDeviceId) &&
            (identical(other.phlebotomistDeviceId, phlebotomistDeviceId) ||
                other.phlebotomistDeviceId == phlebotomistDeviceId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.proximityDistance, proximityDistance) ||
                other.proximityDistance == proximityDistance) &&
            (identical(other.signalStrength, signalStrength) ||
                other.signalStrength == signalStrength) &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason) &&
            (identical(other.attemptCount, attemptCount) ||
                other.attemptCount == attemptCount) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      verificationId,
      patientDeviceId,
      phlebotomistDeviceId,
      timestamp,
      success,
      proximityDistance,
      signalStrength,
      failureReason,
      attemptCount,
      location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BiometricVerificationImplCopyWith<_$BiometricVerificationImpl>
      get copyWith => __$$BiometricVerificationImplCopyWithImpl<
          _$BiometricVerificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiometricVerificationImplToJson(
      this,
    );
  }
}

abstract class _BiometricVerification implements BiometricVerification {
  const factory _BiometricVerification(
      {required final String verificationId,
      required final String patientDeviceId,
      required final String phlebotomistDeviceId,
      required final DateTime timestamp,
      required final bool success,
      required final double proximityDistance,
      required final int signalStrength,
      final String? failureReason,
      final int? attemptCount,
      final GeoLocation? location}) = _$BiometricVerificationImpl;

  factory _BiometricVerification.fromJson(Map<String, dynamic> json) =
      _$BiometricVerificationImpl.fromJson;

  @override
  String get verificationId;
  @override
  String get patientDeviceId;
  @override
  String get phlebotomistDeviceId;
  @override
  DateTime get timestamp;
  @override
  bool get success;
  @override
  double get proximityDistance;
  @override // meters
  int get signalStrength;
  @override // RSSI
  String? get failureReason;
  @override
  int? get attemptCount;
  @override
  GeoLocation? get location;
  @override
  @JsonKey(ignore: true)
  _$$BiometricVerificationImplCopyWith<_$BiometricVerificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
