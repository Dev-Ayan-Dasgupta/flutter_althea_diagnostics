// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_integrity_score_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SampleIntegrityScoreModel {
  double get overallScore;
  String get level;
  String get calculatedAt;
  IntegrityFactorsModel get factors;
  List<IntegrityAlertModel> get alerts;
  String? get recommendation;
  bool? get requiresRecollection;

  /// Create a copy of SampleIntegrityScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SampleIntegrityScoreModelCopyWith<SampleIntegrityScoreModel> get copyWith =>
      _$SampleIntegrityScoreModelCopyWithImpl<SampleIntegrityScoreModel>(
          this as SampleIntegrityScoreModel, _$identity);

  /// Serializes this SampleIntegrityScoreModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SampleIntegrityScoreModel &&
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
    return 'SampleIntegrityScoreModel(overallScore: $overallScore, level: $level, calculatedAt: $calculatedAt, factors: $factors, alerts: $alerts, recommendation: $recommendation, requiresRecollection: $requiresRecollection)';
  }
}

/// @nodoc
abstract mixin class $SampleIntegrityScoreModelCopyWith<$Res> {
  factory $SampleIntegrityScoreModelCopyWith(SampleIntegrityScoreModel value,
          $Res Function(SampleIntegrityScoreModel) _then) =
      _$SampleIntegrityScoreModelCopyWithImpl;
  @useResult
  $Res call(
      {double overallScore,
      String level,
      String calculatedAt,
      IntegrityFactorsModel factors,
      List<IntegrityAlertModel> alerts,
      String? recommendation,
      bool? requiresRecollection});

  $IntegrityFactorsModelCopyWith<$Res> get factors;
}

/// @nodoc
class _$SampleIntegrityScoreModelCopyWithImpl<$Res>
    implements $SampleIntegrityScoreModelCopyWith<$Res> {
  _$SampleIntegrityScoreModelCopyWithImpl(this._self, this._then);

  final SampleIntegrityScoreModel _self;
  final $Res Function(SampleIntegrityScoreModel) _then;

  /// Create a copy of SampleIntegrityScoreModel
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
              as String,
      calculatedAt: null == calculatedAt
          ? _self.calculatedAt
          : calculatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      factors: null == factors
          ? _self.factors
          : factors // ignore: cast_nullable_to_non_nullable
              as IntegrityFactorsModel,
      alerts: null == alerts
          ? _self.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<IntegrityAlertModel>,
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

  /// Create a copy of SampleIntegrityScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntegrityFactorsModelCopyWith<$Res> get factors {
    return $IntegrityFactorsModelCopyWith<$Res>(_self.factors, (value) {
      return _then(_self.copyWith(factors: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SampleIntegrityScoreModel].
extension SampleIntegrityScoreModelPatterns on SampleIntegrityScoreModel {
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
    TResult Function(_SampleIntegrityScoreModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SampleIntegrityScoreModel() when $default != null:
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
    TResult Function(_SampleIntegrityScoreModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleIntegrityScoreModel():
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
    TResult? Function(_SampleIntegrityScoreModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleIntegrityScoreModel() when $default != null:
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
            String level,
            String calculatedAt,
            IntegrityFactorsModel factors,
            List<IntegrityAlertModel> alerts,
            String? recommendation,
            bool? requiresRecollection)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SampleIntegrityScoreModel() when $default != null:
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
            String level,
            String calculatedAt,
            IntegrityFactorsModel factors,
            List<IntegrityAlertModel> alerts,
            String? recommendation,
            bool? requiresRecollection)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleIntegrityScoreModel():
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
            String level,
            String calculatedAt,
            IntegrityFactorsModel factors,
            List<IntegrityAlertModel> alerts,
            String? recommendation,
            bool? requiresRecollection)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SampleIntegrityScoreModel() when $default != null:
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
class _SampleIntegrityScoreModel implements SampleIntegrityScoreModel {
  const _SampleIntegrityScoreModel(
      {required this.overallScore,
      required this.level,
      required this.calculatedAt,
      required this.factors,
      required final List<IntegrityAlertModel> alerts,
      this.recommendation,
      this.requiresRecollection})
      : _alerts = alerts;
  factory _SampleIntegrityScoreModel.fromJson(Map<String, dynamic> json) =>
      _$SampleIntegrityScoreModelFromJson(json);

  @override
  final double overallScore;
  @override
  final String level;
  @override
  final String calculatedAt;
  @override
  final IntegrityFactorsModel factors;
  final List<IntegrityAlertModel> _alerts;
  @override
  List<IntegrityAlertModel> get alerts {
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alerts);
  }

  @override
  final String? recommendation;
  @override
  final bool? requiresRecollection;

  /// Create a copy of SampleIntegrityScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SampleIntegrityScoreModelCopyWith<_SampleIntegrityScoreModel>
      get copyWith =>
          __$SampleIntegrityScoreModelCopyWithImpl<_SampleIntegrityScoreModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SampleIntegrityScoreModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SampleIntegrityScoreModel &&
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
    return 'SampleIntegrityScoreModel(overallScore: $overallScore, level: $level, calculatedAt: $calculatedAt, factors: $factors, alerts: $alerts, recommendation: $recommendation, requiresRecollection: $requiresRecollection)';
  }
}

/// @nodoc
abstract mixin class _$SampleIntegrityScoreModelCopyWith<$Res>
    implements $SampleIntegrityScoreModelCopyWith<$Res> {
  factory _$SampleIntegrityScoreModelCopyWith(_SampleIntegrityScoreModel value,
          $Res Function(_SampleIntegrityScoreModel) _then) =
      __$SampleIntegrityScoreModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double overallScore,
      String level,
      String calculatedAt,
      IntegrityFactorsModel factors,
      List<IntegrityAlertModel> alerts,
      String? recommendation,
      bool? requiresRecollection});

  @override
  $IntegrityFactorsModelCopyWith<$Res> get factors;
}

/// @nodoc
class __$SampleIntegrityScoreModelCopyWithImpl<$Res>
    implements _$SampleIntegrityScoreModelCopyWith<$Res> {
  __$SampleIntegrityScoreModelCopyWithImpl(this._self, this._then);

  final _SampleIntegrityScoreModel _self;
  final $Res Function(_SampleIntegrityScoreModel) _then;

  /// Create a copy of SampleIntegrityScoreModel
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
    return _then(_SampleIntegrityScoreModel(
      overallScore: null == overallScore
          ? _self.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      calculatedAt: null == calculatedAt
          ? _self.calculatedAt
          : calculatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      factors: null == factors
          ? _self.factors
          : factors // ignore: cast_nullable_to_non_nullable
              as IntegrityFactorsModel,
      alerts: null == alerts
          ? _self._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<IntegrityAlertModel>,
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

  /// Create a copy of SampleIntegrityScoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntegrityFactorsModelCopyWith<$Res> get factors {
    return $IntegrityFactorsModelCopyWith<$Res>(_self.factors, (value) {
      return _then(_self.copyWith(factors: value));
    });
  }
}

/// @nodoc
mixin _$IntegrityFactorsModel {
  double get transitDelayScore;
  double get temperatureComplianceScore;
  double get handoverScore;
  double get conditionScore;
  double get timelinessScore;
  int? get transitDelayMinutes;
  double? get maxTemperatureDeviation;
  int? get numberOfHandovers;
  int? get totalTransitTime;

  /// Create a copy of IntegrityFactorsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntegrityFactorsModelCopyWith<IntegrityFactorsModel> get copyWith =>
      _$IntegrityFactorsModelCopyWithImpl<IntegrityFactorsModel>(
          this as IntegrityFactorsModel, _$identity);

  /// Serializes this IntegrityFactorsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntegrityFactorsModel &&
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
    return 'IntegrityFactorsModel(transitDelayScore: $transitDelayScore, temperatureComplianceScore: $temperatureComplianceScore, handoverScore: $handoverScore, conditionScore: $conditionScore, timelinessScore: $timelinessScore, transitDelayMinutes: $transitDelayMinutes, maxTemperatureDeviation: $maxTemperatureDeviation, numberOfHandovers: $numberOfHandovers, totalTransitTime: $totalTransitTime)';
  }
}

/// @nodoc
abstract mixin class $IntegrityFactorsModelCopyWith<$Res> {
  factory $IntegrityFactorsModelCopyWith(IntegrityFactorsModel value,
          $Res Function(IntegrityFactorsModel) _then) =
      _$IntegrityFactorsModelCopyWithImpl;
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
class _$IntegrityFactorsModelCopyWithImpl<$Res>
    implements $IntegrityFactorsModelCopyWith<$Res> {
  _$IntegrityFactorsModelCopyWithImpl(this._self, this._then);

  final IntegrityFactorsModel _self;
  final $Res Function(IntegrityFactorsModel) _then;

  /// Create a copy of IntegrityFactorsModel
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

/// Adds pattern-matching-related methods to [IntegrityFactorsModel].
extension IntegrityFactorsModelPatterns on IntegrityFactorsModel {
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
    TResult Function(_IntegrityFactorsModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IntegrityFactorsModel() when $default != null:
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
    TResult Function(_IntegrityFactorsModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntegrityFactorsModel():
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
    TResult? Function(_IntegrityFactorsModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntegrityFactorsModel() when $default != null:
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
      case _IntegrityFactorsModel() when $default != null:
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
      case _IntegrityFactorsModel():
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
      case _IntegrityFactorsModel() when $default != null:
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
class _IntegrityFactorsModel implements IntegrityFactorsModel {
  const _IntegrityFactorsModel(
      {required this.transitDelayScore,
      required this.temperatureComplianceScore,
      required this.handoverScore,
      required this.conditionScore,
      required this.timelinessScore,
      this.transitDelayMinutes,
      this.maxTemperatureDeviation,
      this.numberOfHandovers,
      this.totalTransitTime});
  factory _IntegrityFactorsModel.fromJson(Map<String, dynamic> json) =>
      _$IntegrityFactorsModelFromJson(json);

  @override
  final double transitDelayScore;
  @override
  final double temperatureComplianceScore;
  @override
  final double handoverScore;
  @override
  final double conditionScore;
  @override
  final double timelinessScore;
  @override
  final int? transitDelayMinutes;
  @override
  final double? maxTemperatureDeviation;
  @override
  final int? numberOfHandovers;
  @override
  final int? totalTransitTime;

  /// Create a copy of IntegrityFactorsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntegrityFactorsModelCopyWith<_IntegrityFactorsModel> get copyWith =>
      __$IntegrityFactorsModelCopyWithImpl<_IntegrityFactorsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntegrityFactorsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntegrityFactorsModel &&
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
    return 'IntegrityFactorsModel(transitDelayScore: $transitDelayScore, temperatureComplianceScore: $temperatureComplianceScore, handoverScore: $handoverScore, conditionScore: $conditionScore, timelinessScore: $timelinessScore, transitDelayMinutes: $transitDelayMinutes, maxTemperatureDeviation: $maxTemperatureDeviation, numberOfHandovers: $numberOfHandovers, totalTransitTime: $totalTransitTime)';
  }
}

/// @nodoc
abstract mixin class _$IntegrityFactorsModelCopyWith<$Res>
    implements $IntegrityFactorsModelCopyWith<$Res> {
  factory _$IntegrityFactorsModelCopyWith(_IntegrityFactorsModel value,
          $Res Function(_IntegrityFactorsModel) _then) =
      __$IntegrityFactorsModelCopyWithImpl;
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
class __$IntegrityFactorsModelCopyWithImpl<$Res>
    implements _$IntegrityFactorsModelCopyWith<$Res> {
  __$IntegrityFactorsModelCopyWithImpl(this._self, this._then);

  final _IntegrityFactorsModel _self;
  final $Res Function(_IntegrityFactorsModel) _then;

  /// Create a copy of IntegrityFactorsModel
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
    return _then(_IntegrityFactorsModel(
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
mixin _$IntegrityAlertModel {
  String get severity;
  String get message;
  String get type;
  String get timestamp;
  Map<String, dynamic>? get metadata;

  /// Create a copy of IntegrityAlertModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IntegrityAlertModelCopyWith<IntegrityAlertModel> get copyWith =>
      _$IntegrityAlertModelCopyWithImpl<IntegrityAlertModel>(
          this as IntegrityAlertModel, _$identity);

  /// Serializes this IntegrityAlertModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IntegrityAlertModel &&
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
    return 'IntegrityAlertModel(severity: $severity, message: $message, type: $type, timestamp: $timestamp, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $IntegrityAlertModelCopyWith<$Res> {
  factory $IntegrityAlertModelCopyWith(
          IntegrityAlertModel value, $Res Function(IntegrityAlertModel) _then) =
      _$IntegrityAlertModelCopyWithImpl;
  @useResult
  $Res call(
      {String severity,
      String message,
      String type,
      String timestamp,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$IntegrityAlertModelCopyWithImpl<$Res>
    implements $IntegrityAlertModelCopyWith<$Res> {
  _$IntegrityAlertModelCopyWithImpl(this._self, this._then);

  final IntegrityAlertModel _self;
  final $Res Function(IntegrityAlertModel) _then;

  /// Create a copy of IntegrityAlertModel
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
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [IntegrityAlertModel].
extension IntegrityAlertModelPatterns on IntegrityAlertModel {
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
    TResult Function(_IntegrityAlertModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IntegrityAlertModel() when $default != null:
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
    TResult Function(_IntegrityAlertModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntegrityAlertModel():
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
    TResult? Function(_IntegrityAlertModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntegrityAlertModel() when $default != null:
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
    TResult Function(String severity, String message, String type,
            String timestamp, Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IntegrityAlertModel() when $default != null:
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
    TResult Function(String severity, String message, String type,
            String timestamp, Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntegrityAlertModel():
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
    TResult? Function(String severity, String message, String type,
            String timestamp, Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IntegrityAlertModel() when $default != null:
        return $default(_that.severity, _that.message, _that.type,
            _that.timestamp, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _IntegrityAlertModel implements IntegrityAlertModel {
  const _IntegrityAlertModel(
      {required this.severity,
      required this.message,
      required this.type,
      required this.timestamp,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _IntegrityAlertModel.fromJson(Map<String, dynamic> json) =>
      _$IntegrityAlertModelFromJson(json);

  @override
  final String severity;
  @override
  final String message;
  @override
  final String type;
  @override
  final String timestamp;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of IntegrityAlertModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IntegrityAlertModelCopyWith<_IntegrityAlertModel> get copyWith =>
      __$IntegrityAlertModelCopyWithImpl<_IntegrityAlertModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IntegrityAlertModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntegrityAlertModel &&
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
    return 'IntegrityAlertModel(severity: $severity, message: $message, type: $type, timestamp: $timestamp, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$IntegrityAlertModelCopyWith<$Res>
    implements $IntegrityAlertModelCopyWith<$Res> {
  factory _$IntegrityAlertModelCopyWith(_IntegrityAlertModel value,
          $Res Function(_IntegrityAlertModel) _then) =
      __$IntegrityAlertModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String severity,
      String message,
      String type,
      String timestamp,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$IntegrityAlertModelCopyWithImpl<$Res>
    implements _$IntegrityAlertModelCopyWith<$Res> {
  __$IntegrityAlertModelCopyWithImpl(this._self, this._then);

  final _IntegrityAlertModel _self;
  final $Res Function(_IntegrityAlertModel) _then;

  /// Create a copy of IntegrityAlertModel
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
    return _then(_IntegrityAlertModel(
      severity: null == severity
          ? _self.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
