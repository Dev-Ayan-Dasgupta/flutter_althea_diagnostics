// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_integrity_score_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SampleIntegrityScoreModel _$SampleIntegrityScoreModelFromJson(
    Map<String, dynamic> json) {
  return _SampleIntegrityScoreModel.fromJson(json);
}

/// @nodoc
mixin _$SampleIntegrityScoreModel {
  double get overallScore => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get calculatedAt => throw _privateConstructorUsedError;
  IntegrityFactorsModel get factors => throw _privateConstructorUsedError;
  List<IntegrityAlertModel> get alerts => throw _privateConstructorUsedError;
  String? get recommendation => throw _privateConstructorUsedError;
  bool? get requiresRecollection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleIntegrityScoreModelCopyWith<SampleIntegrityScoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleIntegrityScoreModelCopyWith<$Res> {
  factory $SampleIntegrityScoreModelCopyWith(SampleIntegrityScoreModel value,
          $Res Function(SampleIntegrityScoreModel) then) =
      _$SampleIntegrityScoreModelCopyWithImpl<$Res, SampleIntegrityScoreModel>;
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
class _$SampleIntegrityScoreModelCopyWithImpl<$Res,
        $Val extends SampleIntegrityScoreModel>
    implements $SampleIntegrityScoreModelCopyWith<$Res> {
  _$SampleIntegrityScoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      overallScore: null == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      calculatedAt: null == calculatedAt
          ? _value.calculatedAt
          : calculatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      factors: null == factors
          ? _value.factors
          : factors // ignore: cast_nullable_to_non_nullable
              as IntegrityFactorsModel,
      alerts: null == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<IntegrityAlertModel>,
      recommendation: freezed == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresRecollection: freezed == requiresRecollection
          ? _value.requiresRecollection
          : requiresRecollection // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IntegrityFactorsModelCopyWith<$Res> get factors {
    return $IntegrityFactorsModelCopyWith<$Res>(_value.factors, (value) {
      return _then(_value.copyWith(factors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SampleIntegrityScoreModelImplCopyWith<$Res>
    implements $SampleIntegrityScoreModelCopyWith<$Res> {
  factory _$$SampleIntegrityScoreModelImplCopyWith(
          _$SampleIntegrityScoreModelImpl value,
          $Res Function(_$SampleIntegrityScoreModelImpl) then) =
      __$$SampleIntegrityScoreModelImplCopyWithImpl<$Res>;
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
class __$$SampleIntegrityScoreModelImplCopyWithImpl<$Res>
    extends _$SampleIntegrityScoreModelCopyWithImpl<$Res,
        _$SampleIntegrityScoreModelImpl>
    implements _$$SampleIntegrityScoreModelImplCopyWith<$Res> {
  __$$SampleIntegrityScoreModelImplCopyWithImpl(
      _$SampleIntegrityScoreModelImpl _value,
      $Res Function(_$SampleIntegrityScoreModelImpl) _then)
      : super(_value, _then);

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
    return _then(_$SampleIntegrityScoreModelImpl(
      overallScore: null == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      calculatedAt: null == calculatedAt
          ? _value.calculatedAt
          : calculatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      factors: null == factors
          ? _value.factors
          : factors // ignore: cast_nullable_to_non_nullable
              as IntegrityFactorsModel,
      alerts: null == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<IntegrityAlertModel>,
      recommendation: freezed == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
      requiresRecollection: freezed == requiresRecollection
          ? _value.requiresRecollection
          : requiresRecollection // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleIntegrityScoreModelImpl implements _SampleIntegrityScoreModel {
  const _$SampleIntegrityScoreModelImpl(
      {required this.overallScore,
      required this.level,
      required this.calculatedAt,
      required this.factors,
      required final List<IntegrityAlertModel> alerts,
      this.recommendation,
      this.requiresRecollection})
      : _alerts = alerts;

  factory _$SampleIntegrityScoreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleIntegrityScoreModelImplFromJson(json);

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

  @override
  String toString() {
    return 'SampleIntegrityScoreModel(overallScore: $overallScore, level: $level, calculatedAt: $calculatedAt, factors: $factors, alerts: $alerts, recommendation: $recommendation, requiresRecollection: $requiresRecollection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleIntegrityScoreModelImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleIntegrityScoreModelImplCopyWith<_$SampleIntegrityScoreModelImpl>
      get copyWith => __$$SampleIntegrityScoreModelImplCopyWithImpl<
          _$SampleIntegrityScoreModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleIntegrityScoreModelImplToJson(
      this,
    );
  }
}

abstract class _SampleIntegrityScoreModel implements SampleIntegrityScoreModel {
  const factory _SampleIntegrityScoreModel(
      {required final double overallScore,
      required final String level,
      required final String calculatedAt,
      required final IntegrityFactorsModel factors,
      required final List<IntegrityAlertModel> alerts,
      final String? recommendation,
      final bool? requiresRecollection}) = _$SampleIntegrityScoreModelImpl;

  factory _SampleIntegrityScoreModel.fromJson(Map<String, dynamic> json) =
      _$SampleIntegrityScoreModelImpl.fromJson;

  @override
  double get overallScore;
  @override
  String get level;
  @override
  String get calculatedAt;
  @override
  IntegrityFactorsModel get factors;
  @override
  List<IntegrityAlertModel> get alerts;
  @override
  String? get recommendation;
  @override
  bool? get requiresRecollection;
  @override
  @JsonKey(ignore: true)
  _$$SampleIntegrityScoreModelImplCopyWith<_$SampleIntegrityScoreModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

IntegrityFactorsModel _$IntegrityFactorsModelFromJson(
    Map<String, dynamic> json) {
  return _IntegrityFactorsModel.fromJson(json);
}

/// @nodoc
mixin _$IntegrityFactorsModel {
  double get transitDelayScore => throw _privateConstructorUsedError;
  double get temperatureComplianceScore => throw _privateConstructorUsedError;
  double get handoverScore => throw _privateConstructorUsedError;
  double get conditionScore => throw _privateConstructorUsedError;
  double get timelinessScore => throw _privateConstructorUsedError;
  int? get transitDelayMinutes => throw _privateConstructorUsedError;
  double? get maxTemperatureDeviation => throw _privateConstructorUsedError;
  int? get numberOfHandovers => throw _privateConstructorUsedError;
  int? get totalTransitTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntegrityFactorsModelCopyWith<IntegrityFactorsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntegrityFactorsModelCopyWith<$Res> {
  factory $IntegrityFactorsModelCopyWith(IntegrityFactorsModel value,
          $Res Function(IntegrityFactorsModel) then) =
      _$IntegrityFactorsModelCopyWithImpl<$Res, IntegrityFactorsModel>;
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
class _$IntegrityFactorsModelCopyWithImpl<$Res,
        $Val extends IntegrityFactorsModel>
    implements $IntegrityFactorsModelCopyWith<$Res> {
  _$IntegrityFactorsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      transitDelayScore: null == transitDelayScore
          ? _value.transitDelayScore
          : transitDelayScore // ignore: cast_nullable_to_non_nullable
              as double,
      temperatureComplianceScore: null == temperatureComplianceScore
          ? _value.temperatureComplianceScore
          : temperatureComplianceScore // ignore: cast_nullable_to_non_nullable
              as double,
      handoverScore: null == handoverScore
          ? _value.handoverScore
          : handoverScore // ignore: cast_nullable_to_non_nullable
              as double,
      conditionScore: null == conditionScore
          ? _value.conditionScore
          : conditionScore // ignore: cast_nullable_to_non_nullable
              as double,
      timelinessScore: null == timelinessScore
          ? _value.timelinessScore
          : timelinessScore // ignore: cast_nullable_to_non_nullable
              as double,
      transitDelayMinutes: freezed == transitDelayMinutes
          ? _value.transitDelayMinutes
          : transitDelayMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      maxTemperatureDeviation: freezed == maxTemperatureDeviation
          ? _value.maxTemperatureDeviation
          : maxTemperatureDeviation // ignore: cast_nullable_to_non_nullable
              as double?,
      numberOfHandovers: freezed == numberOfHandovers
          ? _value.numberOfHandovers
          : numberOfHandovers // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTransitTime: freezed == totalTransitTime
          ? _value.totalTransitTime
          : totalTransitTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntegrityFactorsModelImplCopyWith<$Res>
    implements $IntegrityFactorsModelCopyWith<$Res> {
  factory _$$IntegrityFactorsModelImplCopyWith(
          _$IntegrityFactorsModelImpl value,
          $Res Function(_$IntegrityFactorsModelImpl) then) =
      __$$IntegrityFactorsModelImplCopyWithImpl<$Res>;
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
class __$$IntegrityFactorsModelImplCopyWithImpl<$Res>
    extends _$IntegrityFactorsModelCopyWithImpl<$Res,
        _$IntegrityFactorsModelImpl>
    implements _$$IntegrityFactorsModelImplCopyWith<$Res> {
  __$$IntegrityFactorsModelImplCopyWithImpl(_$IntegrityFactorsModelImpl _value,
      $Res Function(_$IntegrityFactorsModelImpl) _then)
      : super(_value, _then);

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
    return _then(_$IntegrityFactorsModelImpl(
      transitDelayScore: null == transitDelayScore
          ? _value.transitDelayScore
          : transitDelayScore // ignore: cast_nullable_to_non_nullable
              as double,
      temperatureComplianceScore: null == temperatureComplianceScore
          ? _value.temperatureComplianceScore
          : temperatureComplianceScore // ignore: cast_nullable_to_non_nullable
              as double,
      handoverScore: null == handoverScore
          ? _value.handoverScore
          : handoverScore // ignore: cast_nullable_to_non_nullable
              as double,
      conditionScore: null == conditionScore
          ? _value.conditionScore
          : conditionScore // ignore: cast_nullable_to_non_nullable
              as double,
      timelinessScore: null == timelinessScore
          ? _value.timelinessScore
          : timelinessScore // ignore: cast_nullable_to_non_nullable
              as double,
      transitDelayMinutes: freezed == transitDelayMinutes
          ? _value.transitDelayMinutes
          : transitDelayMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      maxTemperatureDeviation: freezed == maxTemperatureDeviation
          ? _value.maxTemperatureDeviation
          : maxTemperatureDeviation // ignore: cast_nullable_to_non_nullable
              as double?,
      numberOfHandovers: freezed == numberOfHandovers
          ? _value.numberOfHandovers
          : numberOfHandovers // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTransitTime: freezed == totalTransitTime
          ? _value.totalTransitTime
          : totalTransitTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntegrityFactorsModelImpl implements _IntegrityFactorsModel {
  const _$IntegrityFactorsModelImpl(
      {required this.transitDelayScore,
      required this.temperatureComplianceScore,
      required this.handoverScore,
      required this.conditionScore,
      required this.timelinessScore,
      this.transitDelayMinutes,
      this.maxTemperatureDeviation,
      this.numberOfHandovers,
      this.totalTransitTime});

  factory _$IntegrityFactorsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntegrityFactorsModelImplFromJson(json);

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

  @override
  String toString() {
    return 'IntegrityFactorsModel(transitDelayScore: $transitDelayScore, temperatureComplianceScore: $temperatureComplianceScore, handoverScore: $handoverScore, conditionScore: $conditionScore, timelinessScore: $timelinessScore, transitDelayMinutes: $transitDelayMinutes, maxTemperatureDeviation: $maxTemperatureDeviation, numberOfHandovers: $numberOfHandovers, totalTransitTime: $totalTransitTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntegrityFactorsModelImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntegrityFactorsModelImplCopyWith<_$IntegrityFactorsModelImpl>
      get copyWith => __$$IntegrityFactorsModelImplCopyWithImpl<
          _$IntegrityFactorsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntegrityFactorsModelImplToJson(
      this,
    );
  }
}

abstract class _IntegrityFactorsModel implements IntegrityFactorsModel {
  const factory _IntegrityFactorsModel(
      {required final double transitDelayScore,
      required final double temperatureComplianceScore,
      required final double handoverScore,
      required final double conditionScore,
      required final double timelinessScore,
      final int? transitDelayMinutes,
      final double? maxTemperatureDeviation,
      final int? numberOfHandovers,
      final int? totalTransitTime}) = _$IntegrityFactorsModelImpl;

  factory _IntegrityFactorsModel.fromJson(Map<String, dynamic> json) =
      _$IntegrityFactorsModelImpl.fromJson;

  @override
  double get transitDelayScore;
  @override
  double get temperatureComplianceScore;
  @override
  double get handoverScore;
  @override
  double get conditionScore;
  @override
  double get timelinessScore;
  @override
  int? get transitDelayMinutes;
  @override
  double? get maxTemperatureDeviation;
  @override
  int? get numberOfHandovers;
  @override
  int? get totalTransitTime;
  @override
  @JsonKey(ignore: true)
  _$$IntegrityFactorsModelImplCopyWith<_$IntegrityFactorsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

IntegrityAlertModel _$IntegrityAlertModelFromJson(Map<String, dynamic> json) {
  return _IntegrityAlertModel.fromJson(json);
}

/// @nodoc
mixin _$IntegrityAlertModel {
  String get severity => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntegrityAlertModelCopyWith<IntegrityAlertModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntegrityAlertModelCopyWith<$Res> {
  factory $IntegrityAlertModelCopyWith(
          IntegrityAlertModel value, $Res Function(IntegrityAlertModel) then) =
      _$IntegrityAlertModelCopyWithImpl<$Res, IntegrityAlertModel>;
  @useResult
  $Res call(
      {String severity,
      String message,
      String type,
      String timestamp,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$IntegrityAlertModelCopyWithImpl<$Res, $Val extends IntegrityAlertModel>
    implements $IntegrityAlertModelCopyWith<$Res> {
  _$IntegrityAlertModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? severity = null,
    Object? message = null,
    Object? type = null,
    Object? timestamp = null,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntegrityAlertModelImplCopyWith<$Res>
    implements $IntegrityAlertModelCopyWith<$Res> {
  factory _$$IntegrityAlertModelImplCopyWith(_$IntegrityAlertModelImpl value,
          $Res Function(_$IntegrityAlertModelImpl) then) =
      __$$IntegrityAlertModelImplCopyWithImpl<$Res>;
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
class __$$IntegrityAlertModelImplCopyWithImpl<$Res>
    extends _$IntegrityAlertModelCopyWithImpl<$Res, _$IntegrityAlertModelImpl>
    implements _$$IntegrityAlertModelImplCopyWith<$Res> {
  __$$IntegrityAlertModelImplCopyWithImpl(_$IntegrityAlertModelImpl _value,
      $Res Function(_$IntegrityAlertModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? severity = null,
    Object? message = null,
    Object? type = null,
    Object? timestamp = null,
    Object? metadata = freezed,
  }) {
    return _then(_$IntegrityAlertModelImpl(
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntegrityAlertModelImpl implements _IntegrityAlertModel {
  const _$IntegrityAlertModelImpl(
      {required this.severity,
      required this.message,
      required this.type,
      required this.timestamp,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$IntegrityAlertModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntegrityAlertModelImplFromJson(json);

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

  @override
  String toString() {
    return 'IntegrityAlertModel(severity: $severity, message: $message, type: $type, timestamp: $timestamp, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntegrityAlertModelImpl &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, severity, message, type,
      timestamp, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntegrityAlertModelImplCopyWith<_$IntegrityAlertModelImpl> get copyWith =>
      __$$IntegrityAlertModelImplCopyWithImpl<_$IntegrityAlertModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntegrityAlertModelImplToJson(
      this,
    );
  }
}

abstract class _IntegrityAlertModel implements IntegrityAlertModel {
  const factory _IntegrityAlertModel(
      {required final String severity,
      required final String message,
      required final String type,
      required final String timestamp,
      final Map<String, dynamic>? metadata}) = _$IntegrityAlertModelImpl;

  factory _IntegrityAlertModel.fromJson(Map<String, dynamic> json) =
      _$IntegrityAlertModelImpl.fromJson;

  @override
  String get severity;
  @override
  String get message;
  @override
  String get type;
  @override
  String get timestamp;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$IntegrityAlertModelImplCopyWith<_$IntegrityAlertModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
