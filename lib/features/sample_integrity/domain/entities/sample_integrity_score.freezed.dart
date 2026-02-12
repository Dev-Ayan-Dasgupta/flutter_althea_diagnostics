// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_integrity_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SampleIntegrityScore {
  double get overallScore; // 0-100
  IntegrityLevel get level;
  DateTime get calculatedAt;
  IntegrityFactors get factors;
  List<IntegrityAlert> get alerts;
  String? get recommendation;
  bool? get requiresRecollection;

  /// Create a copy of SampleIntegrityScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SampleIntegrityScoreCopyWith<SampleIntegrityScore> get copyWith =>
      _$SampleIntegrityScoreCopyWithImpl<SampleIntegrityScore>(
          this as SampleIntegrityScore, _$identity);

  /// Serializes this SampleIntegrityScore to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SampleIntegrityScore &&
            (identical(other.overallScore, overallScore) ||
                other.overallScore == overallScore) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.calculatedAt, calculatedAt) ||
                other.calculatedAt == calculatedAt) &&
            (identical(other.factors, factors) || other.factors == factors) &&
            const DeepCollectionEquality().equals(other.alerts, alerts) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            (identical(other.requiresRecollection, requiresRecollection) ||
                other.requiresRecollection == requiresRecollection));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      overallScore,
      level,
      calculatedAt,
      factors,
      const DeepCollectionEquality().hash(alerts),
      recommendation,
      requiresRecollection);

  @override
  String toString() {
    return 'SampleIntegrityScore(overallScore: $overallScore, level: $level, calculatedAt: $calculatedAt, factors: $factors, alerts: $alerts, recommendation: $recommendation, requiresRecollection: $requiresRecollection)';
  }
}

/// @nodoc
abstract mixin class $SampleIntegrityScoreCopyWith<$Res> {
  factory $SampleIntegrityScoreCopyWith(SampleIntegrityScore value,
          $Res Function(SampleIntegrityScore) _then) =
      _$SampleIntegrityScoreCopyWithImpl;
  @useResult
  $Res call(
      {double overallScore,
      IntegrityLevel level,
      DateTime calculatedAt,
      IntegrityFactors factors,
      List<IntegrityAlert> alerts,
      String? recommendation,
      bool? requiresRecollection});

  $IntegrityFactorsCopyWith<$Res> get factors;
}

/// @nodoc
class _$SampleIntegrityScoreCopyWithImpl<$Res>
    implements $SampleIntegrityScoreCopyWith<$Res> {
  _$SampleIntegrityScoreCopyWithImpl(this._self, this._then);

  final SampleIntegrityScore _self;
  final $Res Function(SampleIntegrityScore) _then;

  /// Create a copy of SampleIntegrityScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallScore = null,
    Object? level = null,
    Object? calculatedAt = null,
    Object? factors = null,
    Object? alerts = null,
    Object? recommendation = freezed,
    Object? requiresRecollection = freezed,
  }) {
    return _then(_self.copyWith(
      overallScore: null == overallScore
          ? _self.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as IntegrityLevel,
      calculatedAt: null == calculatedAt
          ? _self.calculatedAt
          : calculatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      factors: null == factors
          ? _self.factors
          : factors // ignore: cast_nullable_to_non_nullable
              as IntegrityFactors,
      alerts: null == alerts
          ? _self.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<IntegrityAlert>,
      recommendation: freezed == recommendation
          ? _self.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresRecollection: freezed == requiresRecollection
          ? _self.requiresRecollection
          : requiresRecollection // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of SampleIntegrityScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntegrityFactorsCopyWith<$Res> get factors {
    return $IntegrityFactorsCopyWith<$Res>(_self.factors, (value) {
      return _then(_self.copyWith(factors: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SampleIntegrityScore].
extension SampleIntegrityScorePatterns on SampleIntegrityScore {
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
    TResult Function(_SampleIntegrityScore value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SampleIntegrityScore() when $default != null:
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
    TResult Function(_SampleIntegrityScore value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleIntegrityScore():
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
    TResult? Function(_SampleIntegrityScore value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleIntegrityScore() when $default != null:
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
            double overallScore,
            IntegrityLevel level,
            DateTime calculatedAt,
            IntegrityFactors factors,
            List<IntegrityAlert> alerts,
            String? recommendation,
            bool? requiresRecollection)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SampleIntegrityScore() when $default != null:
        return $default(
            _that.overallScore,
            _that.level,
            _that.calculatedAt,
            _that.factors,
            _that.alerts,
            _that.recommendation,
            _that.requiresRecollection);
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
            double overallScore,
            IntegrityLevel level,
            DateTime calculatedAt,
            IntegrityFactors factors,
            List<IntegrityAlert> alerts,
            String? recommendation,
            bool? requiresRecollection)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleIntegrityScore():
        return $default(
            _that.overallScore,
            _that.level,
            _that.calculatedAt,
            _that.factors,
            _that.alerts,
            _that.recommendation,
            _that.requiresRecollection);
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
            double overallScore,
            IntegrityLevel level,
            DateTime calculatedAt,
            IntegrityFactors factors,
            List<IntegrityAlert> alerts,
            String? recommendation,
            bool? requiresRecollection)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleIntegrityScore() when $default != null:
        return $default(
            _that.overallScore,
            _that.level,
            _that.calculatedAt,
            _that.factors,
            _that.alerts,
            _that.recommendation,
            _that.requiresRecollection);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SampleIntegrityScore implements SampleIntegrityScore {
  const _SampleIntegrityScore(
      {required this.overallScore,
      required this.level,
      required this.calculatedAt,
      required this.factors,
      required final List<IntegrityAlert> alerts,
      this.recommendation,
      this.requiresRecollection})
      : _alerts = alerts;
  factory _SampleIntegrityScore.fromJson(Map<String, dynamic> json) =>
      _$SampleIntegrityScoreFromJson(json);

  @override
  final double overallScore;
// 0-100
  @override
  final IntegrityLevel level;
  @override
  final DateTime calculatedAt;
  @override
  final IntegrityFactors factors;
  final List<IntegrityAlert> _alerts;
  @override
  List<IntegrityAlert> get alerts {
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alerts);
  }

  @override
  final String? recommendation;
  @override
  final bool? requiresRecollection;

  /// Create a copy of SampleIntegrityScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SampleIntegrityScoreCopyWith<_SampleIntegrityScore> get copyWith =>
      __$SampleIntegrityScoreCopyWithImpl<_SampleIntegrityScore>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SampleIntegrityScoreToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SampleIntegrityScore &&
            (identical(other.overallScore, overallScore) ||
                other.overallScore == overallScore) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.calculatedAt, calculatedAt) ||
                other.calculatedAt == calculatedAt) &&
            (identical(other.factors, factors) || other.factors == factors) &&
            const DeepCollectionEquality().equals(other._alerts, _alerts) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            (identical(other.requiresRecollection, requiresRecollection) ||
                other.requiresRecollection == requiresRecollection));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      overallScore,
      level,
      calculatedAt,
      factors,
      const DeepCollectionEquality().hash(_alerts),
      recommendation,
      requiresRecollection);

  @override
  String toString() {
    return 'SampleIntegrityScore(overallScore: $overallScore, level: $level, calculatedAt: $calculatedAt, factors: $factors, alerts: $alerts, recommendation: $recommendation, requiresRecollection: $requiresRecollection)';
  }
}

/// @nodoc
abstract mixin class _$SampleIntegrityScoreCopyWith<$Res>
    implements $SampleIntegrityScoreCopyWith<$Res> {
  factory _$SampleIntegrityScoreCopyWith(_SampleIntegrityScore value,
          $Res Function(_SampleIntegrityScore) _then) =
      __$SampleIntegrityScoreCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double overallScore,
      IntegrityLevel level,
      DateTime calculatedAt,
      IntegrityFactors factors,
      List<IntegrityAlert> alerts,
      String? recommendation,
      bool? requiresRecollection});

  @override
  $IntegrityFactorsCopyWith<$Res> get factors;
}

/// @nodoc
class __$SampleIntegrityScoreCopyWithImpl<$Res>
    implements _$SampleIntegrityScoreCopyWith<$Res> {
  __$SampleIntegrityScoreCopyWithImpl(this._self, this._then);

  final _SampleIntegrityScore _self;
  final $Res Function(_SampleIntegrityScore) _then;

  /// Create a copy of SampleIntegrityScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? overallScore = null,
    Object? level = null,
    Object? calculatedAt = null,
    Object? factors = null,
    Object? alerts = null,
    Object? recommendation = freezed,
    Object? requiresRecollection = freezed,
  }) {
    return _then(_SampleIntegrityScore(
      overallScore: null == overallScore
          ? _self.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as IntegrityLevel,
      calculatedAt: null == calculatedAt
          ? _self.calculatedAt
          : calculatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      factors: null == factors
          ? _self.factors
          : factors // ignore: cast_nullable_to_non_nullable
              as IntegrityFactors,
      alerts: null == alerts
          ? _self._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<IntegrityAlert>,
      recommendation: freezed == recommendation
          ? _self.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresRecollection: freezed == requiresRecollection
          ? _self.requiresRecollection
          : requiresRecollection // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of SampleIntegrityScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntegrityFactorsCopyWith<$Res> get factors {
    return $IntegrityFactorsCopyWith<$Res>(_self.factors, (value) {
      return _then(_self.copyWith(factors: value));
    });
  }
}

/// @nodoc
mixin _$IntegrityFactors {
  double get transitDelayScore; // 0-100
  double get temperatureComplianceScore; // 0-100
  double get handoverScore; // 0-100
  double get conditionScore; // 0-100
  double get timelinessScore; // 0-100
  int? get transitDelayMinutes;
  double? get maxTemperatureDeviation;
  int? get numberOfHandovers;
  int? get totalTransitTime;

  /// Create a copy of IntegrityFactors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntegrityFactorsCopyWith<IntegrityFactors> get copyWith =>
      _$IntegrityFactorsCopyWithImpl<IntegrityFactors>(
          this as IntegrityFactors, _$identity);

  /// Serializes this IntegrityFactors to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntegrityFactors &&
            (identical(other.transitDelayScore, transitDelayScore) ||
                other.transitDelayScore == transitDelayScore) &&
            (identical(other.temperatureComplianceScore,
                    temperatureComplianceScore) ||
                other.temperatureComplianceScore ==
                    temperatureComplianceScore) &&
            (identical(other.handoverScore, handoverScore) ||
                other.handoverScore == handoverScore) &&
            (identical(other.conditionScore, conditionScore) ||
                other.conditionScore == conditionScore) &&
            (identical(other.timelinessScore, timelinessScore) ||
                other.timelinessScore == timelinessScore) &&
            (identical(other.transitDelayMinutes, transitDelayMinutes) ||
                other.transitDelayMinutes == transitDelayMinutes) &&
            (identical(
                    other.maxTemperatureDeviation, maxTemperatureDeviation) ||
                other.maxTemperatureDeviation == maxTemperatureDeviation) &&
            (identical(other.numberOfHandovers, numberOfHandovers) ||
                other.numberOfHandovers == numberOfHandovers) &&
            (identical(other.totalTransitTime, totalTransitTime) ||
                other.totalTransitTime == totalTransitTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      transitDelayScore,
      temperatureComplianceScore,
      handoverScore,
      conditionScore,
      timelinessScore,
      transitDelayMinutes,
      maxTemperatureDeviation,
      numberOfHandovers,
      totalTransitTime);

  @override
  String toString() {
    return 'IntegrityFactors(transitDelayScore: $transitDelayScore, temperatureComplianceScore: $temperatureComplianceScore, handoverScore: $handoverScore, conditionScore: $conditionScore, timelinessScore: $timelinessScore, transitDelayMinutes: $transitDelayMinutes, maxTemperatureDeviation: $maxTemperatureDeviation, numberOfHandovers: $numberOfHandovers, totalTransitTime: $totalTransitTime)';
  }
}

/// @nodoc
abstract mixin class $IntegrityFactorsCopyWith<$Res> {
  factory $IntegrityFactorsCopyWith(
          IntegrityFactors value, $Res Function(IntegrityFactors) _then) =
      _$IntegrityFactorsCopyWithImpl;
  @useResult
  $Res call(
      {double transitDelayScore,
      double temperatureComplianceScore,
      double handoverScore,
      double conditionScore,
      double timelinessScore,
      int? transitDelayMinutes,
      double? maxTemperatureDeviation,
      int? numberOfHandovers,
      int? totalTransitTime});
}

/// @nodoc
class _$IntegrityFactorsCopyWithImpl<$Res>
    implements $IntegrityFactorsCopyWith<$Res> {
  _$IntegrityFactorsCopyWithImpl(this._self, this._then);

  final IntegrityFactors _self;
  final $Res Function(IntegrityFactors) _then;

  /// Create a copy of IntegrityFactors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transitDelayScore = null,
    Object? temperatureComplianceScore = null,
    Object? handoverScore = null,
    Object? conditionScore = null,
    Object? timelinessScore = null,
    Object? transitDelayMinutes = freezed,
    Object? maxTemperatureDeviation = freezed,
    Object? numberOfHandovers = freezed,
    Object? totalTransitTime = freezed,
  }) {
    return _then(_self.copyWith(
      transitDelayScore: null == transitDelayScore
          ? _self.transitDelayScore
          : transitDelayScore // ignore: cast_nullable_to_non_nullable
              as double,
      temperatureComplianceScore: null == temperatureComplianceScore
          ? _self.temperatureComplianceScore
          : temperatureComplianceScore // ignore: cast_nullable_to_non_nullable
              as double,
      handoverScore: null == handoverScore
          ? _self.handoverScore
          : handoverScore // ignore: cast_nullable_to_non_nullable
              as double,
      conditionScore: null == conditionScore
          ? _self.conditionScore
          : conditionScore // ignore: cast_nullable_to_non_nullable
              as double,
      timelinessScore: null == timelinessScore
          ? _self.timelinessScore
          : timelinessScore // ignore: cast_nullable_to_non_nullable
              as double,
      transitDelayMinutes: freezed == transitDelayMinutes
          ? _self.transitDelayMinutes
          : transitDelayMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      maxTemperatureDeviation: freezed == maxTemperatureDeviation
          ? _self.maxTemperatureDeviation
          : maxTemperatureDeviation // ignore: cast_nullable_to_non_nullable
              as double?,
      numberOfHandovers: freezed == numberOfHandovers
          ? _self.numberOfHandovers
          : numberOfHandovers // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTransitTime: freezed == totalTransitTime
          ? _self.totalTransitTime
          : totalTransitTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [IntegrityFactors].
extension IntegrityFactorsPatterns on IntegrityFactors {
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
    TResult Function(_IntegrityFactors value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IntegrityFactors() when $default != null:
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
    TResult Function(_IntegrityFactors value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntegrityFactors():
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
    TResult? Function(_IntegrityFactors value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntegrityFactors() when $default != null:
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
            double transitDelayScore,
            double temperatureComplianceScore,
            double handoverScore,
            double conditionScore,
            double timelinessScore,
            int? transitDelayMinutes,
            double? maxTemperatureDeviation,
            int? numberOfHandovers,
            int? totalTransitTime)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IntegrityFactors() when $default != null:
        return $default(
            _that.transitDelayScore,
            _that.temperatureComplianceScore,
            _that.handoverScore,
            _that.conditionScore,
            _that.timelinessScore,
            _that.transitDelayMinutes,
            _that.maxTemperatureDeviation,
            _that.numberOfHandovers,
            _that.totalTransitTime);
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
            double transitDelayScore,
            double temperatureComplianceScore,
            double handoverScore,
            double conditionScore,
            double timelinessScore,
            int? transitDelayMinutes,
            double? maxTemperatureDeviation,
            int? numberOfHandovers,
            int? totalTransitTime)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntegrityFactors():
        return $default(
            _that.transitDelayScore,
            _that.temperatureComplianceScore,
            _that.handoverScore,
            _that.conditionScore,
            _that.timelinessScore,
            _that.transitDelayMinutes,
            _that.maxTemperatureDeviation,
            _that.numberOfHandovers,
            _that.totalTransitTime);
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
            double transitDelayScore,
            double temperatureComplianceScore,
            double handoverScore,
            double conditionScore,
            double timelinessScore,
            int? transitDelayMinutes,
            double? maxTemperatureDeviation,
            int? numberOfHandovers,
            int? totalTransitTime)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntegrityFactors() when $default != null:
        return $default(
            _that.transitDelayScore,
            _that.temperatureComplianceScore,
            _that.handoverScore,
            _that.conditionScore,
            _that.timelinessScore,
            _that.transitDelayMinutes,
            _that.maxTemperatureDeviation,
            _that.numberOfHandovers,
            _that.totalTransitTime);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _IntegrityFactors implements IntegrityFactors {
  const _IntegrityFactors(
      {required this.transitDelayScore,
      required this.temperatureComplianceScore,
      required this.handoverScore,
      required this.conditionScore,
      required this.timelinessScore,
      this.transitDelayMinutes,
      this.maxTemperatureDeviation,
      this.numberOfHandovers,
      this.totalTransitTime});
  factory _IntegrityFactors.fromJson(Map<String, dynamic> json) =>
      _$IntegrityFactorsFromJson(json);

  @override
  final double transitDelayScore;
// 0-100
  @override
  final double temperatureComplianceScore;
// 0-100
  @override
  final double handoverScore;
// 0-100
  @override
  final double conditionScore;
// 0-100
  @override
  final double timelinessScore;
// 0-100
  @override
  final int? transitDelayMinutes;
  @override
  final double? maxTemperatureDeviation;
  @override
  final int? numberOfHandovers;
  @override
  final int? totalTransitTime;

  /// Create a copy of IntegrityFactors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntegrityFactorsCopyWith<_IntegrityFactors> get copyWith =>
      __$IntegrityFactorsCopyWithImpl<_IntegrityFactors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntegrityFactorsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntegrityFactors &&
            (identical(other.transitDelayScore, transitDelayScore) ||
                other.transitDelayScore == transitDelayScore) &&
            (identical(other.temperatureComplianceScore,
                    temperatureComplianceScore) ||
                other.temperatureComplianceScore ==
                    temperatureComplianceScore) &&
            (identical(other.handoverScore, handoverScore) ||
                other.handoverScore == handoverScore) &&
            (identical(other.conditionScore, conditionScore) ||
                other.conditionScore == conditionScore) &&
            (identical(other.timelinessScore, timelinessScore) ||
                other.timelinessScore == timelinessScore) &&
            (identical(other.transitDelayMinutes, transitDelayMinutes) ||
                other.transitDelayMinutes == transitDelayMinutes) &&
            (identical(
                    other.maxTemperatureDeviation, maxTemperatureDeviation) ||
                other.maxTemperatureDeviation == maxTemperatureDeviation) &&
            (identical(other.numberOfHandovers, numberOfHandovers) ||
                other.numberOfHandovers == numberOfHandovers) &&
            (identical(other.totalTransitTime, totalTransitTime) ||
                other.totalTransitTime == totalTransitTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      transitDelayScore,
      temperatureComplianceScore,
      handoverScore,
      conditionScore,
      timelinessScore,
      transitDelayMinutes,
      maxTemperatureDeviation,
      numberOfHandovers,
      totalTransitTime);

  @override
  String toString() {
    return 'IntegrityFactors(transitDelayScore: $transitDelayScore, temperatureComplianceScore: $temperatureComplianceScore, handoverScore: $handoverScore, conditionScore: $conditionScore, timelinessScore: $timelinessScore, transitDelayMinutes: $transitDelayMinutes, maxTemperatureDeviation: $maxTemperatureDeviation, numberOfHandovers: $numberOfHandovers, totalTransitTime: $totalTransitTime)';
  }
}

/// @nodoc
abstract mixin class _$IntegrityFactorsCopyWith<$Res>
    implements $IntegrityFactorsCopyWith<$Res> {
  factory _$IntegrityFactorsCopyWith(
          _IntegrityFactors value, $Res Function(_IntegrityFactors) _then) =
      __$IntegrityFactorsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double transitDelayScore,
      double temperatureComplianceScore,
      double handoverScore,
      double conditionScore,
      double timelinessScore,
      int? transitDelayMinutes,
      double? maxTemperatureDeviation,
      int? numberOfHandovers,
      int? totalTransitTime});
}

/// @nodoc
class __$IntegrityFactorsCopyWithImpl<$Res>
    implements _$IntegrityFactorsCopyWith<$Res> {
  __$IntegrityFactorsCopyWithImpl(this._self, this._then);

  final _IntegrityFactors _self;
  final $Res Function(_IntegrityFactors) _then;

  /// Create a copy of IntegrityFactors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? transitDelayScore = null,
    Object? temperatureComplianceScore = null,
    Object? handoverScore = null,
    Object? conditionScore = null,
    Object? timelinessScore = null,
    Object? transitDelayMinutes = freezed,
    Object? maxTemperatureDeviation = freezed,
    Object? numberOfHandovers = freezed,
    Object? totalTransitTime = freezed,
  }) {
    return _then(_IntegrityFactors(
      transitDelayScore: null == transitDelayScore
          ? _self.transitDelayScore
          : transitDelayScore // ignore: cast_nullable_to_non_nullable
              as double,
      temperatureComplianceScore: null == temperatureComplianceScore
          ? _self.temperatureComplianceScore
          : temperatureComplianceScore // ignore: cast_nullable_to_non_nullable
              as double,
      handoverScore: null == handoverScore
          ? _self.handoverScore
          : handoverScore // ignore: cast_nullable_to_non_nullable
              as double,
      conditionScore: null == conditionScore
          ? _self.conditionScore
          : conditionScore // ignore: cast_nullable_to_non_nullable
              as double,
      timelinessScore: null == timelinessScore
          ? _self.timelinessScore
          : timelinessScore // ignore: cast_nullable_to_non_nullable
              as double,
      transitDelayMinutes: freezed == transitDelayMinutes
          ? _self.transitDelayMinutes
          : transitDelayMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      maxTemperatureDeviation: freezed == maxTemperatureDeviation
          ? _self.maxTemperatureDeviation
          : maxTemperatureDeviation // ignore: cast_nullable_to_non_nullable
              as double?,
      numberOfHandovers: freezed == numberOfHandovers
          ? _self.numberOfHandovers
          : numberOfHandovers // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTransitTime: freezed == totalTransitTime
          ? _self.totalTransitTime
          : totalTransitTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$IntegrityAlert {
  AlertSeverity get severity;
  String get message;
  AlertType get type;
  DateTime get timestamp;
  Map<String, dynamic>? get metadata;

  /// Create a copy of IntegrityAlert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntegrityAlertCopyWith<IntegrityAlert> get copyWith =>
      _$IntegrityAlertCopyWithImpl<IntegrityAlert>(
          this as IntegrityAlert, _$identity);

  /// Serializes this IntegrityAlert to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntegrityAlert &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, severity, message, type,
      timestamp, const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'IntegrityAlert(severity: $severity, message: $message, type: $type, timestamp: $timestamp, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $IntegrityAlertCopyWith<$Res> {
  factory $IntegrityAlertCopyWith(
          IntegrityAlert value, $Res Function(IntegrityAlert) _then) =
      _$IntegrityAlertCopyWithImpl;
  @useResult
  $Res call(
      {AlertSeverity severity,
      String message,
      AlertType type,
      DateTime timestamp,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$IntegrityAlertCopyWithImpl<$Res>
    implements $IntegrityAlertCopyWith<$Res> {
  _$IntegrityAlertCopyWithImpl(this._self, this._then);

  final IntegrityAlert _self;
  final $Res Function(IntegrityAlert) _then;

  /// Create a copy of IntegrityAlert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? severity = null,
    Object? message = null,
    Object? type = null,
    Object? timestamp = null,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      severity: null == severity
          ? _self.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as AlertSeverity,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as AlertType,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [IntegrityAlert].
extension IntegrityAlertPatterns on IntegrityAlert {
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
    TResult Function(_IntegrityAlert value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IntegrityAlert() when $default != null:
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
    TResult Function(_IntegrityAlert value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntegrityAlert():
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
    TResult? Function(_IntegrityAlert value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntegrityAlert() when $default != null:
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
    TResult Function(AlertSeverity severity, String message, AlertType type,
            DateTime timestamp, Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IntegrityAlert() when $default != null:
        return $default(_that.severity, _that.message, _that.type,
            _that.timestamp, _that.metadata);
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
    TResult Function(AlertSeverity severity, String message, AlertType type,
            DateTime timestamp, Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntegrityAlert():
        return $default(_that.severity, _that.message, _that.type,
            _that.timestamp, _that.metadata);
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
    TResult? Function(AlertSeverity severity, String message, AlertType type,
            DateTime timestamp, Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntegrityAlert() when $default != null:
        return $default(_that.severity, _that.message, _that.type,
            _that.timestamp, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _IntegrityAlert implements IntegrityAlert {
  const _IntegrityAlert(
      {required this.severity,
      required this.message,
      required this.type,
      required this.timestamp,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _IntegrityAlert.fromJson(Map<String, dynamic> json) =>
      _$IntegrityAlertFromJson(json);

  @override
  final AlertSeverity severity;
  @override
  final String message;
  @override
  final AlertType type;
  @override
  final DateTime timestamp;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of IntegrityAlert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntegrityAlertCopyWith<_IntegrityAlert> get copyWith =>
      __$IntegrityAlertCopyWithImpl<_IntegrityAlert>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntegrityAlertToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntegrityAlert &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, severity, message, type,
      timestamp, const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'IntegrityAlert(severity: $severity, message: $message, type: $type, timestamp: $timestamp, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$IntegrityAlertCopyWith<$Res>
    implements $IntegrityAlertCopyWith<$Res> {
  factory _$IntegrityAlertCopyWith(
          _IntegrityAlert value, $Res Function(_IntegrityAlert) _then) =
      __$IntegrityAlertCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AlertSeverity severity,
      String message,
      AlertType type,
      DateTime timestamp,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$IntegrityAlertCopyWithImpl<$Res>
    implements _$IntegrityAlertCopyWith<$Res> {
  __$IntegrityAlertCopyWithImpl(this._self, this._then);

  final _IntegrityAlert _self;
  final $Res Function(_IntegrityAlert) _then;

  /// Create a copy of IntegrityAlert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? severity = null,
    Object? message = null,
    Object? type = null,
    Object? timestamp = null,
    Object? metadata = freezed,
  }) {
    return _then(_IntegrityAlert(
      severity: null == severity
          ? _self.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as AlertSeverity,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as AlertType,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
