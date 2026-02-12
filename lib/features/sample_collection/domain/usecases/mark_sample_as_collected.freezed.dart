// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_sample_as_collected.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MarkSampleAsCollectedParams {
  String get sampleId;
  DateTime get collectionTime;
  GeoLocation get location;
  List<String>? get imageUrls;
  String? get notes;

  /// Create a copy of MarkSampleAsCollectedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MarkSampleAsCollectedParamsCopyWith<MarkSampleAsCollectedParams>
      get copyWith => _$MarkSampleAsCollectedParamsCopyWithImpl<
              MarkSampleAsCollectedParams>(
          this as MarkSampleAsCollectedParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarkSampleAsCollectedParams &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            (identical(other.collectionTime, collectionTime) ||
                other.collectionTime == collectionTime) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.imageUrls, imageUrls) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      sampleId,
      collectionTime,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(imageUrls),
      notes);

  @override
  String toString() {
    return 'MarkSampleAsCollectedParams(sampleId: $sampleId, collectionTime: $collectionTime, location: $location, imageUrls: $imageUrls, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $MarkSampleAsCollectedParamsCopyWith<$Res> {
  factory $MarkSampleAsCollectedParamsCopyWith(
          MarkSampleAsCollectedParams value,
          $Res Function(MarkSampleAsCollectedParams) _then) =
      _$MarkSampleAsCollectedParamsCopyWithImpl;
  @useResult
  $Res call(
      {String sampleId,
      DateTime collectionTime,
      GeoLocation location,
      List<String>? imageUrls,
      String? notes});
}

/// @nodoc
class _$MarkSampleAsCollectedParamsCopyWithImpl<$Res>
    implements $MarkSampleAsCollectedParamsCopyWith<$Res> {
  _$MarkSampleAsCollectedParamsCopyWithImpl(this._self, this._then);

  final MarkSampleAsCollectedParams _self;
  final $Res Function(MarkSampleAsCollectedParams) _then;

  /// Create a copy of MarkSampleAsCollectedParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = null,
    Object? collectionTime = null,
    Object? location = freezed,
    Object? imageUrls = freezed,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      sampleId: null == sampleId
          ? _self.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionTime: null == collectionTime
          ? _self.collectionTime
          : collectionTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
      imageUrls: freezed == imageUrls
          ? _self.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MarkSampleAsCollectedParams].
extension MarkSampleAsCollectedParamsPatterns on MarkSampleAsCollectedParams {
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
    TResult Function(_MarkSampleAsCollectedParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MarkSampleAsCollectedParams() when $default != null:
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
    TResult Function(_MarkSampleAsCollectedParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkSampleAsCollectedParams():
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
    TResult? Function(_MarkSampleAsCollectedParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkSampleAsCollectedParams() when $default != null:
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
    TResult Function(String sampleId, DateTime collectionTime,
            GeoLocation location, List<String>? imageUrls, String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MarkSampleAsCollectedParams() when $default != null:
        return $default(_that.sampleId, _that.collectionTime, _that.location,
            _that.imageUrls, _that.notes);
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
    TResult Function(String sampleId, DateTime collectionTime,
            GeoLocation location, List<String>? imageUrls, String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkSampleAsCollectedParams():
        return $default(_that.sampleId, _that.collectionTime, _that.location,
            _that.imageUrls, _that.notes);
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
    TResult? Function(String sampleId, DateTime collectionTime,
            GeoLocation location, List<String>? imageUrls, String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MarkSampleAsCollectedParams() when $default != null:
        return $default(_that.sampleId, _that.collectionTime, _that.location,
            _that.imageUrls, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MarkSampleAsCollectedParams implements MarkSampleAsCollectedParams {
  const _MarkSampleAsCollectedParams(
      {required this.sampleId,
      required this.collectionTime,
      required this.location,
      final List<String>? imageUrls,
      this.notes})
      : _imageUrls = imageUrls;

  @override
  final String sampleId;
  @override
  final DateTime collectionTime;
  @override
  final GeoLocation location;
  final List<String>? _imageUrls;
  @override
  List<String>? get imageUrls {
    final value = _imageUrls;
    if (value == null) return null;
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? notes;

  /// Create a copy of MarkSampleAsCollectedParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MarkSampleAsCollectedParamsCopyWith<_MarkSampleAsCollectedParams>
      get copyWith => __$MarkSampleAsCollectedParamsCopyWithImpl<
          _MarkSampleAsCollectedParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MarkSampleAsCollectedParams &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            (identical(other.collectionTime, collectionTime) ||
                other.collectionTime == collectionTime) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      sampleId,
      collectionTime,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(_imageUrls),
      notes);

  @override
  String toString() {
    return 'MarkSampleAsCollectedParams(sampleId: $sampleId, collectionTime: $collectionTime, location: $location, imageUrls: $imageUrls, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$MarkSampleAsCollectedParamsCopyWith<$Res>
    implements $MarkSampleAsCollectedParamsCopyWith<$Res> {
  factory _$MarkSampleAsCollectedParamsCopyWith(
          _MarkSampleAsCollectedParams value,
          $Res Function(_MarkSampleAsCollectedParams) _then) =
      __$MarkSampleAsCollectedParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String sampleId,
      DateTime collectionTime,
      GeoLocation location,
      List<String>? imageUrls,
      String? notes});
}

/// @nodoc
class __$MarkSampleAsCollectedParamsCopyWithImpl<$Res>
    implements _$MarkSampleAsCollectedParamsCopyWith<$Res> {
  __$MarkSampleAsCollectedParamsCopyWithImpl(this._self, this._then);

  final _MarkSampleAsCollectedParams _self;
  final $Res Function(_MarkSampleAsCollectedParams) _then;

  /// Create a copy of MarkSampleAsCollectedParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sampleId = null,
    Object? collectionTime = null,
    Object? location = freezed,
    Object? imageUrls = freezed,
    Object? notes = freezed,
  }) {
    return _then(_MarkSampleAsCollectedParams(
      sampleId: null == sampleId
          ? _self.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      collectionTime: null == collectionTime
          ? _self.collectionTime
          : collectionTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
      imageUrls: freezed == imageUrls
          ? _self._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
