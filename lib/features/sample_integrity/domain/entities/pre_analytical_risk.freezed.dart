// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_analytical_risk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PreAnalyticalRiskAssessment {
  double get riskScore; // 0-100
  RiskLevel get riskLevel;
  List<RiskFactor> get factors;
  DateTime get assessedAt;
  String? get recommendation;
  bool? get requiresRecollection;
  double? get sampleViabilityProbability;

  /// Create a copy of PreAnalyticalRiskAssessment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PreAnalyticalRiskAssessmentCopyWith<PreAnalyticalRiskAssessment>
      get copyWith => _$PreAnalyticalRiskAssessmentCopyWithImpl<
              PreAnalyticalRiskAssessment>(
          this as PreAnalyticalRiskAssessment, _$identity);

  /// Serializes this PreAnalyticalRiskAssessment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PreAnalyticalRiskAssessment &&
            (identical(other.riskScore, riskScore) ||
                other.riskScore == riskScore) &&
            (identical(other.riskLevel, riskLevel) ||
                other.riskLevel == riskLevel) &&
            const DeepCollectionEquality().equals(other.factors, factors) &&
            (identical(other.assessedAt, assessedAt) ||
                other.assessedAt == assessedAt) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            (identical(other.requiresRecollection, requiresRecollection) ||
                other.requiresRecollection == requiresRecollection) &&
            (identical(other.sampleViabilityProbability,
                    sampleViabilityProbability) ||
                other.sampleViabilityProbability ==
                    sampleViabilityProbability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      riskScore,
      riskLevel,
      const DeepCollectionEquality().hash(factors),
      assessedAt,
      recommendation,
      requiresRecollection,
      sampleViabilityProbability);

  @override
  String toString() {
    return 'PreAnalyticalRiskAssessment(riskScore: $riskScore, riskLevel: $riskLevel, factors: $factors, assessedAt: $assessedAt, recommendation: $recommendation, requiresRecollection: $requiresRecollection, sampleViabilityProbability: $sampleViabilityProbability)';
  }
}

/// @nodoc
abstract mixin class $PreAnalyticalRiskAssessmentCopyWith<$Res> {
  factory $PreAnalyticalRiskAssessmentCopyWith(
          PreAnalyticalRiskAssessment value,
          $Res Function(PreAnalyticalRiskAssessment) _then) =
      _$PreAnalyticalRiskAssessmentCopyWithImpl;
  @useResult
  $Res call(
      {double riskScore,
      RiskLevel riskLevel,
      List<RiskFactor> factors,
      DateTime assessedAt,
      String? recommendation,
      bool? requiresRecollection,
      double? sampleViabilityProbability});
}

/// @nodoc
class _$PreAnalyticalRiskAssessmentCopyWithImpl<$Res>
    implements $PreAnalyticalRiskAssessmentCopyWith<$Res> {
  _$PreAnalyticalRiskAssessmentCopyWithImpl(this._self, this._then);

  final PreAnalyticalRiskAssessment _self;
  final $Res Function(PreAnalyticalRiskAssessment) _then;

  /// Create a copy of PreAnalyticalRiskAssessment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? riskScore = null,
    Object? riskLevel = null,
    Object? factors = null,
    Object? assessedAt = null,
    Object? recommendation = freezed,
    Object? requiresRecollection = freezed,
    Object? sampleViabilityProbability = freezed,
  }) {
    return _then(_self.copyWith(
      riskScore: null == riskScore
          ? _self.riskScore
          : riskScore // ignore: cast_nullable_to_non_nullable
              as double,
      riskLevel: null == riskLevel
          ? _self.riskLevel
          : riskLevel // ignore: cast_nullable_to_non_nullable
              as RiskLevel,
      factors: null == factors
          ? _self.factors
          : factors // ignore: cast_nullable_to_non_nullable
              as List<RiskFactor>,
      assessedAt: null == assessedAt
          ? _self.assessedAt
          : assessedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recommendation: freezed == recommendation
          ? _self.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresRecollection: freezed == requiresRecollection
          ? _self.requiresRecollection
          : requiresRecollection // ignore: cast_nullable_to_non_nullable
              as bool?,
      sampleViabilityProbability: freezed == sampleViabilityProbability
          ? _self.sampleViabilityProbability
          : sampleViabilityProbability // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PreAnalyticalRiskAssessment].
extension PreAnalyticalRiskAssessmentPatterns on PreAnalyticalRiskAssessment {
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
    TResult Function(_PreAnalyticalRiskAssessment value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PreAnalyticalRiskAssessment() when $default != null:
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
    TResult Function(_PreAnalyticalRiskAssessment value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreAnalyticalRiskAssessment():
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
    TResult? Function(_PreAnalyticalRiskAssessment value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreAnalyticalRiskAssessment() when $default != null:
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
            double riskScore,
            RiskLevel riskLevel,
            List<RiskFactor> factors,
            DateTime assessedAt,
            String? recommendation,
            bool? requiresRecollection,
            double? sampleViabilityProbability)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PreAnalyticalRiskAssessment() when $default != null:
        return $default(
            _that.riskScore,
            _that.riskLevel,
            _that.factors,
            _that.assessedAt,
            _that.recommendation,
            _that.requiresRecollection,
            _that.sampleViabilityProbability);
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
            double riskScore,
            RiskLevel riskLevel,
            List<RiskFactor> factors,
            DateTime assessedAt,
            String? recommendation,
            bool? requiresRecollection,
            double? sampleViabilityProbability)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreAnalyticalRiskAssessment():
        return $default(
            _that.riskScore,
            _that.riskLevel,
            _that.factors,
            _that.assessedAt,
            _that.recommendation,
            _that.requiresRecollection,
            _that.sampleViabilityProbability);
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
            double riskScore,
            RiskLevel riskLevel,
            List<RiskFactor> factors,
            DateTime assessedAt,
            String? recommendation,
            bool? requiresRecollection,
            double? sampleViabilityProbability)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreAnalyticalRiskAssessment() when $default != null:
        return $default(
            _that.riskScore,
            _that.riskLevel,
            _that.factors,
            _that.assessedAt,
            _that.recommendation,
            _that.requiresRecollection,
            _that.sampleViabilityProbability);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PreAnalyticalRiskAssessment implements PreAnalyticalRiskAssessment {
  const _PreAnalyticalRiskAssessment(
      {required this.riskScore,
      required this.riskLevel,
      required final List<RiskFactor> factors,
      required this.assessedAt,
      this.recommendation,
      this.requiresRecollection,
      this.sampleViabilityProbability})
      : _factors = factors;
  factory _PreAnalyticalRiskAssessment.fromJson(Map<String, dynamic> json) =>
      _$PreAnalyticalRiskAssessmentFromJson(json);

  @override
  final double riskScore;
// 0-100
  @override
  final RiskLevel riskLevel;
  final List<RiskFactor> _factors;
  @override
  List<RiskFactor> get factors {
    if (_factors is EqualUnmodifiableListView) return _factors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_factors);
  }

  @override
  final DateTime assessedAt;
  @override
  final String? recommendation;
  @override
  final bool? requiresRecollection;
  @override
  final double? sampleViabilityProbability;

  /// Create a copy of PreAnalyticalRiskAssessment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PreAnalyticalRiskAssessmentCopyWith<_PreAnalyticalRiskAssessment>
      get copyWith => __$PreAnalyticalRiskAssessmentCopyWithImpl<
          _PreAnalyticalRiskAssessment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PreAnalyticalRiskAssessmentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PreAnalyticalRiskAssessment &&
            (identical(other.riskScore, riskScore) ||
                other.riskScore == riskScore) &&
            (identical(other.riskLevel, riskLevel) ||
                other.riskLevel == riskLevel) &&
            const DeepCollectionEquality().equals(other._factors, _factors) &&
            (identical(other.assessedAt, assessedAt) ||
                other.assessedAt == assessedAt) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            (identical(other.requiresRecollection, requiresRecollection) ||
                other.requiresRecollection == requiresRecollection) &&
            (identical(other.sampleViabilityProbability,
                    sampleViabilityProbability) ||
                other.sampleViabilityProbability ==
                    sampleViabilityProbability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      riskScore,
      riskLevel,
      const DeepCollectionEquality().hash(_factors),
      assessedAt,
      recommendation,
      requiresRecollection,
      sampleViabilityProbability);

  @override
  String toString() {
    return 'PreAnalyticalRiskAssessment(riskScore: $riskScore, riskLevel: $riskLevel, factors: $factors, assessedAt: $assessedAt, recommendation: $recommendation, requiresRecollection: $requiresRecollection, sampleViabilityProbability: $sampleViabilityProbability)';
  }
}

/// @nodoc
abstract mixin class _$PreAnalyticalRiskAssessmentCopyWith<$Res>
    implements $PreAnalyticalRiskAssessmentCopyWith<$Res> {
  factory _$PreAnalyticalRiskAssessmentCopyWith(
          _PreAnalyticalRiskAssessment value,
          $Res Function(_PreAnalyticalRiskAssessment) _then) =
      __$PreAnalyticalRiskAssessmentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double riskScore,
      RiskLevel riskLevel,
      List<RiskFactor> factors,
      DateTime assessedAt,
      String? recommendation,
      bool? requiresRecollection,
      double? sampleViabilityProbability});
}

/// @nodoc
class __$PreAnalyticalRiskAssessmentCopyWithImpl<$Res>
    implements _$PreAnalyticalRiskAssessmentCopyWith<$Res> {
  __$PreAnalyticalRiskAssessmentCopyWithImpl(this._self, this._then);

  final _PreAnalyticalRiskAssessment _self;
  final $Res Function(_PreAnalyticalRiskAssessment) _then;

  /// Create a copy of PreAnalyticalRiskAssessment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? riskScore = null,
    Object? riskLevel = null,
    Object? factors = null,
    Object? assessedAt = null,
    Object? recommendation = freezed,
    Object? requiresRecollection = freezed,
    Object? sampleViabilityProbability = freezed,
  }) {
    return _then(_PreAnalyticalRiskAssessment(
      riskScore: null == riskScore
          ? _self.riskScore
          : riskScore // ignore: cast_nullable_to_non_nullable
              as double,
      riskLevel: null == riskLevel
          ? _self.riskLevel
          : riskLevel // ignore: cast_nullable_to_non_nullable
              as RiskLevel,
      factors: null == factors
          ? _self._factors
          : factors // ignore: cast_nullable_to_non_nullable
              as List<RiskFactor>,
      assessedAt: null == assessedAt
          ? _self.assessedAt
          : assessedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recommendation: freezed == recommendation
          ? _self.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresRecollection: freezed == requiresRecollection
          ? _self.requiresRecollection
          : requiresRecollection // ignore: cast_nullable_to_non_nullable
              as bool?,
      sampleViabilityProbability: freezed == sampleViabilityProbability
          ? _self.sampleViabilityProbability
          : sampleViabilityProbability // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
mixin _$RiskFactor {
  RiskFactorType get type;
  double get impact; // 0-100
  String get description;
  bool? get detected;
  Map<String, dynamic>? get metadata;

  /// Create a copy of RiskFactor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RiskFactorCopyWith<RiskFactor> get copyWith =>
      _$RiskFactorCopyWithImpl<RiskFactor>(this as RiskFactor, _$identity);

  /// Serializes this RiskFactor to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RiskFactor &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.impact, impact) || other.impact == impact) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.detected, detected) ||
                other.detected == detected) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, impact, description,
      detected, const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'RiskFactor(type: $type, impact: $impact, description: $description, detected: $detected, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $RiskFactorCopyWith<$Res> {
  factory $RiskFactorCopyWith(
          RiskFactor value, $Res Function(RiskFactor) _then) =
      _$RiskFactorCopyWithImpl;
  @useResult
  $Res call(
      {RiskFactorType type,
      double impact,
      String description,
      bool? detected,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$RiskFactorCopyWithImpl<$Res> implements $RiskFactorCopyWith<$Res> {
  _$RiskFactorCopyWithImpl(this._self, this._then);

  final RiskFactor _self;
  final $Res Function(RiskFactor) _then;

  /// Create a copy of RiskFactor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? impact = null,
    Object? description = null,
    Object? detected = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as RiskFactorType,
      impact: null == impact
          ? _self.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      detected: freezed == detected
          ? _self.detected
          : detected // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RiskFactor].
extension RiskFactorPatterns on RiskFactor {
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
    TResult Function(_RiskFactor value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RiskFactor() when $default != null:
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
    TResult Function(_RiskFactor value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RiskFactor():
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
    TResult? Function(_RiskFactor value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RiskFactor() when $default != null:
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
    TResult Function(RiskFactorType type, double impact, String description,
            bool? detected, Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RiskFactor() when $default != null:
        return $default(_that.type, _that.impact, _that.description,
            _that.detected, _that.metadata);
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
    TResult Function(RiskFactorType type, double impact, String description,
            bool? detected, Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RiskFactor():
        return $default(_that.type, _that.impact, _that.description,
            _that.detected, _that.metadata);
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
    TResult? Function(RiskFactorType type, double impact, String description,
            bool? detected, Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RiskFactor() when $default != null:
        return $default(_that.type, _that.impact, _that.description,
            _that.detected, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RiskFactor implements RiskFactor {
  const _RiskFactor(
      {required this.type,
      required this.impact,
      required this.description,
      this.detected,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _RiskFactor.fromJson(Map<String, dynamic> json) =>
      _$RiskFactorFromJson(json);

  @override
  final RiskFactorType type;
  @override
  final double impact;
// 0-100
  @override
  final String description;
  @override
  final bool? detected;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of RiskFactor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RiskFactorCopyWith<_RiskFactor> get copyWith =>
      __$RiskFactorCopyWithImpl<_RiskFactor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RiskFactorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RiskFactor &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.impact, impact) || other.impact == impact) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.detected, detected) ||
                other.detected == detected) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, impact, description,
      detected, const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'RiskFactor(type: $type, impact: $impact, description: $description, detected: $detected, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$RiskFactorCopyWith<$Res>
    implements $RiskFactorCopyWith<$Res> {
  factory _$RiskFactorCopyWith(
          _RiskFactor value, $Res Function(_RiskFactor) _then) =
      __$RiskFactorCopyWithImpl;
  @override
  @useResult
  $Res call(
      {RiskFactorType type,
      double impact,
      String description,
      bool? detected,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$RiskFactorCopyWithImpl<$Res> implements _$RiskFactorCopyWith<$Res> {
  __$RiskFactorCopyWithImpl(this._self, this._then);

  final _RiskFactor _self;
  final $Res Function(_RiskFactor) _then;

  /// Create a copy of RiskFactor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? impact = null,
    Object? description = null,
    Object? detected = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_RiskFactor(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as RiskFactorType,
      impact: null == impact
          ? _self.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      detected: freezed == detected
          ? _self.detected
          : detected // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
