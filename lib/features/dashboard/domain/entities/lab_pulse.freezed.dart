// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lab_pulse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LabPulse _$LabPulseFromJson(Map<String, dynamic> json) {
  return _LabPulse.fromJson(json);
}

/// @nodoc
mixin _$LabPulse {
  int get samplesInTransit => throw _privateConstructorUsedError;
  int get samplesProcessing => throw _privateConstructorUsedError;
  int get samplesCompleted => throw _privateConstructorUsedError;
  int get samplesRejected => throw _privateConstructorUsedError;
  List<TatAlert> get tatAlerts => throw _privateConstructorUsedError;
  LabCapacity get capacity => throw _privateConstructorUsedError;
  List<SampleTrendData> get trends => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabPulseCopyWith<LabPulse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabPulseCopyWith<$Res> {
  factory $LabPulseCopyWith(LabPulse value, $Res Function(LabPulse) then) =
      _$LabPulseCopyWithImpl<$Res, LabPulse>;
  @useResult
  $Res call(
      {int samplesInTransit,
      int samplesProcessing,
      int samplesCompleted,
      int samplesRejected,
      List<TatAlert> tatAlerts,
      LabCapacity capacity,
      List<SampleTrendData> trends,
      DateTime timestamp});

  $LabCapacityCopyWith<$Res> get capacity;
}

/// @nodoc
class _$LabPulseCopyWithImpl<$Res, $Val extends LabPulse>
    implements $LabPulseCopyWith<$Res> {
  _$LabPulseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? samplesInTransit = null,
    Object? samplesProcessing = null,
    Object? samplesCompleted = null,
    Object? samplesRejected = null,
    Object? tatAlerts = null,
    Object? capacity = null,
    Object? trends = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      samplesInTransit: null == samplesInTransit
          ? _value.samplesInTransit
          : samplesInTransit // ignore: cast_nullable_to_non_nullable
              as int,
      samplesProcessing: null == samplesProcessing
          ? _value.samplesProcessing
          : samplesProcessing // ignore: cast_nullable_to_non_nullable
              as int,
      samplesCompleted: null == samplesCompleted
          ? _value.samplesCompleted
          : samplesCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      samplesRejected: null == samplesRejected
          ? _value.samplesRejected
          : samplesRejected // ignore: cast_nullable_to_non_nullable
              as int,
      tatAlerts: null == tatAlerts
          ? _value.tatAlerts
          : tatAlerts // ignore: cast_nullable_to_non_nullable
              as List<TatAlert>,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as LabCapacity,
      trends: null == trends
          ? _value.trends
          : trends // ignore: cast_nullable_to_non_nullable
              as List<SampleTrendData>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LabCapacityCopyWith<$Res> get capacity {
    return $LabCapacityCopyWith<$Res>(_value.capacity, (value) {
      return _then(_value.copyWith(capacity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LabPulseImplCopyWith<$Res>
    implements $LabPulseCopyWith<$Res> {
  factory _$$LabPulseImplCopyWith(
          _$LabPulseImpl value, $Res Function(_$LabPulseImpl) then) =
      __$$LabPulseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int samplesInTransit,
      int samplesProcessing,
      int samplesCompleted,
      int samplesRejected,
      List<TatAlert> tatAlerts,
      LabCapacity capacity,
      List<SampleTrendData> trends,
      DateTime timestamp});

  @override
  $LabCapacityCopyWith<$Res> get capacity;
}

/// @nodoc
class __$$LabPulseImplCopyWithImpl<$Res>
    extends _$LabPulseCopyWithImpl<$Res, _$LabPulseImpl>
    implements _$$LabPulseImplCopyWith<$Res> {
  __$$LabPulseImplCopyWithImpl(
      _$LabPulseImpl _value, $Res Function(_$LabPulseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? samplesInTransit = null,
    Object? samplesProcessing = null,
    Object? samplesCompleted = null,
    Object? samplesRejected = null,
    Object? tatAlerts = null,
    Object? capacity = null,
    Object? trends = null,
    Object? timestamp = null,
  }) {
    return _then(_$LabPulseImpl(
      samplesInTransit: null == samplesInTransit
          ? _value.samplesInTransit
          : samplesInTransit // ignore: cast_nullable_to_non_nullable
              as int,
      samplesProcessing: null == samplesProcessing
          ? _value.samplesProcessing
          : samplesProcessing // ignore: cast_nullable_to_non_nullable
              as int,
      samplesCompleted: null == samplesCompleted
          ? _value.samplesCompleted
          : samplesCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      samplesRejected: null == samplesRejected
          ? _value.samplesRejected
          : samplesRejected // ignore: cast_nullable_to_non_nullable
              as int,
      tatAlerts: null == tatAlerts
          ? _value._tatAlerts
          : tatAlerts // ignore: cast_nullable_to_non_nullable
              as List<TatAlert>,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as LabCapacity,
      trends: null == trends
          ? _value._trends
          : trends // ignore: cast_nullable_to_non_nullable
              as List<SampleTrendData>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LabPulseImpl implements _LabPulse {
  const _$LabPulseImpl(
      {required this.samplesInTransit,
      required this.samplesProcessing,
      required this.samplesCompleted,
      required this.samplesRejected,
      required final List<TatAlert> tatAlerts,
      required this.capacity,
      required final List<SampleTrendData> trends,
      required this.timestamp})
      : _tatAlerts = tatAlerts,
        _trends = trends;

  factory _$LabPulseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LabPulseImplFromJson(json);

  @override
  final int samplesInTransit;
  @override
  final int samplesProcessing;
  @override
  final int samplesCompleted;
  @override
  final int samplesRejected;
  final List<TatAlert> _tatAlerts;
  @override
  List<TatAlert> get tatAlerts {
    if (_tatAlerts is EqualUnmodifiableListView) return _tatAlerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tatAlerts);
  }

  @override
  final LabCapacity capacity;
  final List<SampleTrendData> _trends;
  @override
  List<SampleTrendData> get trends {
    if (_trends is EqualUnmodifiableListView) return _trends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trends);
  }

  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'LabPulse(samplesInTransit: $samplesInTransit, samplesProcessing: $samplesProcessing, samplesCompleted: $samplesCompleted, samplesRejected: $samplesRejected, tatAlerts: $tatAlerts, capacity: $capacity, trends: $trends, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabPulseImpl &&
            (identical(other.samplesInTransit, samplesInTransit) ||
                other.samplesInTransit == samplesInTransit) &&
            (identical(other.samplesProcessing, samplesProcessing) ||
                other.samplesProcessing == samplesProcessing) &&
            (identical(other.samplesCompleted, samplesCompleted) ||
                other.samplesCompleted == samplesCompleted) &&
            (identical(other.samplesRejected, samplesRejected) ||
                other.samplesRejected == samplesRejected) &&
            const DeepCollectionEquality()
                .equals(other._tatAlerts, _tatAlerts) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            const DeepCollectionEquality().equals(other._trends, _trends) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      samplesInTransit,
      samplesProcessing,
      samplesCompleted,
      samplesRejected,
      const DeepCollectionEquality().hash(_tatAlerts),
      capacity,
      const DeepCollectionEquality().hash(_trends),
      timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LabPulseImplCopyWith<_$LabPulseImpl> get copyWith =>
      __$$LabPulseImplCopyWithImpl<_$LabPulseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LabPulseImplToJson(
      this,
    );
  }
}

abstract class _LabPulse implements LabPulse {
  const factory _LabPulse(
      {required final int samplesInTransit,
      required final int samplesProcessing,
      required final int samplesCompleted,
      required final int samplesRejected,
      required final List<TatAlert> tatAlerts,
      required final LabCapacity capacity,
      required final List<SampleTrendData> trends,
      required final DateTime timestamp}) = _$LabPulseImpl;

  factory _LabPulse.fromJson(Map<String, dynamic> json) =
      _$LabPulseImpl.fromJson;

  @override
  int get samplesInTransit;
  @override
  int get samplesProcessing;
  @override
  int get samplesCompleted;
  @override
  int get samplesRejected;
  @override
  List<TatAlert> get tatAlerts;
  @override
  LabCapacity get capacity;
  @override
  List<SampleTrendData> get trends;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$LabPulseImplCopyWith<_$LabPulseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TatAlert _$TatAlertFromJson(Map<String, dynamic> json) {
  return _TatAlert.fromJson(json);
}

/// @nodoc
mixin _$TatAlert {
  String get sampleId => throw _privateConstructorUsedError;
  String get testName => throw _privateConstructorUsedError;
  int get remainingMinutes => throw _privateConstructorUsedError;
  TatSeverity get severity => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TatAlertCopyWith<TatAlert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TatAlertCopyWith<$Res> {
  factory $TatAlertCopyWith(TatAlert value, $Res Function(TatAlert) then) =
      _$TatAlertCopyWithImpl<$Res, TatAlert>;
  @useResult
  $Res call(
      {String sampleId,
      String testName,
      int remainingMinutes,
      TatSeverity severity,
      DateTime deadline});
}

/// @nodoc
class _$TatAlertCopyWithImpl<$Res, $Val extends TatAlert>
    implements $TatAlertCopyWith<$Res> {
  _$TatAlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = null,
    Object? testName = null,
    Object? remainingMinutes = null,
    Object? severity = null,
    Object? deadline = null,
  }) {
    return _then(_value.copyWith(
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      testName: null == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as String,
      remainingMinutes: null == remainingMinutes
          ? _value.remainingMinutes
          : remainingMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as TatSeverity,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TatAlertImplCopyWith<$Res>
    implements $TatAlertCopyWith<$Res> {
  factory _$$TatAlertImplCopyWith(
          _$TatAlertImpl value, $Res Function(_$TatAlertImpl) then) =
      __$$TatAlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sampleId,
      String testName,
      int remainingMinutes,
      TatSeverity severity,
      DateTime deadline});
}

/// @nodoc
class __$$TatAlertImplCopyWithImpl<$Res>
    extends _$TatAlertCopyWithImpl<$Res, _$TatAlertImpl>
    implements _$$TatAlertImplCopyWith<$Res> {
  __$$TatAlertImplCopyWithImpl(
      _$TatAlertImpl _value, $Res Function(_$TatAlertImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = null,
    Object? testName = null,
    Object? remainingMinutes = null,
    Object? severity = null,
    Object? deadline = null,
  }) {
    return _then(_$TatAlertImpl(
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      testName: null == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as String,
      remainingMinutes: null == remainingMinutes
          ? _value.remainingMinutes
          : remainingMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as TatSeverity,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TatAlertImpl implements _TatAlert {
  const _$TatAlertImpl(
      {required this.sampleId,
      required this.testName,
      required this.remainingMinutes,
      required this.severity,
      required this.deadline});

  factory _$TatAlertImpl.fromJson(Map<String, dynamic> json) =>
      _$$TatAlertImplFromJson(json);

  @override
  final String sampleId;
  @override
  final String testName;
  @override
  final int remainingMinutes;
  @override
  final TatSeverity severity;
  @override
  final DateTime deadline;

  @override
  String toString() {
    return 'TatAlert(sampleId: $sampleId, testName: $testName, remainingMinutes: $remainingMinutes, severity: $severity, deadline: $deadline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TatAlertImpl &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            (identical(other.testName, testName) ||
                other.testName == testName) &&
            (identical(other.remainingMinutes, remainingMinutes) ||
                other.remainingMinutes == remainingMinutes) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, sampleId, testName, remainingMinutes, severity, deadline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TatAlertImplCopyWith<_$TatAlertImpl> get copyWith =>
      __$$TatAlertImplCopyWithImpl<_$TatAlertImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TatAlertImplToJson(
      this,
    );
  }
}

abstract class _TatAlert implements TatAlert {
  const factory _TatAlert(
      {required final String sampleId,
      required final String testName,
      required final int remainingMinutes,
      required final TatSeverity severity,
      required final DateTime deadline}) = _$TatAlertImpl;

  factory _TatAlert.fromJson(Map<String, dynamic> json) =
      _$TatAlertImpl.fromJson;

  @override
  String get sampleId;
  @override
  String get testName;
  @override
  int get remainingMinutes;
  @override
  TatSeverity get severity;
  @override
  DateTime get deadline;
  @override
  @JsonKey(ignore: true)
  _$$TatAlertImplCopyWith<_$TatAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LabCapacity _$LabCapacityFromJson(Map<String, dynamic> json) {
  return _LabCapacity.fromJson(json);
}

/// @nodoc
mixin _$LabCapacity {
  int get currentLoad => throw _privateConstructorUsedError;
  int get maxCapacity => throw _privateConstructorUsedError;
  double get utilizationPercentage => throw _privateConstructorUsedError;
  int get availableAnalyzers => throw _privateConstructorUsedError;
  int get totalAnalyzers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabCapacityCopyWith<LabCapacity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabCapacityCopyWith<$Res> {
  factory $LabCapacityCopyWith(
          LabCapacity value, $Res Function(LabCapacity) then) =
      _$LabCapacityCopyWithImpl<$Res, LabCapacity>;
  @useResult
  $Res call(
      {int currentLoad,
      int maxCapacity,
      double utilizationPercentage,
      int availableAnalyzers,
      int totalAnalyzers});
}

/// @nodoc
class _$LabCapacityCopyWithImpl<$Res, $Val extends LabCapacity>
    implements $LabCapacityCopyWith<$Res> {
  _$LabCapacityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLoad = null,
    Object? maxCapacity = null,
    Object? utilizationPercentage = null,
    Object? availableAnalyzers = null,
    Object? totalAnalyzers = null,
  }) {
    return _then(_value.copyWith(
      currentLoad: null == currentLoad
          ? _value.currentLoad
          : currentLoad // ignore: cast_nullable_to_non_nullable
              as int,
      maxCapacity: null == maxCapacity
          ? _value.maxCapacity
          : maxCapacity // ignore: cast_nullable_to_non_nullable
              as int,
      utilizationPercentage: null == utilizationPercentage
          ? _value.utilizationPercentage
          : utilizationPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      availableAnalyzers: null == availableAnalyzers
          ? _value.availableAnalyzers
          : availableAnalyzers // ignore: cast_nullable_to_non_nullable
              as int,
      totalAnalyzers: null == totalAnalyzers
          ? _value.totalAnalyzers
          : totalAnalyzers // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LabCapacityImplCopyWith<$Res>
    implements $LabCapacityCopyWith<$Res> {
  factory _$$LabCapacityImplCopyWith(
          _$LabCapacityImpl value, $Res Function(_$LabCapacityImpl) then) =
      __$$LabCapacityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentLoad,
      int maxCapacity,
      double utilizationPercentage,
      int availableAnalyzers,
      int totalAnalyzers});
}

/// @nodoc
class __$$LabCapacityImplCopyWithImpl<$Res>
    extends _$LabCapacityCopyWithImpl<$Res, _$LabCapacityImpl>
    implements _$$LabCapacityImplCopyWith<$Res> {
  __$$LabCapacityImplCopyWithImpl(
      _$LabCapacityImpl _value, $Res Function(_$LabCapacityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentLoad = null,
    Object? maxCapacity = null,
    Object? utilizationPercentage = null,
    Object? availableAnalyzers = null,
    Object? totalAnalyzers = null,
  }) {
    return _then(_$LabCapacityImpl(
      currentLoad: null == currentLoad
          ? _value.currentLoad
          : currentLoad // ignore: cast_nullable_to_non_nullable
              as int,
      maxCapacity: null == maxCapacity
          ? _value.maxCapacity
          : maxCapacity // ignore: cast_nullable_to_non_nullable
              as int,
      utilizationPercentage: null == utilizationPercentage
          ? _value.utilizationPercentage
          : utilizationPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      availableAnalyzers: null == availableAnalyzers
          ? _value.availableAnalyzers
          : availableAnalyzers // ignore: cast_nullable_to_non_nullable
              as int,
      totalAnalyzers: null == totalAnalyzers
          ? _value.totalAnalyzers
          : totalAnalyzers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LabCapacityImpl implements _LabCapacity {
  const _$LabCapacityImpl(
      {required this.currentLoad,
      required this.maxCapacity,
      required this.utilizationPercentage,
      required this.availableAnalyzers,
      required this.totalAnalyzers});

  factory _$LabCapacityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LabCapacityImplFromJson(json);

  @override
  final int currentLoad;
  @override
  final int maxCapacity;
  @override
  final double utilizationPercentage;
  @override
  final int availableAnalyzers;
  @override
  final int totalAnalyzers;

  @override
  String toString() {
    return 'LabCapacity(currentLoad: $currentLoad, maxCapacity: $maxCapacity, utilizationPercentage: $utilizationPercentage, availableAnalyzers: $availableAnalyzers, totalAnalyzers: $totalAnalyzers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabCapacityImpl &&
            (identical(other.currentLoad, currentLoad) ||
                other.currentLoad == currentLoad) &&
            (identical(other.maxCapacity, maxCapacity) ||
                other.maxCapacity == maxCapacity) &&
            (identical(other.utilizationPercentage, utilizationPercentage) ||
                other.utilizationPercentage == utilizationPercentage) &&
            (identical(other.availableAnalyzers, availableAnalyzers) ||
                other.availableAnalyzers == availableAnalyzers) &&
            (identical(other.totalAnalyzers, totalAnalyzers) ||
                other.totalAnalyzers == totalAnalyzers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentLoad, maxCapacity,
      utilizationPercentage, availableAnalyzers, totalAnalyzers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LabCapacityImplCopyWith<_$LabCapacityImpl> get copyWith =>
      __$$LabCapacityImplCopyWithImpl<_$LabCapacityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LabCapacityImplToJson(
      this,
    );
  }
}

abstract class _LabCapacity implements LabCapacity {
  const factory _LabCapacity(
      {required final int currentLoad,
      required final int maxCapacity,
      required final double utilizationPercentage,
      required final int availableAnalyzers,
      required final int totalAnalyzers}) = _$LabCapacityImpl;

  factory _LabCapacity.fromJson(Map<String, dynamic> json) =
      _$LabCapacityImpl.fromJson;

  @override
  int get currentLoad;
  @override
  int get maxCapacity;
  @override
  double get utilizationPercentage;
  @override
  int get availableAnalyzers;
  @override
  int get totalAnalyzers;
  @override
  @JsonKey(ignore: true)
  _$$LabCapacityImplCopyWith<_$LabCapacityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SampleTrendData _$SampleTrendDataFromJson(Map<String, dynamic> json) {
  return _SampleTrendData.fromJson(json);
}

/// @nodoc
mixin _$SampleTrendData {
  DateTime get timestamp => throw _privateConstructorUsedError;
  int get inTransit => throw _privateConstructorUsedError;
  int get processing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleTrendDataCopyWith<SampleTrendData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleTrendDataCopyWith<$Res> {
  factory $SampleTrendDataCopyWith(
          SampleTrendData value, $Res Function(SampleTrendData) then) =
      _$SampleTrendDataCopyWithImpl<$Res, SampleTrendData>;
  @useResult
  $Res call({DateTime timestamp, int inTransit, int processing});
}

/// @nodoc
class _$SampleTrendDataCopyWithImpl<$Res, $Val extends SampleTrendData>
    implements $SampleTrendDataCopyWith<$Res> {
  _$SampleTrendDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? inTransit = null,
    Object? processing = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inTransit: null == inTransit
          ? _value.inTransit
          : inTransit // ignore: cast_nullable_to_non_nullable
              as int,
      processing: null == processing
          ? _value.processing
          : processing // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleTrendDataImplCopyWith<$Res>
    implements $SampleTrendDataCopyWith<$Res> {
  factory _$$SampleTrendDataImplCopyWith(_$SampleTrendDataImpl value,
          $Res Function(_$SampleTrendDataImpl) then) =
      __$$SampleTrendDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime timestamp, int inTransit, int processing});
}

/// @nodoc
class __$$SampleTrendDataImplCopyWithImpl<$Res>
    extends _$SampleTrendDataCopyWithImpl<$Res, _$SampleTrendDataImpl>
    implements _$$SampleTrendDataImplCopyWith<$Res> {
  __$$SampleTrendDataImplCopyWithImpl(
      _$SampleTrendDataImpl _value, $Res Function(_$SampleTrendDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? inTransit = null,
    Object? processing = null,
  }) {
    return _then(_$SampleTrendDataImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      inTransit: null == inTransit
          ? _value.inTransit
          : inTransit // ignore: cast_nullable_to_non_nullable
              as int,
      processing: null == processing
          ? _value.processing
          : processing // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleTrendDataImpl implements _SampleTrendData {
  const _$SampleTrendDataImpl(
      {required this.timestamp,
      required this.inTransit,
      required this.processing});

  factory _$SampleTrendDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleTrendDataImplFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final int inTransit;
  @override
  final int processing;

  @override
  String toString() {
    return 'SampleTrendData(timestamp: $timestamp, inTransit: $inTransit, processing: $processing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleTrendDataImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.inTransit, inTransit) ||
                other.inTransit == inTransit) &&
            (identical(other.processing, processing) ||
                other.processing == processing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, timestamp, inTransit, processing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleTrendDataImplCopyWith<_$SampleTrendDataImpl> get copyWith =>
      __$$SampleTrendDataImplCopyWithImpl<_$SampleTrendDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleTrendDataImplToJson(
      this,
    );
  }
}

abstract class _SampleTrendData implements SampleTrendData {
  const factory _SampleTrendData(
      {required final DateTime timestamp,
      required final int inTransit,
      required final int processing}) = _$SampleTrendDataImpl;

  factory _SampleTrendData.fromJson(Map<String, dynamic> json) =
      _$SampleTrendDataImpl.fromJson;

  @override
  DateTime get timestamp;
  @override
  int get inTransit;
  @override
  int get processing;
  @override
  @JsonKey(ignore: true)
  _$$SampleTrendDataImplCopyWith<_$SampleTrendDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
