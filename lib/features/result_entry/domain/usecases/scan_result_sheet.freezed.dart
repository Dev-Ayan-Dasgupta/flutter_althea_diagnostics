// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_result_sheet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScanResultSheetParams {
  String get imagePath;
  String get testId;

  /// Create a copy of ScanResultSheetParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ScanResultSheetParamsCopyWith<ScanResultSheetParams> get copyWith =>
      _$ScanResultSheetParamsCopyWithImpl<ScanResultSheetParams>(
          this as ScanResultSheetParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ScanResultSheetParams &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.testId, testId) || other.testId == testId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, testId);

  @override
  String toString() {
    return 'ScanResultSheetParams(imagePath: $imagePath, testId: $testId)';
  }
}

/// @nodoc
abstract mixin class $ScanResultSheetParamsCopyWith<$Res> {
  factory $ScanResultSheetParamsCopyWith(ScanResultSheetParams value,
          $Res Function(ScanResultSheetParams) _then) =
      _$ScanResultSheetParamsCopyWithImpl;
  @useResult
  $Res call({String imagePath, String testId});
}

/// @nodoc
class _$ScanResultSheetParamsCopyWithImpl<$Res>
    implements $ScanResultSheetParamsCopyWith<$Res> {
  _$ScanResultSheetParamsCopyWithImpl(this._self, this._then);

  final ScanResultSheetParams _self;
  final $Res Function(ScanResultSheetParams) _then;

  /// Create a copy of ScanResultSheetParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? testId = null,
  }) {
    return _then(_self.copyWith(
      imagePath: null == imagePath
          ? _self.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      testId: null == testId
          ? _self.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ScanResultSheetParams].
extension ScanResultSheetParamsPatterns on ScanResultSheetParams {
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
    TResult Function(_ScanResultSheetParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScanResultSheetParams() when $default != null:
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
    TResult Function(_ScanResultSheetParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScanResultSheetParams():
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
    TResult? Function(_ScanResultSheetParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScanResultSheetParams() when $default != null:
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
    TResult Function(String imagePath, String testId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScanResultSheetParams() when $default != null:
        return $default(_that.imagePath, _that.testId);
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
    TResult Function(String imagePath, String testId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScanResultSheetParams():
        return $default(_that.imagePath, _that.testId);
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
    TResult? Function(String imagePath, String testId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScanResultSheetParams() when $default != null:
        return $default(_that.imagePath, _that.testId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ScanResultSheetParams implements ScanResultSheetParams {
  const _ScanResultSheetParams({required this.imagePath, required this.testId});

  @override
  final String imagePath;
  @override
  final String testId;

  /// Create a copy of ScanResultSheetParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ScanResultSheetParamsCopyWith<_ScanResultSheetParams> get copyWith =>
      __$ScanResultSheetParamsCopyWithImpl<_ScanResultSheetParams>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScanResultSheetParams &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.testId, testId) || other.testId == testId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, testId);

  @override
  String toString() {
    return 'ScanResultSheetParams(imagePath: $imagePath, testId: $testId)';
  }
}

/// @nodoc
abstract mixin class _$ScanResultSheetParamsCopyWith<$Res>
    implements $ScanResultSheetParamsCopyWith<$Res> {
  factory _$ScanResultSheetParamsCopyWith(_ScanResultSheetParams value,
          $Res Function(_ScanResultSheetParams) _then) =
      __$ScanResultSheetParamsCopyWithImpl;
  @override
  @useResult
  $Res call({String imagePath, String testId});
}

/// @nodoc
class __$ScanResultSheetParamsCopyWithImpl<$Res>
    implements _$ScanResultSheetParamsCopyWith<$Res> {
  __$ScanResultSheetParamsCopyWithImpl(this._self, this._then);

  final _ScanResultSheetParams _self;
  final $Res Function(_ScanResultSheetParams) _then;

  /// Create a copy of ScanResultSheetParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? imagePath = null,
    Object? testId = null,
  }) {
    return _then(_ScanResultSheetParams(
      imagePath: null == imagePath
          ? _self.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      testId: null == testId
          ? _self.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
