// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'biometric_verification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BiometricVerification {
  String get verificationId;
  String get patientDeviceId;
  String get phlebotomistDeviceId;
  DateTime get timestamp;
  bool get success;
  double get proximityDistance; // meters
  int get signalStrength; // RSSI
  String? get failureReason;
  int? get attemptCount;
  GeoLocation? get location;

  /// Create a copy of BiometricVerification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BiometricVerificationCopyWith<BiometricVerification> get copyWith =>
      _$BiometricVerificationCopyWithImpl<BiometricVerification>(
          this as BiometricVerification, _$identity);

  /// Serializes this BiometricVerification to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BiometricVerification &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'BiometricVerification(verificationId: $verificationId, patientDeviceId: $patientDeviceId, phlebotomistDeviceId: $phlebotomistDeviceId, timestamp: $timestamp, success: $success, proximityDistance: $proximityDistance, signalStrength: $signalStrength, failureReason: $failureReason, attemptCount: $attemptCount, location: $location)';
  }
}

/// @nodoc
abstract mixin class $BiometricVerificationCopyWith<$Res> {
  factory $BiometricVerificationCopyWith(BiometricVerification value,
          $Res Function(BiometricVerification) _then) =
      _$BiometricVerificationCopyWithImpl;
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
class _$BiometricVerificationCopyWithImpl<$Res>
    implements $BiometricVerificationCopyWith<$Res> {
  _$BiometricVerificationCopyWithImpl(this._self, this._then);

  final BiometricVerification _self;
  final $Res Function(BiometricVerification) _then;

  /// Create a copy of BiometricVerification
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      verificationId: null == verificationId
          ? _self.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      patientDeviceId: null == patientDeviceId
          ? _self.patientDeviceId
          : patientDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      phlebotomistDeviceId: null == phlebotomistDeviceId
          ? _self.phlebotomistDeviceId
          : phlebotomistDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      proximityDistance: null == proximityDistance
          ? _self.proximityDistance
          : proximityDistance // ignore: cast_nullable_to_non_nullable
              as double,
      signalStrength: null == signalStrength
          ? _self.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      failureReason: freezed == failureReason
          ? _self.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
      attemptCount: freezed == attemptCount
          ? _self.attemptCount
          : attemptCount // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation?,
    ));
  }

  /// Create a copy of BiometricVerification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $GeoLocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BiometricVerification].
extension BiometricVerificationPatterns on BiometricVerification {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BiometricVerification value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BiometricVerification() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BiometricVerification value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BiometricVerification():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BiometricVerification value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BiometricVerification() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String verificationId,
            String patientDeviceId,
            String phlebotomistDeviceId,
            DateTime timestamp,
            bool success,
            double proximityDistance,
            int signalStrength,
            String? failureReason,
            int? attemptCount,
            GeoLocation? location)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BiometricVerification() when $default != null:
        return $default(
            _that.verificationId,
            _that.patientDeviceId,
            _that.phlebotomistDeviceId,
            _that.timestamp,
            _that.success,
            _that.proximityDistance,
            _that.signalStrength,
            _that.failureReason,
            _that.attemptCount,
            _that.location);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String verificationId,
            String patientDeviceId,
            String phlebotomistDeviceId,
            DateTime timestamp,
            bool success,
            double proximityDistance,
            int signalStrength,
            String? failureReason,
            int? attemptCount,
            GeoLocation? location)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BiometricVerification():
        return $default(
            _that.verificationId,
            _that.patientDeviceId,
            _that.phlebotomistDeviceId,
            _that.timestamp,
            _that.success,
            _that.proximityDistance,
            _that.signalStrength,
            _that.failureReason,
            _that.attemptCount,
            _that.location);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String verificationId,
            String patientDeviceId,
            String phlebotomistDeviceId,
            DateTime timestamp,
            bool success,
            double proximityDistance,
            int signalStrength,
            String? failureReason,
            int? attemptCount,
            GeoLocation? location)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BiometricVerification() when $default != null:
        return $default(
            _that.verificationId,
            _that.patientDeviceId,
            _that.phlebotomistDeviceId,
            _that.timestamp,
            _that.success,
            _that.proximityDistance,
            _that.signalStrength,
            _that.failureReason,
            _that.attemptCount,
            _that.location);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BiometricVerification implements BiometricVerification {
  const _BiometricVerification(
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
  factory _BiometricVerification.fromJson(Map<String, dynamic> json) =>
      _$BiometricVerificationFromJson(json);

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

  /// Create a copy of BiometricVerification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BiometricVerificationCopyWith<_BiometricVerification> get copyWith =>
      __$BiometricVerificationCopyWithImpl<_BiometricVerification>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BiometricVerificationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BiometricVerification &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'BiometricVerification(verificationId: $verificationId, patientDeviceId: $patientDeviceId, phlebotomistDeviceId: $phlebotomistDeviceId, timestamp: $timestamp, success: $success, proximityDistance: $proximityDistance, signalStrength: $signalStrength, failureReason: $failureReason, attemptCount: $attemptCount, location: $location)';
  }
}

/// @nodoc
abstract mixin class _$BiometricVerificationCopyWith<$Res>
    implements $BiometricVerificationCopyWith<$Res> {
  factory _$BiometricVerificationCopyWith(_BiometricVerification value,
          $Res Function(_BiometricVerification) _then) =
      __$BiometricVerificationCopyWithImpl;
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
class __$BiometricVerificationCopyWithImpl<$Res>
    implements _$BiometricVerificationCopyWith<$Res> {
  __$BiometricVerificationCopyWithImpl(this._self, this._then);

  final _BiometricVerification _self;
  final $Res Function(_BiometricVerification) _then;

  /// Create a copy of BiometricVerification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_BiometricVerification(
      verificationId: null == verificationId
          ? _self.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      patientDeviceId: null == patientDeviceId
          ? _self.patientDeviceId
          : patientDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      phlebotomistDeviceId: null == phlebotomistDeviceId
          ? _self.phlebotomistDeviceId
          : phlebotomistDeviceId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      proximityDistance: null == proximityDistance
          ? _self.proximityDistance
          : proximityDistance // ignore: cast_nullable_to_non_nullable
              as double,
      signalStrength: null == signalStrength
          ? _self.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      failureReason: freezed == failureReason
          ? _self.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String?,
      attemptCount: freezed == attemptCount
          ? _self.attemptCount
          : attemptCount // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation?,
    ));
  }

  /// Create a copy of BiometricVerification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $GeoLocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

// dart format on
