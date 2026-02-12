// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cold_chain_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ColdChainData _$ColdChainDataFromJson(Map<String, dynamic> json) {
  return _ColdChainData.fromJson(json);
}

/// @nodoc
mixin _$ColdChainData {
  String get sampleId => throw _privateConstructorUsedError;
  List<TelemetryReading> get readings => throw _privateConstructorUsedError;
  ColdChainCompliance get compliance => throw _privateConstructorUsedError;
  DateTime get monitoringStartTime => throw _privateConstructorUsedError;
  DateTime? get monitoringEndTime => throw _privateConstructorUsedError;
  String? get smartBagId => throw _privateConstructorUsedError;
  bool? get isManualLogging => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColdChainDataCopyWith<ColdChainData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColdChainDataCopyWith<$Res> {
  factory $ColdChainDataCopyWith(
          ColdChainData value, $Res Function(ColdChainData) then) =
      _$ColdChainDataCopyWithImpl<$Res, ColdChainData>;
  @useResult
  $Res call(
      {String sampleId,
      List<TelemetryReading> readings,
      ColdChainCompliance compliance,
      DateTime monitoringStartTime,
      DateTime? monitoringEndTime,
      String? smartBagId,
      bool? isManualLogging});

  $ColdChainComplianceCopyWith<$Res> get compliance;
}

/// @nodoc
class _$ColdChainDataCopyWithImpl<$Res, $Val extends ColdChainData>
    implements $ColdChainDataCopyWith<$Res> {
  _$ColdChainDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = null,
    Object? readings = null,
    Object? compliance = null,
    Object? monitoringStartTime = null,
    Object? monitoringEndTime = freezed,
    Object? smartBagId = freezed,
    Object? isManualLogging = freezed,
  }) {
    return _then(_value.copyWith(
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      readings: null == readings
          ? _value.readings
          : readings // ignore: cast_nullable_to_non_nullable
              as List<TelemetryReading>,
      compliance: null == compliance
          ? _value.compliance
          : compliance // ignore: cast_nullable_to_non_nullable
              as ColdChainCompliance,
      monitoringStartTime: null == monitoringStartTime
          ? _value.monitoringStartTime
          : monitoringStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      monitoringEndTime: freezed == monitoringEndTime
          ? _value.monitoringEndTime
          : monitoringEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      smartBagId: freezed == smartBagId
          ? _value.smartBagId
          : smartBagId // ignore: cast_nullable_to_non_nullable
              as String?,
      isManualLogging: freezed == isManualLogging
          ? _value.isManualLogging
          : isManualLogging // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ColdChainComplianceCopyWith<$Res> get compliance {
    return $ColdChainComplianceCopyWith<$Res>(_value.compliance, (value) {
      return _then(_value.copyWith(compliance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ColdChainDataImplCopyWith<$Res>
    implements $ColdChainDataCopyWith<$Res> {
  factory _$$ColdChainDataImplCopyWith(
          _$ColdChainDataImpl value, $Res Function(_$ColdChainDataImpl) then) =
      __$$ColdChainDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sampleId,
      List<TelemetryReading> readings,
      ColdChainCompliance compliance,
      DateTime monitoringStartTime,
      DateTime? monitoringEndTime,
      String? smartBagId,
      bool? isManualLogging});

  @override
  $ColdChainComplianceCopyWith<$Res> get compliance;
}

/// @nodoc
class __$$ColdChainDataImplCopyWithImpl<$Res>
    extends _$ColdChainDataCopyWithImpl<$Res, _$ColdChainDataImpl>
    implements _$$ColdChainDataImplCopyWith<$Res> {
  __$$ColdChainDataImplCopyWithImpl(
      _$ColdChainDataImpl _value, $Res Function(_$ColdChainDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sampleId = null,
    Object? readings = null,
    Object? compliance = null,
    Object? monitoringStartTime = null,
    Object? monitoringEndTime = freezed,
    Object? smartBagId = freezed,
    Object? isManualLogging = freezed,
  }) {
    return _then(_$ColdChainDataImpl(
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      readings: null == readings
          ? _value._readings
          : readings // ignore: cast_nullable_to_non_nullable
              as List<TelemetryReading>,
      compliance: null == compliance
          ? _value.compliance
          : compliance // ignore: cast_nullable_to_non_nullable
              as ColdChainCompliance,
      monitoringStartTime: null == monitoringStartTime
          ? _value.monitoringStartTime
          : monitoringStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      monitoringEndTime: freezed == monitoringEndTime
          ? _value.monitoringEndTime
          : monitoringEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      smartBagId: freezed == smartBagId
          ? _value.smartBagId
          : smartBagId // ignore: cast_nullable_to_non_nullable
              as String?,
      isManualLogging: freezed == isManualLogging
          ? _value.isManualLogging
          : isManualLogging // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColdChainDataImpl implements _ColdChainData {
  const _$ColdChainDataImpl(
      {required this.sampleId,
      required final List<TelemetryReading> readings,
      required this.compliance,
      required this.monitoringStartTime,
      this.monitoringEndTime,
      this.smartBagId,
      this.isManualLogging})
      : _readings = readings;

  factory _$ColdChainDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColdChainDataImplFromJson(json);

  @override
  final String sampleId;
  final List<TelemetryReading> _readings;
  @override
  List<TelemetryReading> get readings {
    if (_readings is EqualUnmodifiableListView) return _readings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readings);
  }

  @override
  final ColdChainCompliance compliance;
  @override
  final DateTime monitoringStartTime;
  @override
  final DateTime? monitoringEndTime;
  @override
  final String? smartBagId;
  @override
  final bool? isManualLogging;

  @override
  String toString() {
    return 'ColdChainData(sampleId: $sampleId, readings: $readings, compliance: $compliance, monitoringStartTime: $monitoringStartTime, monitoringEndTime: $monitoringEndTime, smartBagId: $smartBagId, isManualLogging: $isManualLogging)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColdChainDataImpl &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            const DeepCollectionEquality().equals(other._readings, _readings) &&
            (identical(other.compliance, compliance) ||
                other.compliance == compliance) &&
            (identical(other.monitoringStartTime, monitoringStartTime) ||
                other.monitoringStartTime == monitoringStartTime) &&
            (identical(other.monitoringEndTime, monitoringEndTime) ||
                other.monitoringEndTime == monitoringEndTime) &&
            (identical(other.smartBagId, smartBagId) ||
                other.smartBagId == smartBagId) &&
            (identical(other.isManualLogging, isManualLogging) ||
                other.isManualLogging == isManualLogging));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sampleId,
      const DeepCollectionEquality().hash(_readings),
      compliance,
      monitoringStartTime,
      monitoringEndTime,
      smartBagId,
      isManualLogging);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColdChainDataImplCopyWith<_$ColdChainDataImpl> get copyWith =>
      __$$ColdChainDataImplCopyWithImpl<_$ColdChainDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColdChainDataImplToJson(
      this,
    );
  }
}

abstract class _ColdChainData implements ColdChainData {
  const factory _ColdChainData(
      {required final String sampleId,
      required final List<TelemetryReading> readings,
      required final ColdChainCompliance compliance,
      required final DateTime monitoringStartTime,
      final DateTime? monitoringEndTime,
      final String? smartBagId,
      final bool? isManualLogging}) = _$ColdChainDataImpl;

  factory _ColdChainData.fromJson(Map<String, dynamic> json) =
      _$ColdChainDataImpl.fromJson;

  @override
  String get sampleId;
  @override
  List<TelemetryReading> get readings;
  @override
  ColdChainCompliance get compliance;
  @override
  DateTime get monitoringStartTime;
  @override
  DateTime? get monitoringEndTime;
  @override
  String? get smartBagId;
  @override
  bool? get isManualLogging;
  @override
  @JsonKey(ignore: true)
  _$$ColdChainDataImplCopyWith<_$ColdChainDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TelemetryReading _$TelemetryReadingFromJson(Map<String, dynamic> json) {
  return _TelemetryReading.fromJson(json);
}

/// @nodoc
mixin _$TelemetryReading {
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError; // Celsius
  double? get humidity => throw _privateConstructorUsedError;
  bool? get shockDetected => throw _privateConstructorUsedError;
  bool? get tiltDetected => throw _privateConstructorUsedError;
  bool? get lidOpenDetected => throw _privateConstructorUsedError;
  int? get batteryLevel => throw _privateConstructorUsedError;
  GeoLocation? get location => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TelemetryReadingCopyWith<TelemetryReading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelemetryReadingCopyWith<$Res> {
  factory $TelemetryReadingCopyWith(
          TelemetryReading value, $Res Function(TelemetryReading) then) =
      _$TelemetryReadingCopyWithImpl<$Res, TelemetryReading>;
  @useResult
  $Res call(
      {DateTime timestamp,
      double temperature,
      double? humidity,
      bool? shockDetected,
      bool? tiltDetected,
      bool? lidOpenDetected,
      int? batteryLevel,
      GeoLocation? location,
      String? deviceId});

  $GeoLocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$TelemetryReadingCopyWithImpl<$Res, $Val extends TelemetryReading>
    implements $TelemetryReadingCopyWith<$Res> {
  _$TelemetryReadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? temperature = null,
    Object? humidity = freezed,
    Object? shockDetected = freezed,
    Object? tiltDetected = freezed,
    Object? lidOpenDetected = freezed,
    Object? batteryLevel = freezed,
    Object? location = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      shockDetected: freezed == shockDetected
          ? _value.shockDetected
          : shockDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      tiltDetected: freezed == tiltDetected
          ? _value.tiltDetected
          : tiltDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      lidOpenDetected: freezed == lidOpenDetected
          ? _value.lidOpenDetected
          : lidOpenDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      batteryLevel: freezed == batteryLevel
          ? _value.batteryLevel
          : batteryLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $GeoLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TelemetryReadingImplCopyWith<$Res>
    implements $TelemetryReadingCopyWith<$Res> {
  factory _$$TelemetryReadingImplCopyWith(_$TelemetryReadingImpl value,
          $Res Function(_$TelemetryReadingImpl) then) =
      __$$TelemetryReadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime timestamp,
      double temperature,
      double? humidity,
      bool? shockDetected,
      bool? tiltDetected,
      bool? lidOpenDetected,
      int? batteryLevel,
      GeoLocation? location,
      String? deviceId});

  @override
  $GeoLocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$TelemetryReadingImplCopyWithImpl<$Res>
    extends _$TelemetryReadingCopyWithImpl<$Res, _$TelemetryReadingImpl>
    implements _$$TelemetryReadingImplCopyWith<$Res> {
  __$$TelemetryReadingImplCopyWithImpl(_$TelemetryReadingImpl _value,
      $Res Function(_$TelemetryReadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? temperature = null,
    Object? humidity = freezed,
    Object? shockDetected = freezed,
    Object? tiltDetected = freezed,
    Object? lidOpenDetected = freezed,
    Object? batteryLevel = freezed,
    Object? location = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(_$TelemetryReadingImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      shockDetected: freezed == shockDetected
          ? _value.shockDetected
          : shockDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      tiltDetected: freezed == tiltDetected
          ? _value.tiltDetected
          : tiltDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      lidOpenDetected: freezed == lidOpenDetected
          ? _value.lidOpenDetected
          : lidOpenDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      batteryLevel: freezed == batteryLevel
          ? _value.batteryLevel
          : batteryLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TelemetryReadingImpl implements _TelemetryReading {
  const _$TelemetryReadingImpl(
      {required this.timestamp,
      required this.temperature,
      this.humidity,
      this.shockDetected,
      this.tiltDetected,
      this.lidOpenDetected,
      this.batteryLevel,
      this.location,
      this.deviceId});

  factory _$TelemetryReadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelemetryReadingImplFromJson(json);

  @override
  final DateTime timestamp;
  @override
  final double temperature;
// Celsius
  @override
  final double? humidity;
  @override
  final bool? shockDetected;
  @override
  final bool? tiltDetected;
  @override
  final bool? lidOpenDetected;
  @override
  final int? batteryLevel;
  @override
  final GeoLocation? location;
  @override
  final String? deviceId;

  @override
  String toString() {
    return 'TelemetryReading(timestamp: $timestamp, temperature: $temperature, humidity: $humidity, shockDetected: $shockDetected, tiltDetected: $tiltDetected, lidOpenDetected: $lidOpenDetected, batteryLevel: $batteryLevel, location: $location, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelemetryReadingImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.shockDetected, shockDetected) ||
                other.shockDetected == shockDetected) &&
            (identical(other.tiltDetected, tiltDetected) ||
                other.tiltDetected == tiltDetected) &&
            (identical(other.lidOpenDetected, lidOpenDetected) ||
                other.lidOpenDetected == lidOpenDetected) &&
            (identical(other.batteryLevel, batteryLevel) ||
                other.batteryLevel == batteryLevel) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      timestamp,
      temperature,
      humidity,
      shockDetected,
      tiltDetected,
      lidOpenDetected,
      batteryLevel,
      location,
      deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TelemetryReadingImplCopyWith<_$TelemetryReadingImpl> get copyWith =>
      __$$TelemetryReadingImplCopyWithImpl<_$TelemetryReadingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelemetryReadingImplToJson(
      this,
    );
  }
}

abstract class _TelemetryReading implements TelemetryReading {
  const factory _TelemetryReading(
      {required final DateTime timestamp,
      required final double temperature,
      final double? humidity,
      final bool? shockDetected,
      final bool? tiltDetected,
      final bool? lidOpenDetected,
      final int? batteryLevel,
      final GeoLocation? location,
      final String? deviceId}) = _$TelemetryReadingImpl;

  factory _TelemetryReading.fromJson(Map<String, dynamic> json) =
      _$TelemetryReadingImpl.fromJson;

  @override
  DateTime get timestamp;
  @override
  double get temperature;
  @override // Celsius
  double? get humidity;
  @override
  bool? get shockDetected;
  @override
  bool? get tiltDetected;
  @override
  bool? get lidOpenDetected;
  @override
  int? get batteryLevel;
  @override
  GeoLocation? get location;
  @override
  String? get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$TelemetryReadingImplCopyWith<_$TelemetryReadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ColdChainCompliance _$ColdChainComplianceFromJson(Map<String, dynamic> json) {
  return _ColdChainCompliance.fromJson(json);
}

/// @nodoc
mixin _$ColdChainCompliance {
  double get compliancePercentage =>
      throw _privateConstructorUsedError; // 0-100
  int get totalReadings => throw _privateConstructorUsedError;
  int get compliantReadings => throw _privateConstructorUsedError;
  int get breachCount => throw _privateConstructorUsedError;
  List<TemperatureBreach> get breaches => throw _privateConstructorUsedError;
  double get maxDeviation => throw _privateConstructorUsedError;
  int get totalExposureDuration =>
      throw _privateConstructorUsedError; // seconds
  CumulativeThermalStress get cumulativeStress =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColdChainComplianceCopyWith<ColdChainCompliance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColdChainComplianceCopyWith<$Res> {
  factory $ColdChainComplianceCopyWith(
          ColdChainCompliance value, $Res Function(ColdChainCompliance) then) =
      _$ColdChainComplianceCopyWithImpl<$Res, ColdChainCompliance>;
  @useResult
  $Res call(
      {double compliancePercentage,
      int totalReadings,
      int compliantReadings,
      int breachCount,
      List<TemperatureBreach> breaches,
      double maxDeviation,
      int totalExposureDuration,
      CumulativeThermalStress cumulativeStress});

  $CumulativeThermalStressCopyWith<$Res> get cumulativeStress;
}

/// @nodoc
class _$ColdChainComplianceCopyWithImpl<$Res, $Val extends ColdChainCompliance>
    implements $ColdChainComplianceCopyWith<$Res> {
  _$ColdChainComplianceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compliancePercentage = null,
    Object? totalReadings = null,
    Object? compliantReadings = null,
    Object? breachCount = null,
    Object? breaches = null,
    Object? maxDeviation = null,
    Object? totalExposureDuration = null,
    Object? cumulativeStress = null,
  }) {
    return _then(_value.copyWith(
      compliancePercentage: null == compliancePercentage
          ? _value.compliancePercentage
          : compliancePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      totalReadings: null == totalReadings
          ? _value.totalReadings
          : totalReadings // ignore: cast_nullable_to_non_nullable
              as int,
      compliantReadings: null == compliantReadings
          ? _value.compliantReadings
          : compliantReadings // ignore: cast_nullable_to_non_nullable
              as int,
      breachCount: null == breachCount
          ? _value.breachCount
          : breachCount // ignore: cast_nullable_to_non_nullable
              as int,
      breaches: null == breaches
          ? _value.breaches
          : breaches // ignore: cast_nullable_to_non_nullable
              as List<TemperatureBreach>,
      maxDeviation: null == maxDeviation
          ? _value.maxDeviation
          : maxDeviation // ignore: cast_nullable_to_non_nullable
              as double,
      totalExposureDuration: null == totalExposureDuration
          ? _value.totalExposureDuration
          : totalExposureDuration // ignore: cast_nullable_to_non_nullable
              as int,
      cumulativeStress: null == cumulativeStress
          ? _value.cumulativeStress
          : cumulativeStress // ignore: cast_nullable_to_non_nullable
              as CumulativeThermalStress,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CumulativeThermalStressCopyWith<$Res> get cumulativeStress {
    return $CumulativeThermalStressCopyWith<$Res>(_value.cumulativeStress,
        (value) {
      return _then(_value.copyWith(cumulativeStress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ColdChainComplianceImplCopyWith<$Res>
    implements $ColdChainComplianceCopyWith<$Res> {
  factory _$$ColdChainComplianceImplCopyWith(_$ColdChainComplianceImpl value,
          $Res Function(_$ColdChainComplianceImpl) then) =
      __$$ColdChainComplianceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double compliancePercentage,
      int totalReadings,
      int compliantReadings,
      int breachCount,
      List<TemperatureBreach> breaches,
      double maxDeviation,
      int totalExposureDuration,
      CumulativeThermalStress cumulativeStress});

  @override
  $CumulativeThermalStressCopyWith<$Res> get cumulativeStress;
}

/// @nodoc
class __$$ColdChainComplianceImplCopyWithImpl<$Res>
    extends _$ColdChainComplianceCopyWithImpl<$Res, _$ColdChainComplianceImpl>
    implements _$$ColdChainComplianceImplCopyWith<$Res> {
  __$$ColdChainComplianceImplCopyWithImpl(_$ColdChainComplianceImpl _value,
      $Res Function(_$ColdChainComplianceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compliancePercentage = null,
    Object? totalReadings = null,
    Object? compliantReadings = null,
    Object? breachCount = null,
    Object? breaches = null,
    Object? maxDeviation = null,
    Object? totalExposureDuration = null,
    Object? cumulativeStress = null,
  }) {
    return _then(_$ColdChainComplianceImpl(
      compliancePercentage: null == compliancePercentage
          ? _value.compliancePercentage
          : compliancePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      totalReadings: null == totalReadings
          ? _value.totalReadings
          : totalReadings // ignore: cast_nullable_to_non_nullable
              as int,
      compliantReadings: null == compliantReadings
          ? _value.compliantReadings
          : compliantReadings // ignore: cast_nullable_to_non_nullable
              as int,
      breachCount: null == breachCount
          ? _value.breachCount
          : breachCount // ignore: cast_nullable_to_non_nullable
              as int,
      breaches: null == breaches
          ? _value._breaches
          : breaches // ignore: cast_nullable_to_non_nullable
              as List<TemperatureBreach>,
      maxDeviation: null == maxDeviation
          ? _value.maxDeviation
          : maxDeviation // ignore: cast_nullable_to_non_nullable
              as double,
      totalExposureDuration: null == totalExposureDuration
          ? _value.totalExposureDuration
          : totalExposureDuration // ignore: cast_nullable_to_non_nullable
              as int,
      cumulativeStress: null == cumulativeStress
          ? _value.cumulativeStress
          : cumulativeStress // ignore: cast_nullable_to_non_nullable
              as CumulativeThermalStress,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColdChainComplianceImpl implements _ColdChainCompliance {
  const _$ColdChainComplianceImpl(
      {required this.compliancePercentage,
      required this.totalReadings,
      required this.compliantReadings,
      required this.breachCount,
      required final List<TemperatureBreach> breaches,
      required this.maxDeviation,
      required this.totalExposureDuration,
      required this.cumulativeStress})
      : _breaches = breaches;

  factory _$ColdChainComplianceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColdChainComplianceImplFromJson(json);

  @override
  final double compliancePercentage;
// 0-100
  @override
  final int totalReadings;
  @override
  final int compliantReadings;
  @override
  final int breachCount;
  final List<TemperatureBreach> _breaches;
  @override
  List<TemperatureBreach> get breaches {
    if (_breaches is EqualUnmodifiableListView) return _breaches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breaches);
  }

  @override
  final double maxDeviation;
  @override
  final int totalExposureDuration;
// seconds
  @override
  final CumulativeThermalStress cumulativeStress;

  @override
  String toString() {
    return 'ColdChainCompliance(compliancePercentage: $compliancePercentage, totalReadings: $totalReadings, compliantReadings: $compliantReadings, breachCount: $breachCount, breaches: $breaches, maxDeviation: $maxDeviation, totalExposureDuration: $totalExposureDuration, cumulativeStress: $cumulativeStress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColdChainComplianceImpl &&
            (identical(other.compliancePercentage, compliancePercentage) ||
                other.compliancePercentage == compliancePercentage) &&
            (identical(other.totalReadings, totalReadings) ||
                other.totalReadings == totalReadings) &&
            (identical(other.compliantReadings, compliantReadings) ||
                other.compliantReadings == compliantReadings) &&
            (identical(other.breachCount, breachCount) ||
                other.breachCount == breachCount) &&
            const DeepCollectionEquality().equals(other._breaches, _breaches) &&
            (identical(other.maxDeviation, maxDeviation) ||
                other.maxDeviation == maxDeviation) &&
            (identical(other.totalExposureDuration, totalExposureDuration) ||
                other.totalExposureDuration == totalExposureDuration) &&
            (identical(other.cumulativeStress, cumulativeStress) ||
                other.cumulativeStress == cumulativeStress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      compliancePercentage,
      totalReadings,
      compliantReadings,
      breachCount,
      const DeepCollectionEquality().hash(_breaches),
      maxDeviation,
      totalExposureDuration,
      cumulativeStress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColdChainComplianceImplCopyWith<_$ColdChainComplianceImpl> get copyWith =>
      __$$ColdChainComplianceImplCopyWithImpl<_$ColdChainComplianceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColdChainComplianceImplToJson(
      this,
    );
  }
}

abstract class _ColdChainCompliance implements ColdChainCompliance {
  const factory _ColdChainCompliance(
          {required final double compliancePercentage,
          required final int totalReadings,
          required final int compliantReadings,
          required final int breachCount,
          required final List<TemperatureBreach> breaches,
          required final double maxDeviation,
          required final int totalExposureDuration,
          required final CumulativeThermalStress cumulativeStress}) =
      _$ColdChainComplianceImpl;

  factory _ColdChainCompliance.fromJson(Map<String, dynamic> json) =
      _$ColdChainComplianceImpl.fromJson;

  @override
  double get compliancePercentage;
  @override // 0-100
  int get totalReadings;
  @override
  int get compliantReadings;
  @override
  int get breachCount;
  @override
  List<TemperatureBreach> get breaches;
  @override
  double get maxDeviation;
  @override
  int get totalExposureDuration;
  @override // seconds
  CumulativeThermalStress get cumulativeStress;
  @override
  @JsonKey(ignore: true)
  _$$ColdChainComplianceImplCopyWith<_$ColdChainComplianceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TemperatureBreach _$TemperatureBreachFromJson(Map<String, dynamic> json) {
  return _TemperatureBreach.fromJson(json);
}

/// @nodoc
mixin _$TemperatureBreach {
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  double get peakTemperature => throw _privateConstructorUsedError;
  int get durationSeconds => throw _privateConstructorUsedError;
  BreachSeverity get severity => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemperatureBreachCopyWith<TemperatureBreach> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureBreachCopyWith<$Res> {
  factory $TemperatureBreachCopyWith(
          TemperatureBreach value, $Res Function(TemperatureBreach) then) =
      _$TemperatureBreachCopyWithImpl<$Res, TemperatureBreach>;
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      double peakTemperature,
      int durationSeconds,
      BreachSeverity severity,
      String? notes});
}

/// @nodoc
class _$TemperatureBreachCopyWithImpl<$Res, $Val extends TemperatureBreach>
    implements $TemperatureBreachCopyWith<$Res> {
  _$TemperatureBreachCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? peakTemperature = null,
    Object? durationSeconds = null,
    Object? severity = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      peakTemperature: null == peakTemperature
          ? _value.peakTemperature
          : peakTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as BreachSeverity,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemperatureBreachImplCopyWith<$Res>
    implements $TemperatureBreachCopyWith<$Res> {
  factory _$$TemperatureBreachImplCopyWith(_$TemperatureBreachImpl value,
          $Res Function(_$TemperatureBreachImpl) then) =
      __$$TemperatureBreachImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime startTime,
      DateTime endTime,
      double peakTemperature,
      int durationSeconds,
      BreachSeverity severity,
      String? notes});
}

/// @nodoc
class __$$TemperatureBreachImplCopyWithImpl<$Res>
    extends _$TemperatureBreachCopyWithImpl<$Res, _$TemperatureBreachImpl>
    implements _$$TemperatureBreachImplCopyWith<$Res> {
  __$$TemperatureBreachImplCopyWithImpl(_$TemperatureBreachImpl _value,
      $Res Function(_$TemperatureBreachImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? peakTemperature = null,
    Object? durationSeconds = null,
    Object? severity = null,
    Object? notes = freezed,
  }) {
    return _then(_$TemperatureBreachImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      peakTemperature: null == peakTemperature
          ? _value.peakTemperature
          : peakTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as BreachSeverity,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemperatureBreachImpl implements _TemperatureBreach {
  const _$TemperatureBreachImpl(
      {required this.startTime,
      required this.endTime,
      required this.peakTemperature,
      required this.durationSeconds,
      required this.severity,
      this.notes});

  factory _$TemperatureBreachImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureBreachImplFromJson(json);

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final double peakTemperature;
  @override
  final int durationSeconds;
  @override
  final BreachSeverity severity;
  @override
  final String? notes;

  @override
  String toString() {
    return 'TemperatureBreach(startTime: $startTime, endTime: $endTime, peakTemperature: $peakTemperature, durationSeconds: $durationSeconds, severity: $severity, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureBreachImpl &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.peakTemperature, peakTemperature) ||
                other.peakTemperature == peakTemperature) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime,
      peakTemperature, durationSeconds, severity, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureBreachImplCopyWith<_$TemperatureBreachImpl> get copyWith =>
      __$$TemperatureBreachImplCopyWithImpl<_$TemperatureBreachImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemperatureBreachImplToJson(
      this,
    );
  }
}

abstract class _TemperatureBreach implements TemperatureBreach {
  const factory _TemperatureBreach(
      {required final DateTime startTime,
      required final DateTime endTime,
      required final double peakTemperature,
      required final int durationSeconds,
      required final BreachSeverity severity,
      final String? notes}) = _$TemperatureBreachImpl;

  factory _TemperatureBreach.fromJson(Map<String, dynamic> json) =
      _$TemperatureBreachImpl.fromJson;

  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  double get peakTemperature;
  @override
  int get durationSeconds;
  @override
  BreachSeverity get severity;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$TemperatureBreachImplCopyWith<_$TemperatureBreachImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CumulativeThermalStress _$CumulativeThermalStressFromJson(
    Map<String, dynamic> json) {
  return _CumulativeThermalStress.fromJson(json);
}

/// @nodoc
mixin _$CumulativeThermalStress {
  double get stressIndex => throw _privateConstructorUsedError; // 0-100
  double get predictedDegradation =>
      throw _privateConstructorUsedError; // 0-100%
  String? get recommendation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CumulativeThermalStressCopyWith<CumulativeThermalStress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CumulativeThermalStressCopyWith<$Res> {
  factory $CumulativeThermalStressCopyWith(CumulativeThermalStress value,
          $Res Function(CumulativeThermalStress) then) =
      _$CumulativeThermalStressCopyWithImpl<$Res, CumulativeThermalStress>;
  @useResult
  $Res call(
      {double stressIndex,
      double predictedDegradation,
      String? recommendation});
}

/// @nodoc
class _$CumulativeThermalStressCopyWithImpl<$Res,
        $Val extends CumulativeThermalStress>
    implements $CumulativeThermalStressCopyWith<$Res> {
  _$CumulativeThermalStressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stressIndex = null,
    Object? predictedDegradation = null,
    Object? recommendation = freezed,
  }) {
    return _then(_value.copyWith(
      stressIndex: null == stressIndex
          ? _value.stressIndex
          : stressIndex // ignore: cast_nullable_to_non_nullable
              as double,
      predictedDegradation: null == predictedDegradation
          ? _value.predictedDegradation
          : predictedDegradation // ignore: cast_nullable_to_non_nullable
              as double,
      recommendation: freezed == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CumulativeThermalStressImplCopyWith<$Res>
    implements $CumulativeThermalStressCopyWith<$Res> {
  factory _$$CumulativeThermalStressImplCopyWith(
          _$CumulativeThermalStressImpl value,
          $Res Function(_$CumulativeThermalStressImpl) then) =
      __$$CumulativeThermalStressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double stressIndex,
      double predictedDegradation,
      String? recommendation});
}

/// @nodoc
class __$$CumulativeThermalStressImplCopyWithImpl<$Res>
    extends _$CumulativeThermalStressCopyWithImpl<$Res,
        _$CumulativeThermalStressImpl>
    implements _$$CumulativeThermalStressImplCopyWith<$Res> {
  __$$CumulativeThermalStressImplCopyWithImpl(
      _$CumulativeThermalStressImpl _value,
      $Res Function(_$CumulativeThermalStressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stressIndex = null,
    Object? predictedDegradation = null,
    Object? recommendation = freezed,
  }) {
    return _then(_$CumulativeThermalStressImpl(
      stressIndex: null == stressIndex
          ? _value.stressIndex
          : stressIndex // ignore: cast_nullable_to_non_nullable
              as double,
      predictedDegradation: null == predictedDegradation
          ? _value.predictedDegradation
          : predictedDegradation // ignore: cast_nullable_to_non_nullable
              as double,
      recommendation: freezed == recommendation
          ? _value.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CumulativeThermalStressImpl implements _CumulativeThermalStress {
  const _$CumulativeThermalStressImpl(
      {required this.stressIndex,
      required this.predictedDegradation,
      this.recommendation});

  factory _$CumulativeThermalStressImpl.fromJson(Map<String, dynamic> json) =>
      _$$CumulativeThermalStressImplFromJson(json);

  @override
  final double stressIndex;
// 0-100
  @override
  final double predictedDegradation;
// 0-100%
  @override
  final String? recommendation;

  @override
  String toString() {
    return 'CumulativeThermalStress(stressIndex: $stressIndex, predictedDegradation: $predictedDegradation, recommendation: $recommendation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CumulativeThermalStressImpl &&
            (identical(other.stressIndex, stressIndex) ||
                other.stressIndex == stressIndex) &&
            (identical(other.predictedDegradation, predictedDegradation) ||
                other.predictedDegradation == predictedDegradation) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, stressIndex, predictedDegradation, recommendation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CumulativeThermalStressImplCopyWith<_$CumulativeThermalStressImpl>
      get copyWith => __$$CumulativeThermalStressImplCopyWithImpl<
          _$CumulativeThermalStressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CumulativeThermalStressImplToJson(
      this,
    );
  }
}

abstract class _CumulativeThermalStress implements CumulativeThermalStress {
  const factory _CumulativeThermalStress(
      {required final double stressIndex,
      required final double predictedDegradation,
      final String? recommendation}) = _$CumulativeThermalStressImpl;

  factory _CumulativeThermalStress.fromJson(Map<String, dynamic> json) =
      _$CumulativeThermalStressImpl.fromJson;

  @override
  double get stressIndex;
  @override // 0-100
  double get predictedDegradation;
  @override // 0-100%
  String? get recommendation;
  @override
  @JsonKey(ignore: true)
  _$$CumulativeThermalStressImplCopyWith<_$CumulativeThermalStressImpl>
      get copyWith => throw _privateConstructorUsedError;
}
