// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_assign_phlebotomist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AutoAssignPhlebotomistParams {
  String get sampleId;
  GeoLocation get patientLocation;
  bool get isPriority;

  /// Create a copy of AutoAssignPhlebotomistParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AutoAssignPhlebotomistParamsCopyWith<AutoAssignPhlebotomistParams>
      get copyWith => _$AutoAssignPhlebotomistParamsCopyWithImpl<
              AutoAssignPhlebotomistParams>(
          this as AutoAssignPhlebotomistParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AutoAssignPhlebotomistParams &&
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

  @override
  String toString() {
    return 'AutoAssignPhlebotomistParams(sampleId: $sampleId, patientLocation: $patientLocation, isPriority: $isPriority)';
  }
}

/// @nodoc
abstract mixin class $AutoAssignPhlebotomistParamsCopyWith<$Res> {
  factory $AutoAssignPhlebotomistParamsCopyWith(
          AutoAssignPhlebotomistParams value,
          $Res Function(AutoAssignPhlebotomistParams) _then) =
      _$AutoAssignPhlebotomistParamsCopyWithImpl;
  @useResult
  $Res call({String sampleId, GeoLocation patientLocation, bool isPriority});

  $GeoLocationCopyWith<$Res> get patientLocation;
}

/// @nodoc
class _$AutoAssignPhlebotomistParamsCopyWithImpl<$Res>
    implements $AutoAssignPhlebotomistParamsCopyWith<$Res> {
  _$AutoAssignPhlebotomistParamsCopyWithImpl(this._self, this._then);

  final AutoAssignPhlebotomistParams _self;
  final $Res Function(AutoAssignPhlebotomistParams) _then;

  /// Create a copy of AutoAssignPhlebotomistParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = null,
    Object? patientLocation = null,
    Object? isPriority = null,
  }) {
    return _then(_self.copyWith(
      sampleId: null == sampleId
          ? _self.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      patientLocation: null == patientLocation
          ? _self.patientLocation
          : patientLocation // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
      isPriority: null == isPriority
          ? _self.isPriority
          : isPriority // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of AutoAssignPhlebotomistParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res> get patientLocation {
    return $GeoLocationCopyWith<$Res>(_self.patientLocation, (value) {
      return _then(_self.copyWith(patientLocation: value));
    });
  }
}

/// Adds pattern-matching-related methods to [AutoAssignPhlebotomistParams].
extension AutoAssignPhlebotomistParamsPatterns on AutoAssignPhlebotomistParams {
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
    TResult Function(_AutoAssignPhlebotomistParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AutoAssignPhlebotomistParams() when $default != null:
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
    TResult Function(_AutoAssignPhlebotomistParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AutoAssignPhlebotomistParams():
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
    TResult? Function(_AutoAssignPhlebotomistParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AutoAssignPhlebotomistParams() when $default != null:
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
            String sampleId, GeoLocation patientLocation, bool isPriority)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AutoAssignPhlebotomistParams() when $default != null:
        return $default(
            _that.sampleId, _that.patientLocation, _that.isPriority);
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
            String sampleId, GeoLocation patientLocation, bool isPriority)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AutoAssignPhlebotomistParams():
        return $default(
            _that.sampleId, _that.patientLocation, _that.isPriority);
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
            String sampleId, GeoLocation patientLocation, bool isPriority)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AutoAssignPhlebotomistParams() when $default != null:
        return $default(
            _that.sampleId, _that.patientLocation, _that.isPriority);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AutoAssignPhlebotomistParams implements AutoAssignPhlebotomistParams {
  const _AutoAssignPhlebotomistParams(
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

  /// Create a copy of AutoAssignPhlebotomistParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AutoAssignPhlebotomistParamsCopyWith<_AutoAssignPhlebotomistParams>
      get copyWith => __$AutoAssignPhlebotomistParamsCopyWithImpl<
          _AutoAssignPhlebotomistParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AutoAssignPhlebotomistParams &&
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

  @override
  String toString() {
    return 'AutoAssignPhlebotomistParams(sampleId: $sampleId, patientLocation: $patientLocation, isPriority: $isPriority)';
  }
}

/// @nodoc
abstract mixin class _$AutoAssignPhlebotomistParamsCopyWith<$Res>
    implements $AutoAssignPhlebotomistParamsCopyWith<$Res> {
  factory _$AutoAssignPhlebotomistParamsCopyWith(
          _AutoAssignPhlebotomistParams value,
          $Res Function(_AutoAssignPhlebotomistParams) _then) =
      __$AutoAssignPhlebotomistParamsCopyWithImpl;
  @override
  @useResult
  $Res call({String sampleId, GeoLocation patientLocation, bool isPriority});

  @override
  $GeoLocationCopyWith<$Res> get patientLocation;
}

/// @nodoc
class __$AutoAssignPhlebotomistParamsCopyWithImpl<$Res>
    implements _$AutoAssignPhlebotomistParamsCopyWith<$Res> {
  __$AutoAssignPhlebotomistParamsCopyWithImpl(this._self, this._then);

  final _AutoAssignPhlebotomistParams _self;
  final $Res Function(_AutoAssignPhlebotomistParams) _then;

  /// Create a copy of AutoAssignPhlebotomistParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sampleId = null,
    Object? patientLocation = null,
    Object? isPriority = null,
  }) {
    return _then(_AutoAssignPhlebotomistParams(
      sampleId: null == sampleId
          ? _self.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      patientLocation: null == patientLocation
          ? _self.patientLocation
          : patientLocation // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
      isPriority: null == isPriority
          ? _self.isPriority
          : isPriority // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of AutoAssignPhlebotomistParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res> get patientLocation {
    return $GeoLocationCopyWith<$Res>(_self.patientLocation, (value) {
      return _then(_self.copyWith(patientLocation: value));
    });
  }
}

// dart format on
