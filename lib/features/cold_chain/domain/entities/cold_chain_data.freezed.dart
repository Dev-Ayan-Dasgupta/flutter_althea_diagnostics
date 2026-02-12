// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cold_chain_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ColdChainData {
  String get sampleId;
  List<TelemetryReading> get readings;
  ColdChainCompliance get compliance;
  DateTime get monitoringStartTime;
  DateTime? get monitoringEndTime;
  String? get smartBagId;
  bool? get isManualLogging;

  /// Create a copy of ColdChainData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ColdChainDataCopyWith<ColdChainData> get copyWith =>
      _$ColdChainDataCopyWithImpl<ColdChainData>(
          this as ColdChainData, _$identity);

  /// Serializes this ColdChainData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ColdChainData &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            const DeepCollectionEquality().equals(other.readings, readings) &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sampleId,
      const DeepCollectionEquality().hash(readings),
      compliance,
      monitoringStartTime,
      monitoringEndTime,
      smartBagId,
      isManualLogging);

  @override
  String toString() {
    return 'ColdChainData(sampleId: $sampleId, readings: $readings, compliance: $compliance, monitoringStartTime: $monitoringStartTime, monitoringEndTime: $monitoringEndTime, smartBagId: $smartBagId, isManualLogging: $isManualLogging)';
  }
}

/// @nodoc
abstract mixin class $ColdChainDataCopyWith<$Res> {
  factory $ColdChainDataCopyWith(
          ColdChainData value, $Res Function(ColdChainData) _then) =
      _$ColdChainDataCopyWithImpl;
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
class _$ColdChainDataCopyWithImpl<$Res>
    implements $ColdChainDataCopyWith<$Res> {
  _$ColdChainDataCopyWithImpl(this._self, this._then);

  final ColdChainData _self;
  final $Res Function(ColdChainData) _then;

  /// Create a copy of ColdChainData
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      sampleId: null == sampleId
          ? _self.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      readings: null == readings
          ? _self.readings
          : readings // ignore: cast_nullable_to_non_nullable
              as List<TelemetryReading>,
      compliance: null == compliance
          ? _self.compliance
          : compliance // ignore: cast_nullable_to_non_nullable
              as ColdChainCompliance,
      monitoringStartTime: null == monitoringStartTime
          ? _self.monitoringStartTime
          : monitoringStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      monitoringEndTime: freezed == monitoringEndTime
          ? _self.monitoringEndTime
          : monitoringEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      smartBagId: freezed == smartBagId
          ? _self.smartBagId
          : smartBagId // ignore: cast_nullable_to_non_nullable
              as String?,
      isManualLogging: freezed == isManualLogging
          ? _self.isManualLogging
          : isManualLogging // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of ColdChainData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColdChainComplianceCopyWith<$Res> get compliance {
    return $ColdChainComplianceCopyWith<$Res>(_self.compliance, (value) {
      return _then(_self.copyWith(compliance: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ColdChainData].
extension ColdChainDataPatterns on ColdChainData {
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
    TResult Function(_ColdChainData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ColdChainData() when $default != null:
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
    TResult Function(_ColdChainData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainData():
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
    TResult? Function(_ColdChainData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainData() when $default != null:
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
            String sampleId,
            List<TelemetryReading> readings,
            ColdChainCompliance compliance,
            DateTime monitoringStartTime,
            DateTime? monitoringEndTime,
            String? smartBagId,
            bool? isManualLogging)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ColdChainData() when $default != null:
        return $default(
            _that.sampleId,
            _that.readings,
            _that.compliance,
            _that.monitoringStartTime,
            _that.monitoringEndTime,
            _that.smartBagId,
            _that.isManualLogging);
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
            String sampleId,
            List<TelemetryReading> readings,
            ColdChainCompliance compliance,
            DateTime monitoringStartTime,
            DateTime? monitoringEndTime,
            String? smartBagId,
            bool? isManualLogging)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainData():
        return $default(
            _that.sampleId,
            _that.readings,
            _that.compliance,
            _that.monitoringStartTime,
            _that.monitoringEndTime,
            _that.smartBagId,
            _that.isManualLogging);
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
            String sampleId,
            List<TelemetryReading> readings,
            ColdChainCompliance compliance,
            DateTime monitoringStartTime,
            DateTime? monitoringEndTime,
            String? smartBagId,
            bool? isManualLogging)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainData() when $default != null:
        return $default(
            _that.sampleId,
            _that.readings,
            _that.compliance,
            _that.monitoringStartTime,
            _that.monitoringEndTime,
            _that.smartBagId,
            _that.isManualLogging);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ColdChainData implements ColdChainData {
  const _ColdChainData(
      {required this.sampleId,
      required final List<TelemetryReading> readings,
      required this.compliance,
      required this.monitoringStartTime,
      this.monitoringEndTime,
      this.smartBagId,
      this.isManualLogging})
      : _readings = readings;
  factory _ColdChainData.fromJson(Map<String, dynamic> json) =>
      _$ColdChainDataFromJson(json);

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

  /// Create a copy of ColdChainData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ColdChainDataCopyWith<_ColdChainData> get copyWith =>
      __$ColdChainDataCopyWithImpl<_ColdChainData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ColdChainDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColdChainData &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'ColdChainData(sampleId: $sampleId, readings: $readings, compliance: $compliance, monitoringStartTime: $monitoringStartTime, monitoringEndTime: $monitoringEndTime, smartBagId: $smartBagId, isManualLogging: $isManualLogging)';
  }
}

/// @nodoc
abstract mixin class _$ColdChainDataCopyWith<$Res>
    implements $ColdChainDataCopyWith<$Res> {
  factory _$ColdChainDataCopyWith(
          _ColdChainData value, $Res Function(_ColdChainData) _then) =
      __$ColdChainDataCopyWithImpl;
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
class __$ColdChainDataCopyWithImpl<$Res>
    implements _$ColdChainDataCopyWith<$Res> {
  __$ColdChainDataCopyWithImpl(this._self, this._then);

  final _ColdChainData _self;
  final $Res Function(_ColdChainData) _then;

  /// Create a copy of ColdChainData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sampleId = null,
    Object? readings = null,
    Object? compliance = null,
    Object? monitoringStartTime = null,
    Object? monitoringEndTime = freezed,
    Object? smartBagId = freezed,
    Object? isManualLogging = freezed,
  }) {
    return _then(_ColdChainData(
      sampleId: null == sampleId
          ? _self.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      readings: null == readings
          ? _self._readings
          : readings // ignore: cast_nullable_to_non_nullable
              as List<TelemetryReading>,
      compliance: null == compliance
          ? _self.compliance
          : compliance // ignore: cast_nullable_to_non_nullable
              as ColdChainCompliance,
      monitoringStartTime: null == monitoringStartTime
          ? _self.monitoringStartTime
          : monitoringStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      monitoringEndTime: freezed == monitoringEndTime
          ? _self.monitoringEndTime
          : monitoringEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      smartBagId: freezed == smartBagId
          ? _self.smartBagId
          : smartBagId // ignore: cast_nullable_to_non_nullable
              as String?,
      isManualLogging: freezed == isManualLogging
          ? _self.isManualLogging
          : isManualLogging // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of ColdChainData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColdChainComplianceCopyWith<$Res> get compliance {
    return $ColdChainComplianceCopyWith<$Res>(_self.compliance, (value) {
      return _then(_self.copyWith(compliance: value));
    });
  }
}

/// @nodoc
mixin _$TelemetryReading {
  DateTime get timestamp;
  double get temperature; // Celsius
  double? get humidity;
  bool? get shockDetected;
  bool? get tiltDetected;
  bool? get lidOpenDetected;
  int? get batteryLevel;
  GeoLocation? get location;
  String? get deviceId;

  /// Create a copy of TelemetryReading
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TelemetryReadingCopyWith<TelemetryReading> get copyWith =>
      _$TelemetryReadingCopyWithImpl<TelemetryReading>(
          this as TelemetryReading, _$identity);

  /// Serializes this TelemetryReading to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TelemetryReading &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'TelemetryReading(timestamp: $timestamp, temperature: $temperature, humidity: $humidity, shockDetected: $shockDetected, tiltDetected: $tiltDetected, lidOpenDetected: $lidOpenDetected, batteryLevel: $batteryLevel, location: $location, deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class $TelemetryReadingCopyWith<$Res> {
  factory $TelemetryReadingCopyWith(
          TelemetryReading value, $Res Function(TelemetryReading) _then) =
      _$TelemetryReadingCopyWithImpl;
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
class _$TelemetryReadingCopyWithImpl<$Res>
    implements $TelemetryReadingCopyWith<$Res> {
  _$TelemetryReadingCopyWithImpl(this._self, this._then);

  final TelemetryReading _self;
  final $Res Function(TelemetryReading) _then;

  /// Create a copy of TelemetryReading
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: freezed == humidity
          ? _self.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      shockDetected: freezed == shockDetected
          ? _self.shockDetected
          : shockDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      tiltDetected: freezed == tiltDetected
          ? _self.tiltDetected
          : tiltDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      lidOpenDetected: freezed == lidOpenDetected
          ? _self.lidOpenDetected
          : lidOpenDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      batteryLevel: freezed == batteryLevel
          ? _self.batteryLevel
          : batteryLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation?,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TelemetryReading
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $GeoLocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TelemetryReading].
extension TelemetryReadingPatterns on TelemetryReading {
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
    TResult Function(_TelemetryReading value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TelemetryReading() when $default != null:
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
    TResult Function(_TelemetryReading value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TelemetryReading():
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
    TResult? Function(_TelemetryReading value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TelemetryReading() when $default != null:
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
            DateTime timestamp,
            double temperature,
            double? humidity,
            bool? shockDetected,
            bool? tiltDetected,
            bool? lidOpenDetected,
            int? batteryLevel,
            GeoLocation? location,
            String? deviceId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TelemetryReading() when $default != null:
        return $default(
            _that.timestamp,
            _that.temperature,
            _that.humidity,
            _that.shockDetected,
            _that.tiltDetected,
            _that.lidOpenDetected,
            _that.batteryLevel,
            _that.location,
            _that.deviceId);
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
            DateTime timestamp,
            double temperature,
            double? humidity,
            bool? shockDetected,
            bool? tiltDetected,
            bool? lidOpenDetected,
            int? batteryLevel,
            GeoLocation? location,
            String? deviceId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TelemetryReading():
        return $default(
            _that.timestamp,
            _that.temperature,
            _that.humidity,
            _that.shockDetected,
            _that.tiltDetected,
            _that.lidOpenDetected,
            _that.batteryLevel,
            _that.location,
            _that.deviceId);
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
            DateTime timestamp,
            double temperature,
            double? humidity,
            bool? shockDetected,
            bool? tiltDetected,
            bool? lidOpenDetected,
            int? batteryLevel,
            GeoLocation? location,
            String? deviceId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TelemetryReading() when $default != null:
        return $default(
            _that.timestamp,
            _that.temperature,
            _that.humidity,
            _that.shockDetected,
            _that.tiltDetected,
            _that.lidOpenDetected,
            _that.batteryLevel,
            _that.location,
            _that.deviceId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TelemetryReading implements TelemetryReading {
  const _TelemetryReading(
      {required this.timestamp,
      required this.temperature,
      this.humidity,
      this.shockDetected,
      this.tiltDetected,
      this.lidOpenDetected,
      this.batteryLevel,
      this.location,
      this.deviceId});
  factory _TelemetryReading.fromJson(Map<String, dynamic> json) =>
      _$TelemetryReadingFromJson(json);

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

  /// Create a copy of TelemetryReading
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TelemetryReadingCopyWith<_TelemetryReading> get copyWith =>
      __$TelemetryReadingCopyWithImpl<_TelemetryReading>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TelemetryReadingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TelemetryReading &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'TelemetryReading(timestamp: $timestamp, temperature: $temperature, humidity: $humidity, shockDetected: $shockDetected, tiltDetected: $tiltDetected, lidOpenDetected: $lidOpenDetected, batteryLevel: $batteryLevel, location: $location, deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class _$TelemetryReadingCopyWith<$Res>
    implements $TelemetryReadingCopyWith<$Res> {
  factory _$TelemetryReadingCopyWith(
          _TelemetryReading value, $Res Function(_TelemetryReading) _then) =
      __$TelemetryReadingCopyWithImpl;
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
class __$TelemetryReadingCopyWithImpl<$Res>
    implements _$TelemetryReadingCopyWith<$Res> {
  __$TelemetryReadingCopyWithImpl(this._self, this._then);

  final _TelemetryReading _self;
  final $Res Function(_TelemetryReading) _then;

  /// Create a copy of TelemetryReading
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_TelemetryReading(
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: freezed == humidity
          ? _self.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      shockDetected: freezed == shockDetected
          ? _self.shockDetected
          : shockDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      tiltDetected: freezed == tiltDetected
          ? _self.tiltDetected
          : tiltDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      lidOpenDetected: freezed == lidOpenDetected
          ? _self.lidOpenDetected
          : lidOpenDetected // ignore: cast_nullable_to_non_nullable
              as bool?,
      batteryLevel: freezed == batteryLevel
          ? _self.batteryLevel
          : batteryLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation?,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TelemetryReading
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $GeoLocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// @nodoc
mixin _$ColdChainCompliance {
  double get compliancePercentage; // 0-100
  int get totalReadings;
  int get compliantReadings;
  int get breachCount;
  List<TemperatureBreach> get breaches;
  double get maxDeviation;
  int get totalExposureDuration; // seconds
  CumulativeThermalStress get cumulativeStress;

  /// Create a copy of ColdChainCompliance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ColdChainComplianceCopyWith<ColdChainCompliance> get copyWith =>
      _$ColdChainComplianceCopyWithImpl<ColdChainCompliance>(
          this as ColdChainCompliance, _$identity);

  /// Serializes this ColdChainCompliance to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ColdChainCompliance &&
            (identical(other.compliancePercentage, compliancePercentage) ||
                other.compliancePercentage == compliancePercentage) &&
            (identical(other.totalReadings, totalReadings) ||
                other.totalReadings == totalReadings) &&
            (identical(other.compliantReadings, compliantReadings) ||
                other.compliantReadings == compliantReadings) &&
            (identical(other.breachCount, breachCount) ||
                other.breachCount == breachCount) &&
            const DeepCollectionEquality().equals(other.breaches, breaches) &&
            (identical(other.maxDeviation, maxDeviation) ||
                other.maxDeviation == maxDeviation) &&
            (identical(other.totalExposureDuration, totalExposureDuration) ||
                other.totalExposureDuration == totalExposureDuration) &&
            (identical(other.cumulativeStress, cumulativeStress) ||
                other.cumulativeStress == cumulativeStress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      compliancePercentage,
      totalReadings,
      compliantReadings,
      breachCount,
      const DeepCollectionEquality().hash(breaches),
      maxDeviation,
      totalExposureDuration,
      cumulativeStress);

  @override
  String toString() {
    return 'ColdChainCompliance(compliancePercentage: $compliancePercentage, totalReadings: $totalReadings, compliantReadings: $compliantReadings, breachCount: $breachCount, breaches: $breaches, maxDeviation: $maxDeviation, totalExposureDuration: $totalExposureDuration, cumulativeStress: $cumulativeStress)';
  }
}

/// @nodoc
abstract mixin class $ColdChainComplianceCopyWith<$Res> {
  factory $ColdChainComplianceCopyWith(
          ColdChainCompliance value, $Res Function(ColdChainCompliance) _then) =
      _$ColdChainComplianceCopyWithImpl;
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
class _$ColdChainComplianceCopyWithImpl<$Res>
    implements $ColdChainComplianceCopyWith<$Res> {
  _$ColdChainComplianceCopyWithImpl(this._self, this._then);

  final ColdChainCompliance _self;
  final $Res Function(ColdChainCompliance) _then;

  /// Create a copy of ColdChainCompliance
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      compliancePercentage: null == compliancePercentage
          ? _self.compliancePercentage
          : compliancePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      totalReadings: null == totalReadings
          ? _self.totalReadings
          : totalReadings // ignore: cast_nullable_to_non_nullable
              as int,
      compliantReadings: null == compliantReadings
          ? _self.compliantReadings
          : compliantReadings // ignore: cast_nullable_to_non_nullable
              as int,
      breachCount: null == breachCount
          ? _self.breachCount
          : breachCount // ignore: cast_nullable_to_non_nullable
              as int,
      breaches: null == breaches
          ? _self.breaches
          : breaches // ignore: cast_nullable_to_non_nullable
              as List<TemperatureBreach>,
      maxDeviation: null == maxDeviation
          ? _self.maxDeviation
          : maxDeviation // ignore: cast_nullable_to_non_nullable
              as double,
      totalExposureDuration: null == totalExposureDuration
          ? _self.totalExposureDuration
          : totalExposureDuration // ignore: cast_nullable_to_non_nullable
              as int,
      cumulativeStress: null == cumulativeStress
          ? _self.cumulativeStress
          : cumulativeStress // ignore: cast_nullable_to_non_nullable
              as CumulativeThermalStress,
    ));
  }

  /// Create a copy of ColdChainCompliance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CumulativeThermalStressCopyWith<$Res> get cumulativeStress {
    return $CumulativeThermalStressCopyWith<$Res>(_self.cumulativeStress,
        (value) {
      return _then(_self.copyWith(cumulativeStress: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ColdChainCompliance].
extension ColdChainCompliancePatterns on ColdChainCompliance {
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
    TResult Function(_ColdChainCompliance value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ColdChainCompliance() when $default != null:
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
    TResult Function(_ColdChainCompliance value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainCompliance():
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
    TResult? Function(_ColdChainCompliance value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainCompliance() when $default != null:
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
            double compliancePercentage,
            int totalReadings,
            int compliantReadings,
            int breachCount,
            List<TemperatureBreach> breaches,
            double maxDeviation,
            int totalExposureDuration,
            CumulativeThermalStress cumulativeStress)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ColdChainCompliance() when $default != null:
        return $default(
            _that.compliancePercentage,
            _that.totalReadings,
            _that.compliantReadings,
            _that.breachCount,
            _that.breaches,
            _that.maxDeviation,
            _that.totalExposureDuration,
            _that.cumulativeStress);
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
            double compliancePercentage,
            int totalReadings,
            int compliantReadings,
            int breachCount,
            List<TemperatureBreach> breaches,
            double maxDeviation,
            int totalExposureDuration,
            CumulativeThermalStress cumulativeStress)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainCompliance():
        return $default(
            _that.compliancePercentage,
            _that.totalReadings,
            _that.compliantReadings,
            _that.breachCount,
            _that.breaches,
            _that.maxDeviation,
            _that.totalExposureDuration,
            _that.cumulativeStress);
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
            double compliancePercentage,
            int totalReadings,
            int compliantReadings,
            int breachCount,
            List<TemperatureBreach> breaches,
            double maxDeviation,
            int totalExposureDuration,
            CumulativeThermalStress cumulativeStress)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainCompliance() when $default != null:
        return $default(
            _that.compliancePercentage,
            _that.totalReadings,
            _that.compliantReadings,
            _that.breachCount,
            _that.breaches,
            _that.maxDeviation,
            _that.totalExposureDuration,
            _that.cumulativeStress);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ColdChainCompliance implements ColdChainCompliance {
  const _ColdChainCompliance(
      {required this.compliancePercentage,
      required this.totalReadings,
      required this.compliantReadings,
      required this.breachCount,
      required final List<TemperatureBreach> breaches,
      required this.maxDeviation,
      required this.totalExposureDuration,
      required this.cumulativeStress})
      : _breaches = breaches;
  factory _ColdChainCompliance.fromJson(Map<String, dynamic> json) =>
      _$ColdChainComplianceFromJson(json);

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

  /// Create a copy of ColdChainCompliance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ColdChainComplianceCopyWith<_ColdChainCompliance> get copyWith =>
      __$ColdChainComplianceCopyWithImpl<_ColdChainCompliance>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ColdChainComplianceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColdChainCompliance &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'ColdChainCompliance(compliancePercentage: $compliancePercentage, totalReadings: $totalReadings, compliantReadings: $compliantReadings, breachCount: $breachCount, breaches: $breaches, maxDeviation: $maxDeviation, totalExposureDuration: $totalExposureDuration, cumulativeStress: $cumulativeStress)';
  }
}

/// @nodoc
abstract mixin class _$ColdChainComplianceCopyWith<$Res>
    implements $ColdChainComplianceCopyWith<$Res> {
  factory _$ColdChainComplianceCopyWith(_ColdChainCompliance value,
          $Res Function(_ColdChainCompliance) _then) =
      __$ColdChainComplianceCopyWithImpl;
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
class __$ColdChainComplianceCopyWithImpl<$Res>
    implements _$ColdChainComplianceCopyWith<$Res> {
  __$ColdChainComplianceCopyWithImpl(this._self, this._then);

  final _ColdChainCompliance _self;
  final $Res Function(_ColdChainCompliance) _then;

  /// Create a copy of ColdChainCompliance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_ColdChainCompliance(
      compliancePercentage: null == compliancePercentage
          ? _self.compliancePercentage
          : compliancePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      totalReadings: null == totalReadings
          ? _self.totalReadings
          : totalReadings // ignore: cast_nullable_to_non_nullable
              as int,
      compliantReadings: null == compliantReadings
          ? _self.compliantReadings
          : compliantReadings // ignore: cast_nullable_to_non_nullable
              as int,
      breachCount: null == breachCount
          ? _self.breachCount
          : breachCount // ignore: cast_nullable_to_non_nullable
              as int,
      breaches: null == breaches
          ? _self._breaches
          : breaches // ignore: cast_nullable_to_non_nullable
              as List<TemperatureBreach>,
      maxDeviation: null == maxDeviation
          ? _self.maxDeviation
          : maxDeviation // ignore: cast_nullable_to_non_nullable
              as double,
      totalExposureDuration: null == totalExposureDuration
          ? _self.totalExposureDuration
          : totalExposureDuration // ignore: cast_nullable_to_non_nullable
              as int,
      cumulativeStress: null == cumulativeStress
          ? _self.cumulativeStress
          : cumulativeStress // ignore: cast_nullable_to_non_nullable
              as CumulativeThermalStress,
    ));
  }

  /// Create a copy of ColdChainCompliance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CumulativeThermalStressCopyWith<$Res> get cumulativeStress {
    return $CumulativeThermalStressCopyWith<$Res>(_self.cumulativeStress,
        (value) {
      return _then(_self.copyWith(cumulativeStress: value));
    });
  }
}

/// @nodoc
mixin _$TemperatureBreach {
  DateTime get startTime;
  DateTime get endTime;
  double get peakTemperature;
  int get durationSeconds;
  BreachSeverity get severity;
  String? get notes;

  /// Create a copy of TemperatureBreach
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TemperatureBreachCopyWith<TemperatureBreach> get copyWith =>
      _$TemperatureBreachCopyWithImpl<TemperatureBreach>(
          this as TemperatureBreach, _$identity);

  /// Serializes this TemperatureBreach to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TemperatureBreach &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime,
      peakTemperature, durationSeconds, severity, notes);

  @override
  String toString() {
    return 'TemperatureBreach(startTime: $startTime, endTime: $endTime, peakTemperature: $peakTemperature, durationSeconds: $durationSeconds, severity: $severity, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $TemperatureBreachCopyWith<$Res> {
  factory $TemperatureBreachCopyWith(
          TemperatureBreach value, $Res Function(TemperatureBreach) _then) =
      _$TemperatureBreachCopyWithImpl;
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
class _$TemperatureBreachCopyWithImpl<$Res>
    implements $TemperatureBreachCopyWith<$Res> {
  _$TemperatureBreachCopyWithImpl(this._self, this._then);

  final TemperatureBreach _self;
  final $Res Function(TemperatureBreach) _then;

  /// Create a copy of TemperatureBreach
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      startTime: null == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      peakTemperature: null == peakTemperature
          ? _self.peakTemperature
          : peakTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      durationSeconds: null == durationSeconds
          ? _self.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      severity: null == severity
          ? _self.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as BreachSeverity,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TemperatureBreach].
extension TemperatureBreachPatterns on TemperatureBreach {
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
    TResult Function(_TemperatureBreach value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TemperatureBreach() when $default != null:
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
    TResult Function(_TemperatureBreach value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TemperatureBreach():
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
    TResult? Function(_TemperatureBreach value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TemperatureBreach() when $default != null:
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
            DateTime startTime,
            DateTime endTime,
            double peakTemperature,
            int durationSeconds,
            BreachSeverity severity,
            String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TemperatureBreach() when $default != null:
        return $default(_that.startTime, _that.endTime, _that.peakTemperature,
            _that.durationSeconds, _that.severity, _that.notes);
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
            DateTime startTime,
            DateTime endTime,
            double peakTemperature,
            int durationSeconds,
            BreachSeverity severity,
            String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TemperatureBreach():
        return $default(_that.startTime, _that.endTime, _that.peakTemperature,
            _that.durationSeconds, _that.severity, _that.notes);
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
            DateTime startTime,
            DateTime endTime,
            double peakTemperature,
            int durationSeconds,
            BreachSeverity severity,
            String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TemperatureBreach() when $default != null:
        return $default(_that.startTime, _that.endTime, _that.peakTemperature,
            _that.durationSeconds, _that.severity, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TemperatureBreach implements TemperatureBreach {
  const _TemperatureBreach(
      {required this.startTime,
      required this.endTime,
      required this.peakTemperature,
      required this.durationSeconds,
      required this.severity,
      this.notes});
  factory _TemperatureBreach.fromJson(Map<String, dynamic> json) =>
      _$TemperatureBreachFromJson(json);

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

  /// Create a copy of TemperatureBreach
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TemperatureBreachCopyWith<_TemperatureBreach> get copyWith =>
      __$TemperatureBreachCopyWithImpl<_TemperatureBreach>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TemperatureBreachToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TemperatureBreach &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startTime, endTime,
      peakTemperature, durationSeconds, severity, notes);

  @override
  String toString() {
    return 'TemperatureBreach(startTime: $startTime, endTime: $endTime, peakTemperature: $peakTemperature, durationSeconds: $durationSeconds, severity: $severity, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$TemperatureBreachCopyWith<$Res>
    implements $TemperatureBreachCopyWith<$Res> {
  factory _$TemperatureBreachCopyWith(
          _TemperatureBreach value, $Res Function(_TemperatureBreach) _then) =
      __$TemperatureBreachCopyWithImpl;
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
class __$TemperatureBreachCopyWithImpl<$Res>
    implements _$TemperatureBreachCopyWith<$Res> {
  __$TemperatureBreachCopyWithImpl(this._self, this._then);

  final _TemperatureBreach _self;
  final $Res Function(_TemperatureBreach) _then;

  /// Create a copy of TemperatureBreach
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startTime = null,
    Object? endTime = null,
    Object? peakTemperature = null,
    Object? durationSeconds = null,
    Object? severity = null,
    Object? notes = freezed,
  }) {
    return _then(_TemperatureBreach(
      startTime: null == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      peakTemperature: null == peakTemperature
          ? _self.peakTemperature
          : peakTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      durationSeconds: null == durationSeconds
          ? _self.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      severity: null == severity
          ? _self.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as BreachSeverity,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CumulativeThermalStress {
  double get stressIndex; // 0-100
  double get predictedDegradation; // 0-100%
  String? get recommendation;

  /// Create a copy of CumulativeThermalStress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CumulativeThermalStressCopyWith<CumulativeThermalStress> get copyWith =>
      _$CumulativeThermalStressCopyWithImpl<CumulativeThermalStress>(
          this as CumulativeThermalStress, _$identity);

  /// Serializes this CumulativeThermalStress to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CumulativeThermalStress &&
            (identical(other.stressIndex, stressIndex) ||
                other.stressIndex == stressIndex) &&
            (identical(other.predictedDegradation, predictedDegradation) ||
                other.predictedDegradation == predictedDegradation) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, stressIndex, predictedDegradation, recommendation);

  @override
  String toString() {
    return 'CumulativeThermalStress(stressIndex: $stressIndex, predictedDegradation: $predictedDegradation, recommendation: $recommendation)';
  }
}

/// @nodoc
abstract mixin class $CumulativeThermalStressCopyWith<$Res> {
  factory $CumulativeThermalStressCopyWith(CumulativeThermalStress value,
          $Res Function(CumulativeThermalStress) _then) =
      _$CumulativeThermalStressCopyWithImpl;
  @useResult
  $Res call(
      {double stressIndex,
      double predictedDegradation,
      String? recommendation});
}

/// @nodoc
class _$CumulativeThermalStressCopyWithImpl<$Res>
    implements $CumulativeThermalStressCopyWith<$Res> {
  _$CumulativeThermalStressCopyWithImpl(this._self, this._then);

  final CumulativeThermalStress _self;
  final $Res Function(CumulativeThermalStress) _then;

  /// Create a copy of CumulativeThermalStress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stressIndex = null,
    Object? predictedDegradation = null,
    Object? recommendation = freezed,
  }) {
    return _then(_self.copyWith(
      stressIndex: null == stressIndex
          ? _self.stressIndex
          : stressIndex // ignore: cast_nullable_to_non_nullable
              as double,
      predictedDegradation: null == predictedDegradation
          ? _self.predictedDegradation
          : predictedDegradation // ignore: cast_nullable_to_non_nullable
              as double,
      recommendation: freezed == recommendation
          ? _self.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CumulativeThermalStress].
extension CumulativeThermalStressPatterns on CumulativeThermalStress {
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
    TResult Function(_CumulativeThermalStress value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CumulativeThermalStress() when $default != null:
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
    TResult Function(_CumulativeThermalStress value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CumulativeThermalStress():
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
    TResult? Function(_CumulativeThermalStress value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CumulativeThermalStress() when $default != null:
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
    TResult Function(double stressIndex, double predictedDegradation,
            String? recommendation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CumulativeThermalStress() when $default != null:
        return $default(_that.stressIndex, _that.predictedDegradation,
            _that.recommendation);
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
    TResult Function(double stressIndex, double predictedDegradation,
            String? recommendation)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CumulativeThermalStress():
        return $default(_that.stressIndex, _that.predictedDegradation,
            _that.recommendation);
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
    TResult? Function(double stressIndex, double predictedDegradation,
            String? recommendation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CumulativeThermalStress() when $default != null:
        return $default(_that.stressIndex, _that.predictedDegradation,
            _that.recommendation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CumulativeThermalStress implements CumulativeThermalStress {
  const _CumulativeThermalStress(
      {required this.stressIndex,
      required this.predictedDegradation,
      this.recommendation});
  factory _CumulativeThermalStress.fromJson(Map<String, dynamic> json) =>
      _$CumulativeThermalStressFromJson(json);

  @override
  final double stressIndex;
// 0-100
  @override
  final double predictedDegradation;
// 0-100%
  @override
  final String? recommendation;

  /// Create a copy of CumulativeThermalStress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CumulativeThermalStressCopyWith<_CumulativeThermalStress> get copyWith =>
      __$CumulativeThermalStressCopyWithImpl<_CumulativeThermalStress>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CumulativeThermalStressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CumulativeThermalStress &&
            (identical(other.stressIndex, stressIndex) ||
                other.stressIndex == stressIndex) &&
            (identical(other.predictedDegradation, predictedDegradation) ||
                other.predictedDegradation == predictedDegradation) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, stressIndex, predictedDegradation, recommendation);

  @override
  String toString() {
    return 'CumulativeThermalStress(stressIndex: $stressIndex, predictedDegradation: $predictedDegradation, recommendation: $recommendation)';
  }
}

/// @nodoc
abstract mixin class _$CumulativeThermalStressCopyWith<$Res>
    implements $CumulativeThermalStressCopyWith<$Res> {
  factory _$CumulativeThermalStressCopyWith(_CumulativeThermalStress value,
          $Res Function(_CumulativeThermalStress) _then) =
      __$CumulativeThermalStressCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double stressIndex,
      double predictedDegradation,
      String? recommendation});
}

/// @nodoc
class __$CumulativeThermalStressCopyWithImpl<$Res>
    implements _$CumulativeThermalStressCopyWith<$Res> {
  __$CumulativeThermalStressCopyWithImpl(this._self, this._then);

  final _CumulativeThermalStress _self;
  final $Res Function(_CumulativeThermalStress) _then;

  /// Create a copy of CumulativeThermalStress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stressIndex = null,
    Object? predictedDegradation = null,
    Object? recommendation = freezed,
  }) {
    return _then(_CumulativeThermalStress(
      stressIndex: null == stressIndex
          ? _self.stressIndex
          : stressIndex // ignore: cast_nullable_to_non_nullable
              as double,
      predictedDegradation: null == predictedDegradation
          ? _self.predictedDegradation
          : predictedDegradation // ignore: cast_nullable_to_non_nullable
              as double,
      recommendation: freezed == recommendation
          ? _self.recommendation
          : recommendation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
