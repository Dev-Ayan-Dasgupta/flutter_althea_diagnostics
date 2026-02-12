// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_integrity_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SampleIntegrityScore _$SampleIntegrityScoreFromJson(Map<String, dynamic> json) {
  return _SampleIntegrityScore.fromJson(json);
}

/// @nodoc
mixin _$SampleIntegrityScore {
  double get overallScore => throw _privateConstructorUsedError; // 0-100
  IntegrityLevel get level => throw _privateConstructorUsedError;
  DateTime get calculatedAt => throw _privateConstructorUsedError;
  IntegrityFactors get factors => throw _privateConstructorUsedError;
  List<IntegrityAlert> get alerts => throw _privateConstructorUsedError;
  String? get recommendation => throw _privateConstructorUsedError;
  bool? get requiresRecollection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleIntegrityScoreCopyWith<SampleIntegrityScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleIntegrityScoreCopyWith<$Res> {
  factory $SampleIntegrityScoreCopyWith(SampleIntegrityScore value,
          $Res Function(SampleIntegrityScore) then) =
      _$SampleIntegrityScoreCopyWithImpl<$Res, SampleIntegrityScore>;
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
class _$SampleIntegrityScoreCopyWithImpl<$Res,
        $Val extends SampleIntegrityScore>
    implements $SampleIntegrityScoreCopyWith<$Res> {
  _$SampleIntegrityScoreCopyWithImpl(this._value, this._then);

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
              as IntegrityLevel,
      calculatedAt: null == calculatedAt
          ? _value.calculatedAt
          : calculatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      factors: null == factors
          ? _value.factors
          : factors // ignore: cast_nullable_to_non_nullable
              as IntegrityFactors,
      alerts: null == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<IntegrityAlert>,
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
  $IntegrityFactorsCopyWith<$Res> get factors {
    return $IntegrityFactorsCopyWith<$Res>(_value.factors, (value) {
      return _then(_value.copyWith(factors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SampleIntegrityScoreImplCopyWith<$Res>
    implements $SampleIntegrityScoreCopyWith<$Res> {
  factory _$$SampleIntegrityScoreImplCopyWith(_$SampleIntegrityScoreImpl value,
          $Res Function(_$SampleIntegrityScoreImpl) then) =
      __$$SampleIntegrityScoreImplCopyWithImpl<$Res>;
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
class __$$SampleIntegrityScoreImplCopyWithImpl<$Res>
    extends _$SampleIntegrityScoreCopyWithImpl<$Res, _$SampleIntegrityScoreImpl>
    implements _$$SampleIntegrityScoreImplCopyWith<$Res> {
  __$$SampleIntegrityScoreImplCopyWithImpl(_$SampleIntegrityScoreImpl _value,
      $Res Function(_$SampleIntegrityScoreImpl) _then)
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
    return _then(_$SampleIntegrityScoreImpl(
      overallScore: null == overallScore
          ? _value.overallScore
          : overallScore // ignore: cast_nullable_to_non_nullable
              as double,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as IntegrityLevel,
      calculatedAt: null == calculatedAt
          ? _value.calculatedAt
          : calculatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      factors: null == factors
          ? _value.factors
          : factors // ignore: cast_nullable_to_non_nullable
              as IntegrityFactors,
      alerts: null == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<IntegrityAlert>,
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
class _$SampleIntegrityScoreImpl implements _SampleIntegrityScore {
  const _$SampleIntegrityScoreImpl(
      {required this.overallScore,
      required this.level,
      required this.calculatedAt,
      required this.factors,
      required final List<IntegrityAlert> alerts,
      this.recommendation,
      this.requiresRecollection})
      : _alerts = alerts;

  factory _$SampleIntegrityScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleIntegrityScoreImplFromJson(json);

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

  @override
  String toString() {
    return 'SampleIntegrityScore(overallScore: $overallScore, level: $level, calculatedAt: $calculatedAt, factors: $factors, alerts: $alerts, recommendation: $recommendation, requiresRecollection: $requiresRecollection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleIntegrityScoreImpl &&
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
  _$$SampleIntegrityScoreImplCopyWith<_$SampleIntegrityScoreImpl>
      get copyWith =>
          __$$SampleIntegrityScoreImplCopyWithImpl<_$SampleIntegrityScoreImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleIntegrityScoreImplToJson(
      this,
    );
  }
}

abstract class _SampleIntegrityScore implements SampleIntegrityScore {
  const factory _SampleIntegrityScore(
      {required final double overallScore,
      required final IntegrityLevel level,
      required final DateTime calculatedAt,
      required final IntegrityFactors factors,
      required final List<IntegrityAlert> alerts,
      final String? recommendation,
      final bool? requiresRecollection}) = _$SampleIntegrityScoreImpl;

  factory _SampleIntegrityScore.fromJson(Map<String, dynamic> json) =
      _$SampleIntegrityScoreImpl.fromJson;

  @override
  double get overallScore;
  @override // 0-100
  IntegrityLevel get level;
  @override
  DateTime get calculatedAt;
  @override
  IntegrityFactors get factors;
  @override
  List<IntegrityAlert> get alerts;
  @override
  String? get recommendation;
  @override
  bool? get requiresRecollection;
  @override
  @JsonKey(ignore: true)
  _$$SampleIntegrityScoreImplCopyWith<_$SampleIntegrityScoreImpl>
      get copyWith => throw _privateConstructorUsedError;
}

IntegrityFactors _$IntegrityFactorsFromJson(Map<String, dynamic> json) {
  return _IntegrityFactors.fromJson(json);
}

/// @nodoc
mixin _$IntegrityFactors {
  double get transitDelayScore => throw _privateConstructorUsedError; // 0-100
  double get temperatureComplianceScore =>
      throw _privateConstructorUsedError; // 0-100
  double get handoverScore => throw _privateConstructorUsedError; // 0-100
  double get conditionScore => throw _privateConstructorUsedError; // 0-100
  double get timelinessScore => throw _privateConstructorUsedError; // 0-100
  int? get transitDelayMinutes => throw _privateConstructorUsedError;
  double? get maxTemperatureDeviation => throw _privateConstructorUsedError;
  int? get numberOfHandovers => throw _privateConstructorUsedError;
  int? get totalTransitTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntegrityFactorsCopyWith<IntegrityFactors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntegrityFactorsCopyWith<$Res> {
  factory $IntegrityFactorsCopyWith(
          IntegrityFactors value, $Res Function(IntegrityFactors) then) =
      _$IntegrityFactorsCopyWithImpl<$Res, IntegrityFactors>;
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
class _$IntegrityFactorsCopyWithImpl<$Res, $Val extends IntegrityFactors>
    implements $IntegrityFactorsCopyWith<$Res> {
  _$IntegrityFactorsCopyWithImpl(this._value, this._then);

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
abstract class _$$IntegrityFactorsImplCopyWith<$Res>
    implements $IntegrityFactorsCopyWith<$Res> {
  factory _$$IntegrityFactorsImplCopyWith(_$IntegrityFactorsImpl value,
          $Res Function(_$IntegrityFactorsImpl) then) =
      __$$IntegrityFactorsImplCopyWithImpl<$Res>;
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
class __$$IntegrityFactorsImplCopyWithImpl<$Res>
    extends _$IntegrityFactorsCopyWithImpl<$Res, _$IntegrityFactorsImpl>
    implements _$$IntegrityFactorsImplCopyWith<$Res> {
  __$$IntegrityFactorsImplCopyWithImpl(_$IntegrityFactorsImpl _value,
      $Res Function(_$IntegrityFactorsImpl) _then)
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
    return _then(_$IntegrityFactorsImpl(
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
class _$IntegrityFactorsImpl implements _IntegrityFactors {
  const _$IntegrityFactorsImpl(
      {required this.transitDelayScore,
      required this.temperatureComplianceScore,
      required this.handoverScore,
      required this.conditionScore,
      required this.timelinessScore,
      this.transitDelayMinutes,
      this.maxTemperatureDeviation,
      this.numberOfHandovers,
      this.totalTransitTime});

  factory _$IntegrityFactorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntegrityFactorsImplFromJson(json);

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

  @override
  String toString() {
    return 'IntegrityFactors(transitDelayScore: $transitDelayScore, temperatureComplianceScore: $temperatureComplianceScore, handoverScore: $handoverScore, conditionScore: $conditionScore, timelinessScore: $timelinessScore, transitDelayMinutes: $transitDelayMinutes, maxTemperatureDeviation: $maxTemperatureDeviation, numberOfHandovers: $numberOfHandovers, totalTransitTime: $totalTransitTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntegrityFactorsImpl &&
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
  _$$IntegrityFactorsImplCopyWith<_$IntegrityFactorsImpl> get copyWith =>
      __$$IntegrityFactorsImplCopyWithImpl<_$IntegrityFactorsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntegrityFactorsImplToJson(
      this,
    );
  }
}

abstract class _IntegrityFactors implements IntegrityFactors {
  const factory _IntegrityFactors(
      {required final double transitDelayScore,
      required final double temperatureComplianceScore,
      required final double handoverScore,
      required final double conditionScore,
      required final double timelinessScore,
      final int? transitDelayMinutes,
      final double? maxTemperatureDeviation,
      final int? numberOfHandovers,
      final int? totalTransitTime}) = _$IntegrityFactorsImpl;

  factory _IntegrityFactors.fromJson(Map<String, dynamic> json) =
      _$IntegrityFactorsImpl.fromJson;

  @override
  double get transitDelayScore;
  @override // 0-100
  double get temperatureComplianceScore;
  @override // 0-100
  double get handoverScore;
  @override // 0-100
  double get conditionScore;
  @override // 0-100
  double get timelinessScore;
  @override // 0-100
  int? get transitDelayMinutes;
  @override
  double? get maxTemperatureDeviation;
  @override
  int? get numberOfHandovers;
  @override
  int? get totalTransitTime;
  @override
  @JsonKey(ignore: true)
  _$$IntegrityFactorsImplCopyWith<_$IntegrityFactorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IntegrityAlert _$IntegrityAlertFromJson(Map<String, dynamic> json) {
  return _IntegrityAlert.fromJson(json);
}

/// @nodoc
mixin _$IntegrityAlert {
  AlertSeverity get severity => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  AlertType get type => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntegrityAlertCopyWith<IntegrityAlert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntegrityAlertCopyWith<$Res> {
  factory $IntegrityAlertCopyWith(
          IntegrityAlert value, $Res Function(IntegrityAlert) then) =
      _$IntegrityAlertCopyWithImpl<$Res, IntegrityAlert>;
  @useResult
  $Res call(
      {AlertSeverity severity,
      String message,
      AlertType type,
      DateTime timestamp,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$IntegrityAlertCopyWithImpl<$Res, $Val extends IntegrityAlert>
    implements $IntegrityAlertCopyWith<$Res> {
  _$IntegrityAlertCopyWithImpl(this._value, this._then);

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
              as AlertSeverity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AlertType,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntegrityAlertImplCopyWith<$Res>
    implements $IntegrityAlertCopyWith<$Res> {
  factory _$$IntegrityAlertImplCopyWith(_$IntegrityAlertImpl value,
          $Res Function(_$IntegrityAlertImpl) then) =
      __$$IntegrityAlertImplCopyWithImpl<$Res>;
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
class __$$IntegrityAlertImplCopyWithImpl<$Res>
    extends _$IntegrityAlertCopyWithImpl<$Res, _$IntegrityAlertImpl>
    implements _$$IntegrityAlertImplCopyWith<$Res> {
  __$$IntegrityAlertImplCopyWithImpl(
      _$IntegrityAlertImpl _value, $Res Function(_$IntegrityAlertImpl) _then)
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
    return _then(_$IntegrityAlertImpl(
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as AlertSeverity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AlertType,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntegrityAlertImpl implements _IntegrityAlert {
  const _$IntegrityAlertImpl(
      {required this.severity,
      required this.message,
      required this.type,
      required this.timestamp,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;

  factory _$IntegrityAlertImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntegrityAlertImplFromJson(json);

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

  @override
  String toString() {
    return 'IntegrityAlert(severity: $severity, message: $message, type: $type, timestamp: $timestamp, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntegrityAlertImpl &&
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
  _$$IntegrityAlertImplCopyWith<_$IntegrityAlertImpl> get copyWith =>
      __$$IntegrityAlertImplCopyWithImpl<_$IntegrityAlertImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntegrityAlertImplToJson(
      this,
    );
  }
}

abstract class _IntegrityAlert implements IntegrityAlert {
  const factory _IntegrityAlert(
      {required final AlertSeverity severity,
      required final String message,
      required final AlertType type,
      required final DateTime timestamp,
      final Map<String, dynamic>? metadata}) = _$IntegrityAlertImpl;

  factory _IntegrityAlert.fromJson(Map<String, dynamic> json) =
      _$IntegrityAlertImpl.fromJson;

  @override
  AlertSeverity get severity;
  @override
  String get message;
  @override
  AlertType get type;
  @override
  DateTime get timestamp;
  @override
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$IntegrityAlertImplCopyWith<_$IntegrityAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
