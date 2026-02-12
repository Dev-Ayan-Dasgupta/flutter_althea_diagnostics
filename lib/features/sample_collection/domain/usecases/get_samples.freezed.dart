// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_samples.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetSamplesParams {
  SampleStatus? get status;
  DateTime? get startDate;
  DateTime? get endDate;
  int get page;
  int get limit;

  /// Create a copy of GetSamplesParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetSamplesParamsCopyWith<GetSamplesParams> get copyWith =>
      _$GetSamplesParamsCopyWithImpl<GetSamplesParams>(
          this as GetSamplesParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetSamplesParams &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      startDate,
      endDate,
      page,
      limit);

  @override
  String toString() {
    return 'GetSamplesParams(status: $status, startDate: $startDate, endDate: $endDate, page: $page, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class $GetSamplesParamsCopyWith<$Res> {
  factory $GetSamplesParamsCopyWith(
          GetSamplesParams value, $Res Function(GetSamplesParams) _then) =
      _$GetSamplesParamsCopyWithImpl;
  @useResult
  $Res call(
      {SampleStatus? status,
      DateTime? startDate,
      DateTime? endDate,
      int page,
      int limit});
}

/// @nodoc
class _$GetSamplesParamsCopyWithImpl<$Res>
    implements $GetSamplesParamsCopyWith<$Res> {
  _$GetSamplesParamsCopyWithImpl(this._self, this._then);

  final GetSamplesParams _self;
  final $Res Function(GetSamplesParams) _then;

  /// Create a copy of GetSamplesParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SampleStatus?,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [GetSamplesParams].
extension GetSamplesParamsPatterns on GetSamplesParams {
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
    TResult Function(_GetSamplesParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetSamplesParams() when $default != null:
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
    TResult Function(_GetSamplesParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSamplesParams():
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
    TResult? Function(_GetSamplesParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSamplesParams() when $default != null:
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
    TResult Function(SampleStatus? status, DateTime? startDate,
            DateTime? endDate, int page, int limit)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GetSamplesParams() when $default != null:
        return $default(_that.status, _that.startDate, _that.endDate,
            _that.page, _that.limit);
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
    TResult Function(SampleStatus? status, DateTime? startDate,
            DateTime? endDate, int page, int limit)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSamplesParams():
        return $default(_that.status, _that.startDate, _that.endDate,
            _that.page, _that.limit);
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
    TResult? Function(SampleStatus? status, DateTime? startDate,
            DateTime? endDate, int page, int limit)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GetSamplesParams() when $default != null:
        return $default(_that.status, _that.startDate, _that.endDate,
            _that.page, _that.limit);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GetSamplesParams implements GetSamplesParams {
  const _GetSamplesParams(
      {this.status,
      this.startDate,
      this.endDate,
      this.page = 1,
      this.limit = 20});

  @override
  final SampleStatus? status;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;

  /// Create a copy of GetSamplesParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetSamplesParamsCopyWith<_GetSamplesParams> get copyWith =>
      __$GetSamplesParamsCopyWithImpl<_GetSamplesParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetSamplesParams &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      startDate,
      endDate,
      page,
      limit);

  @override
  String toString() {
    return 'GetSamplesParams(status: $status, startDate: $startDate, endDate: $endDate, page: $page, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class _$GetSamplesParamsCopyWith<$Res>
    implements $GetSamplesParamsCopyWith<$Res> {
  factory _$GetSamplesParamsCopyWith(
          _GetSamplesParams value, $Res Function(_GetSamplesParams) _then) =
      __$GetSamplesParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SampleStatus? status,
      DateTime? startDate,
      DateTime? endDate,
      int page,
      int limit});
}

/// @nodoc
class __$GetSamplesParamsCopyWithImpl<$Res>
    implements _$GetSamplesParamsCopyWith<$Res> {
  __$GetSamplesParamsCopyWithImpl(this._self, this._then);

  final _GetSamplesParams _self;
  final $Res Function(_GetSamplesParams) _then;

  /// Create a copy of GetSamplesParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_GetSamplesParams(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SampleStatus?,
      startDate: freezed == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
