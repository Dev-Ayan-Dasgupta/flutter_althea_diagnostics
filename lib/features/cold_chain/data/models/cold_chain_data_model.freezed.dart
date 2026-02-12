// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cold_chain_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ColdChainDataModel _$ColdChainDataModelFromJson(Map<String, dynamic> json) {
  return _ColdChainDataModel.fromJson(json);
}

/// @nodoc
mixin _$ColdChainDataModel {
  String get sampleId => throw _privateConstructorUsedError;
  List<TelemetryReadingModel> get readings =>
      throw _privateConstructorUsedError;
  ColdChainComplianceModel get compliance => throw _privateConstructorUsedError;
  String get monitoringStartTime => throw _privateConstructorUsedError;
  String? get monitoringEndTime => throw _privateConstructorUsedError;
  String? get smartBagId => throw _privateConstructorUsedError;
  bool? get isManualLogging => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColdChainDataModelCopyWith<ColdChainDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColdChainDataModelCopyWith<$Res> {
  factory $ColdChainDataModelCopyWith(
          ColdChainDataModel value, $Res Function(ColdChainDataModel) then) =
      _$ColdChainDataModelCopyWithImpl<$Res, ColdChainDataModel>;
  @useResult
  $Res call(
      {String sampleId,
      List<TelemetryReadingModel> readings,
      ColdChainComplianceModel compliance,
      String monitoringStartTime,
      String? monitoringEndTime,
      String? smartBagId,
      bool? isManualLogging});

  $ColdChainComplianceModelCopyWith<$Res> get compliance;
}

/// @nodoc
class _$ColdChainDataModelCopyWithImpl<$Res, $Val extends ColdChainDataModel>
    implements $ColdChainDataModelCopyWith<$Res> {
  _$ColdChainDataModelCopyWithImpl(this._value, this._then);

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
              as List<TelemetryReadingModel>,
      compliance: null == compliance
          ? _value.compliance
          : compliance // ignore: cast_nullable_to_non_nullable
              as ColdChainComplianceModel,
      monitoringStartTime: null == monitoringStartTime
          ? _value.monitoringStartTime
          : monitoringStartTime // ignore: cast_nullable_to_non_nullable
              as String,
      monitoringEndTime: freezed == monitoringEndTime
          ? _value.monitoringEndTime
          : monitoringEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $ColdChainComplianceModelCopyWith<$Res> get compliance {
    return $ColdChainComplianceModelCopyWith<$Res>(_value.compliance, (value) {
      return _then(_value.copyWith(compliance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ColdChainDataModelImplCopyWith<$Res>
    implements $ColdChainDataModelCopyWith<$Res> {
  factory _$$ColdChainDataModelImplCopyWith(_$ColdChainDataModelImpl value,
          $Res Function(_$ColdChainDataModelImpl) then) =
      __$$ColdChainDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sampleId,
      List<TelemetryReadingModel> readings,
      ColdChainComplianceModel compliance,
      String monitoringStartTime,
      String? monitoringEndTime,
      String? smartBagId,
      bool? isManualLogging});

  @override
  $ColdChainComplianceModelCopyWith<$Res> get compliance;
}

/// @nodoc
class __$$ColdChainDataModelImplCopyWithImpl<$Res>
    extends _$ColdChainDataModelCopyWithImpl<$Res, _$ColdChainDataModelImpl>
    implements _$$ColdChainDataModelImplCopyWith<$Res> {
  __$$ColdChainDataModelImplCopyWithImpl(_$ColdChainDataModelImpl _value,
      $Res Function(_$ColdChainDataModelImpl) _then)
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
    return _then(_$ColdChainDataModelImpl(
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      readings: null == readings
          ? _value._readings
          : readings // ignore: cast_nullable_to_non_nullable
              as List<TelemetryReadingModel>,
      compliance: null == compliance
          ? _value.compliance
          : compliance // ignore: cast_nullable_to_non_nullable
              as ColdChainComplianceModel,
      monitoringStartTime: null == monitoringStartTime
          ? _value.monitoringStartTime
          : monitoringStartTime // ignore: cast_nullable_to_non_nullable
              as String,
      monitoringEndTime: freezed == monitoringEndTime
          ? _value.monitoringEndTime
          : monitoringEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ColdChainDataModelImpl implements _ColdChainDataModel {
  const _$ColdChainDataModelImpl(
      {required this.sampleId,
      required final List<TelemetryReadingModel> readings,
      required this.compliance,
      required this.monitoringStartTime,
      this.monitoringEndTime,
      this.smartBagId,
      this.isManualLogging})
      : _readings = readings;

  factory _$ColdChainDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColdChainDataModelImplFromJson(json);

  @override
  final String sampleId;
  final List<TelemetryReadingModel> _readings;
  @override
  List<TelemetryReadingModel> get readings {
    if (_readings is EqualUnmodifiableListView) return _readings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readings);
  }

  @override
  final ColdChainComplianceModel compliance;
  @override
  final String monitoringStartTime;
  @override
  final String? monitoringEndTime;
  @override
  final String? smartBagId;
  @override
  final bool? isManualLogging;

  @override
  String toString() {
    return 'ColdChainDataModel(sampleId: $sampleId, readings: $readings, compliance: $compliance, monitoringStartTime: $monitoringStartTime, monitoringEndTime: $monitoringEndTime, smartBagId: $smartBagId, isManualLogging: $isManualLogging)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColdChainDataModelImpl &&
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
  _$$ColdChainDataModelImplCopyWith<_$ColdChainDataModelImpl> get copyWith =>
      __$$ColdChainDataModelImplCopyWithImpl<_$ColdChainDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColdChainDataModelImplToJson(
      this,
    );
  }
}

abstract class _ColdChainDataModel implements ColdChainDataModel {
  const factory _ColdChainDataModel(
      {required final String sampleId,
      required final List<TelemetryReadingModel> readings,
      required final ColdChainComplianceModel compliance,
      required final String monitoringStartTime,
      final String? monitoringEndTime,
      final String? smartBagId,
      final bool? isManualLogging}) = _$ColdChainDataModelImpl;

  factory _ColdChainDataModel.fromJson(Map<String, dynamic> json) =
      _$ColdChainDataModelImpl.fromJson;

  @override
  String get sampleId;
  @override
  List<TelemetryReadingModel> get readings;
  @override
  ColdChainComplianceModel get compliance;
  @override
  String get monitoringStartTime;
  @override
  String? get monitoringEndTime;
  @override
  String? get smartBagId;
  @override
  bool? get isManualLogging;
  @override
  @JsonKey(ignore: true)
  _$$ColdChainDataModelImplCopyWith<_$ColdChainDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TelemetryReadingModel _$TelemetryReadingModelFromJson(
    Map<String, dynamic> json) {
  return _TelemetryReadingModel.fromJson(json);
}

/// @nodoc
mixin _$TelemetryReadingModel {
  String get timestamp => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double? get humidity => throw _privateConstructorUsedError;
  bool? get shockDetected => throw _privateConstructorUsedError;
  bool? get tiltDetected => throw _privateConstructorUsedError;
  bool? get lidOpenDetected => throw _privateConstructorUsedError;
  int? get batteryLevel => throw _privateConstructorUsedError;
  GeoLocationModel? get location => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TelemetryReadingModelCopyWith<TelemetryReadingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TelemetryReadingModelCopyWith<$Res> {
  factory $TelemetryReadingModelCopyWith(TelemetryReadingModel value,
          $Res Function(TelemetryReadingModel) then) =
      _$TelemetryReadingModelCopyWithImpl<$Res, TelemetryReadingModel>;
  @useResult
  $Res call(
      {String timestamp,
      double temperature,
      double? humidity,
      bool? shockDetected,
      bool? tiltDetected,
      bool? lidOpenDetected,
      int? batteryLevel,
      GeoLocationModel? location,
      String? deviceId});

  $GeoLocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$TelemetryReadingModelCopyWithImpl<$Res,
        $Val extends TelemetryReadingModel>
    implements $TelemetryReadingModelCopyWith<$Res> {
  _$TelemetryReadingModelCopyWithImpl(this._value, this._then);

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
              as String,
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
              as GeoLocationModel?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoLocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $GeoLocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TelemetryReadingModelImplCopyWith<$Res>
    implements $TelemetryReadingModelCopyWith<$Res> {
  factory _$$TelemetryReadingModelImplCopyWith(
          _$TelemetryReadingModelImpl value,
          $Res Function(_$TelemetryReadingModelImpl) then) =
      __$$TelemetryReadingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String timestamp,
      double temperature,
      double? humidity,
      bool? shockDetected,
      bool? tiltDetected,
      bool? lidOpenDetected,
      int? batteryLevel,
      GeoLocationModel? location,
      String? deviceId});

  @override
  $GeoLocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$TelemetryReadingModelImplCopyWithImpl<$Res>
    extends _$TelemetryReadingModelCopyWithImpl<$Res,
        _$TelemetryReadingModelImpl>
    implements _$$TelemetryReadingModelImplCopyWith<$Res> {
  __$$TelemetryReadingModelImplCopyWithImpl(_$TelemetryReadingModelImpl _value,
      $Res Function(_$TelemetryReadingModelImpl) _then)
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
    return _then(_$TelemetryReadingModelImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
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
              as GeoLocationModel?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TelemetryReadingModelImpl implements _TelemetryReadingModel {
  const _$TelemetryReadingModelImpl(
      {required this.timestamp,
      required this.temperature,
      this.humidity,
      this.shockDetected,
      this.tiltDetected,
      this.lidOpenDetected,
      this.batteryLevel,
      this.location,
      this.deviceId});

  factory _$TelemetryReadingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TelemetryReadingModelImplFromJson(json);

  @override
  final String timestamp;
  @override
  final double temperature;
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
  final GeoLocationModel? location;
  @override
  final String? deviceId;

  @override
  String toString() {
    return 'TelemetryReadingModel(timestamp: $timestamp, temperature: $temperature, humidity: $humidity, shockDetected: $shockDetected, tiltDetected: $tiltDetected, lidOpenDetected: $lidOpenDetected, batteryLevel: $batteryLevel, location: $location, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TelemetryReadingModelImpl &&
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
  _$$TelemetryReadingModelImplCopyWith<_$TelemetryReadingModelImpl>
      get copyWith => __$$TelemetryReadingModelImplCopyWithImpl<
          _$TelemetryReadingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TelemetryReadingModelImplToJson(
      this,
    );
  }
}

abstract class _TelemetryReadingModel implements TelemetryReadingModel {
  const factory _TelemetryReadingModel(
      {required final String timestamp,
      required final double temperature,
      final double? humidity,
      final bool? shockDetected,
      final bool? tiltDetected,
      final bool? lidOpenDetected,
      final int? batteryLevel,
      final GeoLocationModel? location,
      final String? deviceId}) = _$TelemetryReadingModelImpl;

  factory _TelemetryReadingModel.fromJson(Map<String, dynamic> json) =
      _$TelemetryReadingModelImpl.fromJson;

  @override
  String get timestamp;
  @override
  double get temperature;
  @override
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
  GeoLocationModel? get location;
  @override
  String? get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$TelemetryReadingModelImplCopyWith<_$TelemetryReadingModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ColdChainComplianceModel _$ColdChainComplianceModelFromJson(
    Map<String, dynamic> json) {
  return _ColdChainComplianceModel.fromJson(json);
}

/// @nodoc
mixin _$ColdChainComplianceModel {
  double get compliancePercentage => throw _privateConstructorUsedError;
  int get totalReadings => throw _privateConstructorUsedError;
  int get compliantReadings => throw _privateConstructorUsedError;
  int get breachCount => throw _privateConstructorUsedError;
  List<TemperatureBreachModel> get breaches =>
      throw _privateConstructorUsedError;
  double get maxDeviation => throw _privateConstructorUsedError;
  int get totalExposureDuration => throw _privateConstructorUsedError;
  CumulativeThermalStressModel get cumulativeStress =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColdChainComplianceModelCopyWith<ColdChainComplianceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColdChainComplianceModelCopyWith<$Res> {
  factory $ColdChainComplianceModelCopyWith(ColdChainComplianceModel value,
          $Res Function(ColdChainComplianceModel) then) =
      _$ColdChainComplianceModelCopyWithImpl<$Res, ColdChainComplianceModel>;
  @useResult
  $Res call(
      {double compliancePercentage,
      int totalReadings,
      int compliantReadings,
      int breachCount,
      List<TemperatureBreachModel> breaches,
      double maxDeviation,
      int totalExposureDuration,
      CumulativeThermalStressModel cumulativeStress});

  $CumulativeThermalStressModelCopyWith<$Res> get cumulativeStress;
}

/// @nodoc
class _$ColdChainComplianceModelCopyWithImpl<$Res,
        $Val extends ColdChainComplianceModel>
    implements $ColdChainComplianceModelCopyWith<$Res> {
  _$ColdChainComplianceModelCopyWithImpl(this._value, this._then);

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
              as List<TemperatureBreachModel>,
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
              as CumulativeThermalStressModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CumulativeThermalStressModelCopyWith<$Res> get cumulativeStress {
    return $CumulativeThermalStressModelCopyWith<$Res>(_value.cumulativeStress,
        (value) {
      return _then(_value.copyWith(cumulativeStress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ColdChainComplianceModelImplCopyWith<$Res>
    implements $ColdChainComplianceModelCopyWith<$Res> {
  factory _$$ColdChainComplianceModelImplCopyWith(
          _$ColdChainComplianceModelImpl value,
          $Res Function(_$ColdChainComplianceModelImpl) then) =
      __$$ColdChainComplianceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double compliancePercentage,
      int totalReadings,
      int compliantReadings,
      int breachCount,
      List<TemperatureBreachModel> breaches,
      double maxDeviation,
      int totalExposureDuration,
      CumulativeThermalStressModel cumulativeStress});

  @override
  $CumulativeThermalStressModelCopyWith<$Res> get cumulativeStress;
}

/// @nodoc
class __$$ColdChainComplianceModelImplCopyWithImpl<$Res>
    extends _$ColdChainComplianceModelCopyWithImpl<$Res,
        _$ColdChainComplianceModelImpl>
    implements _$$ColdChainComplianceModelImplCopyWith<$Res> {
  __$$ColdChainComplianceModelImplCopyWithImpl(
      _$ColdChainComplianceModelImpl _value,
      $Res Function(_$ColdChainComplianceModelImpl) _then)
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
    return _then(_$ColdChainComplianceModelImpl(
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
              as List<TemperatureBreachModel>,
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
              as CumulativeThermalStressModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColdChainComplianceModelImpl implements _ColdChainComplianceModel {
  const _$ColdChainComplianceModelImpl(
      {required this.compliancePercentage,
      required this.totalReadings,
      required this.compliantReadings,
      required this.breachCount,
      required final List<TemperatureBreachModel> breaches,
      required this.maxDeviation,
      required this.totalExposureDuration,
      required this.cumulativeStress})
      : _breaches = breaches;

  factory _$ColdChainComplianceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColdChainComplianceModelImplFromJson(json);

  @override
  final double compliancePercentage;
  @override
  final int totalReadings;
  @override
  final int compliantReadings;
  @override
  final int breachCount;
  final List<TemperatureBreachModel> _breaches;
  @override
  List<TemperatureBreachModel> get breaches {
    if (_breaches is EqualUnmodifiableListView) return _breaches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breaches);
  }

  @override
  final double maxDeviation;
  @override
  final int totalExposureDuration;
  @override
  final CumulativeThermalStressModel cumulativeStress;

  @override
  String toString() {
    return 'ColdChainComplianceModel(compliancePercentage: $compliancePercentage, totalReadings: $totalReadings, compliantReadings: $compliantReadings, breachCount: $breachCount, breaches: $breaches, maxDeviation: $maxDeviation, totalExposureDuration: $totalExposureDuration, cumulativeStress: $cumulativeStress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColdChainComplianceModelImpl &&
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
  _$$ColdChainComplianceModelImplCopyWith<_$ColdChainComplianceModelImpl>
      get copyWith => __$$ColdChainComplianceModelImplCopyWithImpl<
          _$ColdChainComplianceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColdChainComplianceModelImplToJson(
      this,
    );
  }
}

abstract class _ColdChainComplianceModel implements ColdChainComplianceModel {
  const factory _ColdChainComplianceModel(
          {required final double compliancePercentage,
          required final int totalReadings,
          required final int compliantReadings,
          required final int breachCount,
          required final List<TemperatureBreachModel> breaches,
          required final double maxDeviation,
          required final int totalExposureDuration,
          required final CumulativeThermalStressModel cumulativeStress}) =
      _$ColdChainComplianceModelImpl;

  factory _ColdChainComplianceModel.fromJson(Map<String, dynamic> json) =
      _$ColdChainComplianceModelImpl.fromJson;

  @override
  double get compliancePercentage;
  @override
  int get totalReadings;
  @override
  int get compliantReadings;
  @override
  int get breachCount;
  @override
  List<TemperatureBreachModel> get breaches;
  @override
  double get maxDeviation;
  @override
  int get totalExposureDuration;
  @override
  CumulativeThermalStressModel get cumulativeStress;
  @override
  @JsonKey(ignore: true)
  _$$ColdChainComplianceModelImplCopyWith<_$ColdChainComplianceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TemperatureBreachModel _$TemperatureBreachModelFromJson(
    Map<String, dynamic> json) {
  return _TemperatureBreachModel.fromJson(json);
}

/// @nodoc
mixin _$TemperatureBreachModel {
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  double get peakTemperature => throw _privateConstructorUsedError;
  int get durationSeconds => throw _privateConstructorUsedError;
  String get severity => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemperatureBreachModelCopyWith<TemperatureBreachModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureBreachModelCopyWith<$Res> {
  factory $TemperatureBreachModelCopyWith(TemperatureBreachModel value,
          $Res Function(TemperatureBreachModel) then) =
      _$TemperatureBreachModelCopyWithImpl<$Res, TemperatureBreachModel>;
  @useResult
  $Res call(
      {String startTime,
      String endTime,
      double peakTemperature,
      int durationSeconds,
      String severity,
      String? notes});
}

/// @nodoc
class _$TemperatureBreachModelCopyWithImpl<$Res,
        $Val extends TemperatureBreachModel>
    implements $TemperatureBreachModelCopyWith<$Res> {
  _$TemperatureBreachModelCopyWithImpl(this._value, this._then);

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
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemperatureBreachModelImplCopyWith<$Res>
    implements $TemperatureBreachModelCopyWith<$Res> {
  factory _$$TemperatureBreachModelImplCopyWith(
          _$TemperatureBreachModelImpl value,
          $Res Function(_$TemperatureBreachModelImpl) then) =
      __$$TemperatureBreachModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String startTime,
      String endTime,
      double peakTemperature,
      int durationSeconds,
      String severity,
      String? notes});
}

/// @nodoc
class __$$TemperatureBreachModelImplCopyWithImpl<$Res>
    extends _$TemperatureBreachModelCopyWithImpl<$Res,
        _$TemperatureBreachModelImpl>
    implements _$$TemperatureBreachModelImplCopyWith<$Res> {
  __$$TemperatureBreachModelImplCopyWithImpl(
      _$TemperatureBreachModelImpl _value,
      $Res Function(_$TemperatureBreachModelImpl) _then)
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
    return _then(_$TemperatureBreachModelImpl(
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemperatureBreachModelImpl implements _TemperatureBreachModel {
  const _$TemperatureBreachModelImpl(
      {required this.startTime,
      required this.endTime,
      required this.peakTemperature,
      required this.durationSeconds,
      required this.severity,
      this.notes});

  factory _$TemperatureBreachModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureBreachModelImplFromJson(json);

  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final double peakTemperature;
  @override
  final int durationSeconds;
  @override
  final String severity;
  @override
  final String? notes;

  @override
  String toString() {
    return 'TemperatureBreachModel(startTime: $startTime, endTime: $endTime, peakTemperature: $peakTemperature, durationSeconds: $durationSeconds, severity: $severity, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureBreachModelImpl &&
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
  _$$TemperatureBreachModelImplCopyWith<_$TemperatureBreachModelImpl>
      get copyWith => __$$TemperatureBreachModelImplCopyWithImpl<
          _$TemperatureBreachModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemperatureBreachModelImplToJson(
      this,
    );
  }
}

abstract class _TemperatureBreachModel implements TemperatureBreachModel {
  const factory _TemperatureBreachModel(
      {required final String startTime,
      required final String endTime,
      required final double peakTemperature,
      required final int durationSeconds,
      required final String severity,
      final String? notes}) = _$TemperatureBreachModelImpl;

  factory _TemperatureBreachModel.fromJson(Map<String, dynamic> json) =
      _$TemperatureBreachModelImpl.fromJson;

  @override
  String get startTime;
  @override
  String get endTime;
  @override
  double get peakTemperature;
  @override
  int get durationSeconds;
  @override
  String get severity;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$TemperatureBreachModelImplCopyWith<_$TemperatureBreachModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CumulativeThermalStressModel _$CumulativeThermalStressModelFromJson(
    Map<String, dynamic> json) {
  return _CumulativeThermalStressModel.fromJson(json);
}

/// @nodoc
mixin _$CumulativeThermalStressModel {
  double get stressIndex => throw _privateConstructorUsedError;
  double get predictedDegradation => throw _privateConstructorUsedError;
  String? get recommendation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CumulativeThermalStressModelCopyWith<CumulativeThermalStressModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CumulativeThermalStressModelCopyWith<$Res> {
  factory $CumulativeThermalStressModelCopyWith(
          CumulativeThermalStressModel value,
          $Res Function(CumulativeThermalStressModel) then) =
      _$CumulativeThermalStressModelCopyWithImpl<$Res,
          CumulativeThermalStressModel>;
  @useResult
  $Res call(
      {double stressIndex,
      double predictedDegradation,
      String? recommendation});
}

/// @nodoc
class _$CumulativeThermalStressModelCopyWithImpl<$Res,
        $Val extends CumulativeThermalStressModel>
    implements $CumulativeThermalStressModelCopyWith<$Res> {
  _$CumulativeThermalStressModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CumulativeThermalStressModelImplCopyWith<$Res>
    implements $CumulativeThermalStressModelCopyWith<$Res> {
  factory _$$CumulativeThermalStressModelImplCopyWith(
          _$CumulativeThermalStressModelImpl value,
          $Res Function(_$CumulativeThermalStressModelImpl) then) =
      __$$CumulativeThermalStressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double stressIndex,
      double predictedDegradation,
      String? recommendation});
}

/// @nodoc
class __$$CumulativeThermalStressModelImplCopyWithImpl<$Res>
    extends _$CumulativeThermalStressModelCopyWithImpl<$Res,
        _$CumulativeThermalStressModelImpl>
    implements _$$CumulativeThermalStressModelImplCopyWith<$Res> {
  __$$CumulativeThermalStressModelImplCopyWithImpl(
      _$CumulativeThermalStressModelImpl _value,
      $Res Function(_$CumulativeThermalStressModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stressIndex = null,
    Object? predictedDegradation = null,
    Object? recommendation = freezed,
  }) {
    return _then(_$CumulativeThermalStressModelImpl(
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
class _$CumulativeThermalStressModelImpl
    implements _CumulativeThermalStressModel {
  const _$CumulativeThermalStressModelImpl(
      {required this.stressIndex,
      required this.predictedDegradation,
      this.recommendation});

  factory _$CumulativeThermalStressModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CumulativeThermalStressModelImplFromJson(json);

  @override
  final double stressIndex;
  @override
  final double predictedDegradation;
  @override
  final String? recommendation;

  @override
  String toString() {
    return 'CumulativeThermalStressModel(stressIndex: $stressIndex, predictedDegradation: $predictedDegradation, recommendation: $recommendation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CumulativeThermalStressModelImpl &&
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
  _$$CumulativeThermalStressModelImplCopyWith<
          _$CumulativeThermalStressModelImpl>
      get copyWith => __$$CumulativeThermalStressModelImplCopyWithImpl<
          _$CumulativeThermalStressModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CumulativeThermalStressModelImplToJson(
      this,
    );
  }
}

abstract class _CumulativeThermalStressModel
    implements CumulativeThermalStressModel {
  const factory _CumulativeThermalStressModel(
      {required final double stressIndex,
      required final double predictedDegradation,
      final String? recommendation}) = _$CumulativeThermalStressModelImpl;

  factory _CumulativeThermalStressModel.fromJson(Map<String, dynamic> json) =
      _$CumulativeThermalStressModelImpl.fromJson;

  @override
  double get stressIndex;
  @override
  double get predictedDegradation;
  @override
  String? get recommendation;
  @override
  @JsonKey(ignore: true)
  _$$CumulativeThermalStressModelImplCopyWith<
          _$CumulativeThermalStressModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
