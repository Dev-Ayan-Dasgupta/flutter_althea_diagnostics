// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_analytical_risk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreAnalyticalRiskAssessment _$PreAnalyticalRiskAssessmentFromJson(
    Map<String, dynamic> json) {
  return _PreAnalyticalRiskAssessment.fromJson(json);
}

/// @nodoc
mixin _$PreAnalyticalRiskAssessment {
  double get riskScore => throw _privateConstructorUsedError; // 0-100
  RiskLevel get riskLevel => throw _privateConstructorUsedError;
  List<RiskFactor> get factors => throw _privateConstructorUsedError;
  DateTime get assessedAt => throw _privateConstructorUsedError;
  String? get recommendation => throw _privateConstructorUsedError;
  bool? get requiresRecollection => throw _privateConstructorUsedError;
  double? get sampleViabilityProbability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreAnalyticalRiskAssessmentCopyWith<PreAnalyticalRiskAssessment>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreAnalyticalRiskAssessmentCopyWith<$Res> {
  factory $PreAnalyticalRiskAssessmentCopyWith(
          PreAnalyticalRiskAssessment value,
          $Res Function(PreAnalyticalRiskAssessment) then) =
      _$PreAnalyticalRiskAssessmentCopyWithImpl<$Res,
          PreAnalyticalRiskAssessment>;
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
class _$PreAnalyticalRiskAssessmentCopyWithImpl<$Res,
        $Val extends PreAnalyticalRiskAssessment>
    implements $PreAnalyticalRiskAssessmentCopyWith<$Res> {
  _$PreAnalyticalRiskAssessmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      riskScore: null == riskScore
          ? _value.riskScore
          : riskScore // ignore: cast_nullable_to_non_nullable
              as double,
      riskLevel: null == riskLevel
          ? _value.riskLevel
          : riskLevel // ignore: cast_nullable_to_non_nullable
              as RiskLevel,
      factors: null == factors
          ? _value.factors
          : factors // ignore: cast_nullable_to_non_nullable
              as List<RiskFactor>,
      assessedAt: null == assessedAt
          ? _value.assessedAt
          : assessedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recommendation: freezed == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresRecollection: freezed == requiresRecollection
          ? _value.requiresRecollection
          : requiresRecollection // ignore: cast_nullable_to_non_nullable
              as bool?,
      sampleViabilityProbability: freezed == sampleViabilityProbability
          ? _value.sampleViabilityProbability
          : sampleViabilityProbability // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreAnalyticalRiskAssessmentImplCopyWith<$Res>
    implements $PreAnalyticalRiskAssessmentCopyWith<$Res> {
  factory _$$PreAnalyticalRiskAssessmentImplCopyWith(
          _$PreAnalyticalRiskAssessmentImpl value,
          $Res Function(_$PreAnalyticalRiskAssessmentImpl) then) =
      __$$PreAnalyticalRiskAssessmentImplCopyWithImpl<$Res>;
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
class __$$PreAnalyticalRiskAssessmentImplCopyWithImpl<$Res>
    extends _$PreAnalyticalRiskAssessmentCopyWithImpl<$Res,
        _$PreAnalyticalRiskAssessmentImpl>
    implements _$$PreAnalyticalRiskAssessmentImplCopyWith<$Res> {
  __$$PreAnalyticalRiskAssessmentImplCopyWithImpl(
      _$PreAnalyticalRiskAssessmentImpl _value,
      $Res Function(_$PreAnalyticalRiskAssessmentImpl) _then)
      : super(_value, _then);

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
    return _then(_$PreAnalyticalRiskAssessmentImpl(
      riskScore: null == riskScore
          ? _value.riskScore
          : riskScore // ignore: cast_nullable_to_non_nullable
              as double,
      riskLevel: null == riskLevel
          ? _value.riskLevel
          : riskLevel // ignore: cast_nullable_to_non_nullable
              as RiskLevel,
      factors: null == factors
          ? _value._factors
          : factors // ignore: cast_nullable_to_non_nullable
              as List<RiskFactor>,
      assessedAt: null == assessedAt
          ? _value.assessedAt
          : assessedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recommendation: freezed == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresRecollection: freezed == requiresRecollection
          ? _value.requiresRecollection
          : requiresRecollection // ignore: cast_nullable_to_non_nullable
              as bool?,
      sampleViabilityProbability: freezed == sampleViabilityProbability
          ? _value.sampleViabilityProbability
          : sampleViabilityProbability // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreAnalyticalRiskAssessmentImpl
    implements _PreAnalyticalRiskAssessment {
  const _$PreAnalyticalRiskAssessmentImpl(
      {required this.riskScore,
      required this.riskLevel,
      required final List<RiskFactor> factors,
      required this.assessedAt,
      this.recommendation,
      this.requiresRecollection,
      this.sampleViabilityProbability})
      : _factors = factors;

  factory _$PreAnalyticalRiskAssessmentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PreAnalyticalRiskAssessmentImplFromJson(json);

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

  @override
  String toString() {
    return 'PreAnalyticalRiskAssessment(riskScore: $riskScore, riskLevel: $riskLevel, factors: $factors, assessedAt: $assessedAt, recommendation: $recommendation, requiresRecollection: $requiresRecollection, sampleViabilityProbability: $sampleViabilityProbability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreAnalyticalRiskAssessmentImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreAnalyticalRiskAssessmentImplCopyWith<_$PreAnalyticalRiskAssessmentImpl>
      get copyWith => __$$PreAnalyticalRiskAssessmentImplCopyWithImpl<
          _$PreAnalyticalRiskAssessmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreAnalyticalRiskAssessmentImplToJson(
      this,
    );
  }
}

abstract class _PreAnalyticalRiskAssessment
    implements PreAnalyticalRiskAssessment {
  const factory _PreAnalyticalRiskAssessment(
          {required final double riskScore,
          required final RiskLevel riskLevel,
          required final List<RiskFactor> factors,
          required final DateTime assessedAt,
          final String? recommendation,
          final bool? requiresRecollection,
          final double? sampleViabilityProbability}) =
      _$PreAnalyticalRiskAssessmentImpl;

  factory _PreAnalyticalRiskAssessment.fromJson(Map<String, dynamic> json) =
      _$PreAnalyticalRiskAssessmentImpl.fromJson;

  @override
  double get riskScore;
  @override // 0-100
  RiskLevel get riskLevel;
  @override
  List<RiskFactor> get factors;
  @override
  DateTime get assessedAt;
  @override
  String? get recommendation;
  @override
  bool? get requiresRecollection;
  @override
  double? get sampleViabilityProbability;
  @override
  @JsonKey(ignore: true)
  _$$PreAnalyticalRiskAssessmentImplCopyWith<_$PreAnalyticalRiskAssessmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RiskFactor _$RiskFactorFromJson(Map<String, dynamic> json) {
  return _RiskFactor.fromJson(json);
}

/// @nodoc
mixin _$RiskFactor {
  RiskFactorType get type => throw _privateConstructorUsedError;
  double get impact => throw _privateConstructorUsedError; // 0-100
  String get description => throw _privateConstructorUsedError;
  bool? get detected => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RiskFactorCopyWith<RiskFactor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiskFactorCopyWith<$Res> {
  factory $RiskFactorCopyWith(
          RiskFactor value, $Res Function(RiskFactor) then) =
      _$RiskFactorCopyWithImpl<$Res, RiskFactor>;
  @useResult
  $Res call(
      {RiskFactorType type,
      double impact,
      String description,
      bool? detected,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$RiskFactorCopyWithImpl<$Res, $Val extends RiskFactor>
    implements $RiskFactorCopyWith<$Res> {
  _$RiskFactorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? impact = null,
    Object? description = null,
    Object? detected = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RiskFactorType,
      impact: null == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      detected: freezed == detected
          ? _value.detected
          : detected // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RiskFactorImplCopyWith<$Res>
    implements $RiskFactorCopyWith<$Res> {
  factory _$$RiskFactorImplCopyWith(
          _$RiskFactorImpl value, $Res Function(_$RiskFactorImpl) then) =
      __$$RiskFactorImplCopyWithImpl<$Res>;
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
class __$$RiskFactorImplCopyWithImpl<$Res>
    extends _$RiskFactorCopyWithImpl<$Res, _$RiskFactorImpl>
    implements _$$RiskFactorImplCopyWith<$Res> {
  __$$RiskFactorImplCopyWithImpl(
      _$RiskFactorImpl _value, $Res Function(_$RiskFactorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? impact = null,
    Object? description = null,
    Object? detected = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$RiskFactorImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RiskFactorType,
      impact: null == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      detected: freezed == detected
          ? _value.detected
          : detected // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RiskFactorImpl implements _RiskFactor {
  const _$RiskFactorImpl(
      {required this.type,
      required this.impact,
      required this.description,
      this.detected,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$RiskFactorImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiskFactorImplFromJson(json);

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

  @override
  String toString() {
    return 'RiskFactor(type: $type, impact: $impact, description: $description, detected: $detected, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiskFactorImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.impact, impact) || other.impact == impact) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.detected, detected) ||
                other.detected == detected) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, impact, description,
      detected, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RiskFactorImplCopyWith<_$RiskFactorImpl> get copyWith =>
      __$$RiskFactorImplCopyWithImpl<_$RiskFactorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiskFactorImplToJson(
      this,
    );
  }
}

abstract class _RiskFactor implements RiskFactor {
  const factory _RiskFactor(
      {required final RiskFactorType type,
      required final double impact,
      required final String description,
      final bool? detected,
      final Map<String, dynamic>? metadata}) = _$RiskFactorImpl;

  factory _RiskFactor.fromJson(Map<String, dynamic> json) =
      _$RiskFactorImpl.fromJson;

  @override
  RiskFactorType get type;
  @override
  double get impact;
  @override // 0-100
  String get description;
  @override
  bool? get detected;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$RiskFactorImplCopyWith<_$RiskFactorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
