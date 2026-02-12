// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_analytical_risk_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreAnalyticalRiskModel _$PreAnalyticalRiskModelFromJson(
    Map<String, dynamic> json) {
  return _PreAnalyticalRiskModel.fromJson(json);
}

/// @nodoc
mixin _$PreAnalyticalRiskModel {
  double get riskScore => throw _privateConstructorUsedError;
  String get riskLevel => throw _privateConstructorUsedError;
  List<RiskFactorModel> get factors => throw _privateConstructorUsedError;
  String get assessedAt => throw _privateConstructorUsedError;
  String? get recommendation => throw _privateConstructorUsedError;
  bool? get requiresRecollection => throw _privateConstructorUsedError;
  double? get sampleViabilityProbability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreAnalyticalRiskModelCopyWith<PreAnalyticalRiskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreAnalyticalRiskModelCopyWith<$Res> {
  factory $PreAnalyticalRiskModelCopyWith(PreAnalyticalRiskModel value,
          $Res Function(PreAnalyticalRiskModel) then) =
      _$PreAnalyticalRiskModelCopyWithImpl<$Res, PreAnalyticalRiskModel>;
  @useResult
  $Res call(
      {double riskScore,
      String riskLevel,
      List<RiskFactorModel> factors,
      String assessedAt,
      String? recommendation,
      bool? requiresRecollection,
      double? sampleViabilityProbability});
}

/// @nodoc
class _$PreAnalyticalRiskModelCopyWithImpl<$Res,
        $Val extends PreAnalyticalRiskModel>
    implements $PreAnalyticalRiskModelCopyWith<$Res> {
  _$PreAnalyticalRiskModelCopyWithImpl(this._value, this._then);

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
              as String,
      factors: null == factors
          ? _value.factors
          : factors // ignore: cast_nullable_to_non_nullable
              as List<RiskFactorModel>,
      assessedAt: null == assessedAt
          ? _value.assessedAt
          : assessedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$PreAnalyticalRiskModelImplCopyWith<$Res>
    implements $PreAnalyticalRiskModelCopyWith<$Res> {
  factory _$$PreAnalyticalRiskModelImplCopyWith(
          _$PreAnalyticalRiskModelImpl value,
          $Res Function(_$PreAnalyticalRiskModelImpl) then) =
      __$$PreAnalyticalRiskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double riskScore,
      String riskLevel,
      List<RiskFactorModel> factors,
      String assessedAt,
      String? recommendation,
      bool? requiresRecollection,
      double? sampleViabilityProbability});
}

/// @nodoc
class __$$PreAnalyticalRiskModelImplCopyWithImpl<$Res>
    extends _$PreAnalyticalRiskModelCopyWithImpl<$Res,
        _$PreAnalyticalRiskModelImpl>
    implements _$$PreAnalyticalRiskModelImplCopyWith<$Res> {
  __$$PreAnalyticalRiskModelImplCopyWithImpl(
      _$PreAnalyticalRiskModelImpl _value,
      $Res Function(_$PreAnalyticalRiskModelImpl) _then)
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
    return _then(_$PreAnalyticalRiskModelImpl(
      riskScore: null == riskScore
          ? _value.riskScore
          : riskScore // ignore: cast_nullable_to_non_nullable
              as double,
      riskLevel: null == riskLevel
          ? _value.riskLevel
          : riskLevel // ignore: cast_nullable_to_non_nullable
              as String,
      factors: null == factors
          ? _value._factors
          : factors // ignore: cast_nullable_to_non_nullable
              as List<RiskFactorModel>,
      assessedAt: null == assessedAt
          ? _value.assessedAt
          : assessedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$PreAnalyticalRiskModelImpl implements _PreAnalyticalRiskModel {
  const _$PreAnalyticalRiskModelImpl(
      {required this.riskScore,
      required this.riskLevel,
      required final List<RiskFactorModel> factors,
      required this.assessedAt,
      this.recommendation,
      this.requiresRecollection,
      this.sampleViabilityProbability})
      : _factors = factors;

  factory _$PreAnalyticalRiskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreAnalyticalRiskModelImplFromJson(json);

  @override
  final double riskScore;
  @override
  final String riskLevel;
  final List<RiskFactorModel> _factors;
  @override
  List<RiskFactorModel> get factors {
    if (_factors is EqualUnmodifiableListView) return _factors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_factors);
  }

  @override
  final String assessedAt;
  @override
  final String? recommendation;
  @override
  final bool? requiresRecollection;
  @override
  final double? sampleViabilityProbability;

  @override
  String toString() {
    return 'PreAnalyticalRiskModel(riskScore: $riskScore, riskLevel: $riskLevel, factors: $factors, assessedAt: $assessedAt, recommendation: $recommendation, requiresRecollection: $requiresRecollection, sampleViabilityProbability: $sampleViabilityProbability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreAnalyticalRiskModelImpl &&
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
  _$$PreAnalyticalRiskModelImplCopyWith<_$PreAnalyticalRiskModelImpl>
      get copyWith => __$$PreAnalyticalRiskModelImplCopyWithImpl<
          _$PreAnalyticalRiskModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreAnalyticalRiskModelImplToJson(
      this,
    );
  }
}

abstract class _PreAnalyticalRiskModel implements PreAnalyticalRiskModel {
  const factory _PreAnalyticalRiskModel(
      {required final double riskScore,
      required final String riskLevel,
      required final List<RiskFactorModel> factors,
      required final String assessedAt,
      final String? recommendation,
      final bool? requiresRecollection,
      final double? sampleViabilityProbability}) = _$PreAnalyticalRiskModelImpl;

  factory _PreAnalyticalRiskModel.fromJson(Map<String, dynamic> json) =
      _$PreAnalyticalRiskModelImpl.fromJson;

  @override
  double get riskScore;
  @override
  String get riskLevel;
  @override
  List<RiskFactorModel> get factors;
  @override
  String get assessedAt;
  @override
  String? get recommendation;
  @override
  bool? get requiresRecollection;
  @override
  double? get sampleViabilityProbability;
  @override
  @JsonKey(ignore: true)
  _$$PreAnalyticalRiskModelImplCopyWith<_$PreAnalyticalRiskModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RiskFactorModel _$RiskFactorModelFromJson(Map<String, dynamic> json) {
  return _RiskFactorModel.fromJson(json);
}

/// @nodoc
mixin _$RiskFactorModel {
  String get type => throw _privateConstructorUsedError;
  double get impact => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool? get detected => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RiskFactorModelCopyWith<RiskFactorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiskFactorModelCopyWith<$Res> {
  factory $RiskFactorModelCopyWith(
          RiskFactorModel value, $Res Function(RiskFactorModel) then) =
      _$RiskFactorModelCopyWithImpl<$Res, RiskFactorModel>;
  @useResult
  $Res call(
      {String type,
      double impact,
      String description,
      bool? detected,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$RiskFactorModelCopyWithImpl<$Res, $Val extends RiskFactorModel>
    implements $RiskFactorModelCopyWith<$Res> {
  _$RiskFactorModelCopyWithImpl(this._value, this._then);

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
              as String,
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
abstract class _$$RiskFactorModelImplCopyWith<$Res>
    implements $RiskFactorModelCopyWith<$Res> {
  factory _$$RiskFactorModelImplCopyWith(_$RiskFactorModelImpl value,
          $Res Function(_$RiskFactorModelImpl) then) =
      __$$RiskFactorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      double impact,
      String description,
      bool? detected,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$$RiskFactorModelImplCopyWithImpl<$Res>
    extends _$RiskFactorModelCopyWithImpl<$Res, _$RiskFactorModelImpl>
    implements _$$RiskFactorModelImplCopyWith<$Res> {
  __$$RiskFactorModelImplCopyWithImpl(
      _$RiskFactorModelImpl _value, $Res Function(_$RiskFactorModelImpl) _then)
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
    return _then(_$RiskFactorModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$RiskFactorModelImpl implements _RiskFactorModel {
  const _$RiskFactorModelImpl(
      {required this.type,
      required this.impact,
      required this.description,
      this.detected,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$RiskFactorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiskFactorModelImplFromJson(json);

  @override
  final String type;
  @override
  final double impact;
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
    return 'RiskFactorModel(type: $type, impact: $impact, description: $description, detected: $detected, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiskFactorModelImpl &&
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
  _$$RiskFactorModelImplCopyWith<_$RiskFactorModelImpl> get copyWith =>
      __$$RiskFactorModelImplCopyWithImpl<_$RiskFactorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiskFactorModelImplToJson(
      this,
    );
  }
}

abstract class _RiskFactorModel implements RiskFactorModel {
  const factory _RiskFactorModel(
      {required final String type,
      required final double impact,
      required final String description,
      final bool? detected,
      final Map<String, dynamic>? metadata}) = _$RiskFactorModelImpl;

  factory _RiskFactorModel.fromJson(Map<String, dynamic> json) =
      _$RiskFactorModelImpl.fromJson;

  @override
  String get type;
  @override
  double get impact;
  @override
  String get description;
  @override
  bool? get detected;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$RiskFactorModelImplCopyWith<_$RiskFactorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
