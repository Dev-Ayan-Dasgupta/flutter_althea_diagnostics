// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_to_abha.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PushToAbhaParams {
  String get resultId;
  String get patientAbhaId;

  /// Create a copy of PushToAbhaParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PushToAbhaParamsCopyWith<PushToAbhaParams> get copyWith =>
      _$PushToAbhaParamsCopyWithImpl<PushToAbhaParams>(
          this as PushToAbhaParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PushToAbhaParams &&
            (identical(other.resultId, resultId) ||
                other.resultId == resultId) &&
            (identical(other.patientAbhaId, patientAbhaId) ||
                other.patientAbhaId == patientAbhaId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resultId, patientAbhaId);

  @override
  String toString() {
    return 'PushToAbhaParams(resultId: $resultId, patientAbhaId: $patientAbhaId)';
  }
}

/// @nodoc
abstract mixin class $PushToAbhaParamsCopyWith<$Res> {
  factory $PushToAbhaParamsCopyWith(
          PushToAbhaParams value, $Res Function(PushToAbhaParams) _then) =
      _$PushToAbhaParamsCopyWithImpl;
  @useResult
  $Res call({String resultId, String patientAbhaId});
}

/// @nodoc
class _$PushToAbhaParamsCopyWithImpl<$Res>
    implements $PushToAbhaParamsCopyWith<$Res> {
  _$PushToAbhaParamsCopyWithImpl(this._self, this._then);

  final PushToAbhaParams _self;
  final $Res Function(PushToAbhaParams) _then;

  /// Create a copy of PushToAbhaParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultId = null,
    Object? patientAbhaId = null,
  }) {
    return _then(_self.copyWith(
      resultId: null == resultId
          ? _self.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as String,
      patientAbhaId: null == patientAbhaId
          ? _self.patientAbhaId
          : patientAbhaId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [PushToAbhaParams].
extension PushToAbhaParamsPatterns on PushToAbhaParams {
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
    TResult Function(_PushToAbhaParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PushToAbhaParams() when $default != null:
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
    TResult Function(_PushToAbhaParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PushToAbhaParams():
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
    TResult? Function(_PushToAbhaParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PushToAbhaParams() when $default != null:
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
    TResult Function(String resultId, String patientAbhaId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PushToAbhaParams() when $default != null:
        return $default(_that.resultId, _that.patientAbhaId);
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
    TResult Function(String resultId, String patientAbhaId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PushToAbhaParams():
        return $default(_that.resultId, _that.patientAbhaId);
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
    TResult? Function(String resultId, String patientAbhaId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PushToAbhaParams() when $default != null:
        return $default(_that.resultId, _that.patientAbhaId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PushToAbhaParams implements PushToAbhaParams {
  const _PushToAbhaParams(
      {required this.resultId, required this.patientAbhaId});

  @override
  final String resultId;
  @override
  final String patientAbhaId;

  /// Create a copy of PushToAbhaParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PushToAbhaParamsCopyWith<_PushToAbhaParams> get copyWith =>
      __$PushToAbhaParamsCopyWithImpl<_PushToAbhaParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PushToAbhaParams &&
            (identical(other.resultId, resultId) ||
                other.resultId == resultId) &&
            (identical(other.patientAbhaId, patientAbhaId) ||
                other.patientAbhaId == patientAbhaId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resultId, patientAbhaId);

  @override
  String toString() {
    return 'PushToAbhaParams(resultId: $resultId, patientAbhaId: $patientAbhaId)';
  }
}

/// @nodoc
abstract mixin class _$PushToAbhaParamsCopyWith<$Res>
    implements $PushToAbhaParamsCopyWith<$Res> {
  factory _$PushToAbhaParamsCopyWith(
          _PushToAbhaParams value, $Res Function(_PushToAbhaParams) _then) =
      __$PushToAbhaParamsCopyWithImpl;
  @override
  @useResult
  $Res call({String resultId, String patientAbhaId});
}

/// @nodoc
class __$PushToAbhaParamsCopyWithImpl<$Res>
    implements _$PushToAbhaParamsCopyWith<$Res> {
  __$PushToAbhaParamsCopyWithImpl(this._self, this._then);

  final _PushToAbhaParams _self;
  final $Res Function(_PushToAbhaParams) _then;

  /// Create a copy of PushToAbhaParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? resultId = null,
    Object? patientAbhaId = null,
  }) {
    return _then(_PushToAbhaParams(
      resultId: null == resultId
          ? _self.resultId
          : resultId // ignore: cast_nullable_to_non_nullable
              as String,
      patientAbhaId: null == patientAbhaId
          ? _self.patientAbhaId
          : patientAbhaId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
