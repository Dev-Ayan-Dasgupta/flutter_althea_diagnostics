// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cold_chain_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ColdChainDataModel {
  String get sampleId;
  List<TelemetryReadingModel> get readings;
  ColdChainComplianceModel get compliance;
  String get monitoringStartTime;
  String? get monitoringEndTime;
  String? get smartBagId;
  bool? get isManualLogging;

  /// Create a copy of ColdChainDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ColdChainDataModelCopyWith<ColdChainDataModel> get copyWith =>
      _$ColdChainDataModelCopyWithImpl<ColdChainDataModel>(
          this as ColdChainDataModel, _$identity);

  /// Serializes this ColdChainDataModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ColdChainDataModel &&
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
    return 'ColdChainDataModel(sampleId: $sampleId, readings: $readings, compliance: $compliance, monitoringStartTime: $monitoringStartTime, monitoringEndTime: $monitoringEndTime, smartBagId: $smartBagId, isManualLogging: $isManualLogging)';
  }
}

/// @nodoc
abstract mixin class $ColdChainDataModelCopyWith<$Res> {
  factory $ColdChainDataModelCopyWith(
          ColdChainDataModel value, $Res Function(ColdChainDataModel) _then) =
      _$ColdChainDataModelCopyWithImpl;
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
class _$ColdChainDataModelCopyWithImpl<$Res>
    implements $ColdChainDataModelCopyWith<$Res> {
  _$ColdChainDataModelCopyWithImpl(this._self, this._then);

  final ColdChainDataModel _self;
  final $Res Function(ColdChainDataModel) _then;

  /// Create a copy of ColdChainDataModel
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
              as List<TelemetryReadingModel>,
      compliance: null == compliance
          ? _self.compliance
          : compliance // ignore: cast_nullable_to_non_nullable
              as ColdChainComplianceModel,
      monitoringStartTime: null == monitoringStartTime
          ? _self.monitoringStartTime
          : monitoringStartTime // ignore: cast_nullable_to_non_nullable
              as String,
      monitoringEndTime: freezed == monitoringEndTime
          ? _self.monitoringEndTime
          : monitoringEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
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

  /// Create a copy of ColdChainDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColdChainComplianceModelCopyWith<$Res> get compliance {
    return $ColdChainComplianceModelCopyWith<$Res>(_self.compliance, (value) {
      return _then(_self.copyWith(compliance: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ColdChainDataModel].
extension ColdChainDataModelPatterns on ColdChainDataModel {
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
    TResult Function(_ColdChainDataModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ColdChainDataModel() when $default != null:
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
    TResult Function(_ColdChainDataModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainDataModel():
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
    TResult? Function(_ColdChainDataModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainDataModel() when $default != null:
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
            List<TelemetryReadingModel> readings,
            ColdChainComplianceModel compliance,
            String monitoringStartTime,
            String? monitoringEndTime,
            String? smartBagId,
            bool? isManualLogging)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ColdChainDataModel() when $default != null:
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
            List<TelemetryReadingModel> readings,
            ColdChainComplianceModel compliance,
            String monitoringStartTime,
            String? monitoringEndTime,
            String? smartBagId,
            bool? isManualLogging)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainDataModel():
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
            List<TelemetryReadingModel> readings,
            ColdChainComplianceModel compliance,
            String monitoringStartTime,
            String? monitoringEndTime,
            String? smartBagId,
            bool? isManualLogging)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainDataModel() when $default != null:
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
class _ColdChainDataModel implements ColdChainDataModel {
  const _ColdChainDataModel(
      {required this.sampleId,
      required final List<TelemetryReadingModel> readings,
      required this.compliance,
      required this.monitoringStartTime,
      this.monitoringEndTime,
      this.smartBagId,
      this.isManualLogging})
      : _readings = readings;
  factory _ColdChainDataModel.fromJson(Map<String, dynamic> json) =>
      _$ColdChainDataModelFromJson(json);

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

  /// Create a copy of ColdChainDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ColdChainDataModelCopyWith<_ColdChainDataModel> get copyWith =>
      __$ColdChainDataModelCopyWithImpl<_ColdChainDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ColdChainDataModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColdChainDataModel &&
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
    return 'ColdChainDataModel(sampleId: $sampleId, readings: $readings, compliance: $compliance, monitoringStartTime: $monitoringStartTime, monitoringEndTime: $monitoringEndTime, smartBagId: $smartBagId, isManualLogging: $isManualLogging)';
  }
}

/// @nodoc
abstract mixin class _$ColdChainDataModelCopyWith<$Res>
    implements $ColdChainDataModelCopyWith<$Res> {
  factory _$ColdChainDataModelCopyWith(
          _ColdChainDataModel value, $Res Function(_ColdChainDataModel) _then) =
      __$ColdChainDataModelCopyWithImpl;
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
class __$ColdChainDataModelCopyWithImpl<$Res>
    implements _$ColdChainDataModelCopyWith<$Res> {
  __$ColdChainDataModelCopyWithImpl(this._self, this._then);

  final _ColdChainDataModel _self;
  final $Res Function(_ColdChainDataModel) _then;

  /// Create a copy of ColdChainDataModel
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
    return _then(_ColdChainDataModel(
      sampleId: null == sampleId
          ? _self.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      readings: null == readings
          ? _self._readings
          : readings // ignore: cast_nullable_to_non_nullable
              as List<TelemetryReadingModel>,
      compliance: null == compliance
          ? _self.compliance
          : compliance // ignore: cast_nullable_to_non_nullable
              as ColdChainComplianceModel,
      monitoringStartTime: null == monitoringStartTime
          ? _self.monitoringStartTime
          : monitoringStartTime // ignore: cast_nullable_to_non_nullable
              as String,
      monitoringEndTime: freezed == monitoringEndTime
          ? _self.monitoringEndTime
          : monitoringEndTime // ignore: cast_nullable_to_non_nullable
              as String?,
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

  /// Create a copy of ColdChainDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColdChainComplianceModelCopyWith<$Res> get compliance {
    return $ColdChainComplianceModelCopyWith<$Res>(_self.compliance, (value) {
      return _then(_self.copyWith(compliance: value));
    });
  }
}

/// @nodoc
mixin _$TelemetryReadingModel {
  String get timestamp;
  double get temperature;
  double? get humidity;
  bool? get shockDetected;
  bool? get tiltDetected;
  bool? get lidOpenDetected;
  int? get batteryLevel;
  GeoLocationModel? get location;
  String? get deviceId;

  /// Create a copy of TelemetryReadingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TelemetryReadingModelCopyWith<TelemetryReadingModel> get copyWith =>
      _$TelemetryReadingModelCopyWithImpl<TelemetryReadingModel>(
          this as TelemetryReadingModel, _$identity);

  /// Serializes this TelemetryReadingModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TelemetryReadingModel &&
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
    return 'TelemetryReadingModel(timestamp: $timestamp, temperature: $temperature, humidity: $humidity, shockDetected: $shockDetected, tiltDetected: $tiltDetected, lidOpenDetected: $lidOpenDetected, batteryLevel: $batteryLevel, location: $location, deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class $TelemetryReadingModelCopyWith<$Res> {
  factory $TelemetryReadingModelCopyWith(TelemetryReadingModel value,
          $Res Function(TelemetryReadingModel) _then) =
      _$TelemetryReadingModelCopyWithImpl;
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
class _$TelemetryReadingModelCopyWithImpl<$Res>
    implements $TelemetryReadingModelCopyWith<$Res> {
  _$TelemetryReadingModelCopyWithImpl(this._self, this._then);

  final TelemetryReadingModel _self;
  final $Res Function(TelemetryReadingModel) _then;

  /// Create a copy of TelemetryReadingModel
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
              as String,
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
              as GeoLocationModel?,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TelemetryReadingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationModelCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $GeoLocationModelCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// Adds pattern-matching-related methods to [TelemetryReadingModel].
extension TelemetryReadingModelPatterns on TelemetryReadingModel {
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
    TResult Function(_TelemetryReadingModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TelemetryReadingModel() when $default != null:
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
    TResult Function(_TelemetryReadingModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TelemetryReadingModel():
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
    TResult? Function(_TelemetryReadingModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TelemetryReadingModel() when $default != null:
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
            String timestamp,
            double temperature,
            double? humidity,
            bool? shockDetected,
            bool? tiltDetected,
            bool? lidOpenDetected,
            int? batteryLevel,
            GeoLocationModel? location,
            String? deviceId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TelemetryReadingModel() when $default != null:
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
            String timestamp,
            double temperature,
            double? humidity,
            bool? shockDetected,
            bool? tiltDetected,
            bool? lidOpenDetected,
            int? batteryLevel,
            GeoLocationModel? location,
            String? deviceId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TelemetryReadingModel():
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
            String timestamp,
            double temperature,
            double? humidity,
            bool? shockDetected,
            bool? tiltDetected,
            bool? lidOpenDetected,
            int? batteryLevel,
            GeoLocationModel? location,
            String? deviceId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TelemetryReadingModel() when $default != null:
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
class _TelemetryReadingModel implements TelemetryReadingModel {
  const _TelemetryReadingModel(
      {required this.timestamp,
      required this.temperature,
      this.humidity,
      this.shockDetected,
      this.tiltDetected,
      this.lidOpenDetected,
      this.batteryLevel,
      this.location,
      this.deviceId});
  factory _TelemetryReadingModel.fromJson(Map<String, dynamic> json) =>
      _$TelemetryReadingModelFromJson(json);

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

  /// Create a copy of TelemetryReadingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TelemetryReadingModelCopyWith<_TelemetryReadingModel> get copyWith =>
      __$TelemetryReadingModelCopyWithImpl<_TelemetryReadingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TelemetryReadingModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TelemetryReadingModel &&
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
    return 'TelemetryReadingModel(timestamp: $timestamp, temperature: $temperature, humidity: $humidity, shockDetected: $shockDetected, tiltDetected: $tiltDetected, lidOpenDetected: $lidOpenDetected, batteryLevel: $batteryLevel, location: $location, deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class _$TelemetryReadingModelCopyWith<$Res>
    implements $TelemetryReadingModelCopyWith<$Res> {
  factory _$TelemetryReadingModelCopyWith(_TelemetryReadingModel value,
          $Res Function(_TelemetryReadingModel) _then) =
      __$TelemetryReadingModelCopyWithImpl;
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
class __$TelemetryReadingModelCopyWithImpl<$Res>
    implements _$TelemetryReadingModelCopyWith<$Res> {
  __$TelemetryReadingModelCopyWithImpl(this._self, this._then);

  final _TelemetryReadingModel _self;
  final $Res Function(_TelemetryReadingModel) _then;

  /// Create a copy of TelemetryReadingModel
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
    return _then(_TelemetryReadingModel(
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
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
              as GeoLocationModel?,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TelemetryReadingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoLocationModelCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $GeoLocationModelCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// @nodoc
mixin _$ColdChainComplianceModel {
  double get compliancePercentage;
  int get totalReadings;
  int get compliantReadings;
  int get breachCount;
  List<TemperatureBreachModel> get breaches;
  double get maxDeviation;
  int get totalExposureDuration;
  CumulativeThermalStressModel get cumulativeStress;

  /// Create a copy of ColdChainComplianceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ColdChainComplianceModelCopyWith<ColdChainComplianceModel> get copyWith =>
      _$ColdChainComplianceModelCopyWithImpl<ColdChainComplianceModel>(
          this as ColdChainComplianceModel, _$identity);

  /// Serializes this ColdChainComplianceModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ColdChainComplianceModel &&
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
    return 'ColdChainComplianceModel(compliancePercentage: $compliancePercentage, totalReadings: $totalReadings, compliantReadings: $compliantReadings, breachCount: $breachCount, breaches: $breaches, maxDeviation: $maxDeviation, totalExposureDuration: $totalExposureDuration, cumulativeStress: $cumulativeStress)';
  }
}

/// @nodoc
abstract mixin class $ColdChainComplianceModelCopyWith<$Res> {
  factory $ColdChainComplianceModelCopyWith(ColdChainComplianceModel value,
          $Res Function(ColdChainComplianceModel) _then) =
      _$ColdChainComplianceModelCopyWithImpl;
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
class _$ColdChainComplianceModelCopyWithImpl<$Res>
    implements $ColdChainComplianceModelCopyWith<$Res> {
  _$ColdChainComplianceModelCopyWithImpl(this._self, this._then);

  final ColdChainComplianceModel _self;
  final $Res Function(ColdChainComplianceModel) _then;

  /// Create a copy of ColdChainComplianceModel
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
              as List<TemperatureBreachModel>,
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
              as CumulativeThermalStressModel,
    ));
  }

  /// Create a copy of ColdChainComplianceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CumulativeThermalStressModelCopyWith<$Res> get cumulativeStress {
    return $CumulativeThermalStressModelCopyWith<$Res>(_self.cumulativeStress,
        (value) {
      return _then(_self.copyWith(cumulativeStress: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ColdChainComplianceModel].
extension ColdChainComplianceModelPatterns on ColdChainComplianceModel {
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
    TResult Function(_ColdChainComplianceModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ColdChainComplianceModel() when $default != null:
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
    TResult Function(_ColdChainComplianceModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainComplianceModel():
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
    TResult? Function(_ColdChainComplianceModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainComplianceModel() when $default != null:
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
            List<TemperatureBreachModel> breaches,
            double maxDeviation,
            int totalExposureDuration,
            CumulativeThermalStressModel cumulativeStress)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ColdChainComplianceModel() when $default != null:
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
            List<TemperatureBreachModel> breaches,
            double maxDeviation,
            int totalExposureDuration,
            CumulativeThermalStressModel cumulativeStress)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainComplianceModel():
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
            List<TemperatureBreachModel> breaches,
            double maxDeviation,
            int totalExposureDuration,
            CumulativeThermalStressModel cumulativeStress)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColdChainComplianceModel() when $default != null:
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
class _ColdChainComplianceModel implements ColdChainComplianceModel {
  const _ColdChainComplianceModel(
      {required this.compliancePercentage,
      required this.totalReadings,
      required this.compliantReadings,
      required this.breachCount,
      required final List<TemperatureBreachModel> breaches,
      required this.maxDeviation,
      required this.totalExposureDuration,
      required this.cumulativeStress})
      : _breaches = breaches;
  factory _ColdChainComplianceModel.fromJson(Map<String, dynamic> json) =>
      _$ColdChainComplianceModelFromJson(json);

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

  /// Create a copy of ColdChainComplianceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ColdChainComplianceModelCopyWith<_ColdChainComplianceModel> get copyWith =>
      __$ColdChainComplianceModelCopyWithImpl<_ColdChainComplianceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ColdChainComplianceModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColdChainComplianceModel &&
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
    return 'ColdChainComplianceModel(compliancePercentage: $compliancePercentage, totalReadings: $totalReadings, compliantReadings: $compliantReadings, breachCount: $breachCount, breaches: $breaches, maxDeviation: $maxDeviation, totalExposureDuration: $totalExposureDuration, cumulativeStress: $cumulativeStress)';
  }
}

/// @nodoc
abstract mixin class _$ColdChainComplianceModelCopyWith<$Res>
    implements $ColdChainComplianceModelCopyWith<$Res> {
  factory _$ColdChainComplianceModelCopyWith(_ColdChainComplianceModel value,
          $Res Function(_ColdChainComplianceModel) _then) =
      __$ColdChainComplianceModelCopyWithImpl;
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
class __$ColdChainComplianceModelCopyWithImpl<$Res>
    implements _$ColdChainComplianceModelCopyWith<$Res> {
  __$ColdChainComplianceModelCopyWithImpl(this._self, this._then);

  final _ColdChainComplianceModel _self;
  final $Res Function(_ColdChainComplianceModel) _then;

  /// Create a copy of ColdChainComplianceModel
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
    return _then(_ColdChainComplianceModel(
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
              as List<TemperatureBreachModel>,
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
              as CumulativeThermalStressModel,
    ));
  }

  /// Create a copy of ColdChainComplianceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CumulativeThermalStressModelCopyWith<$Res> get cumulativeStress {
    return $CumulativeThermalStressModelCopyWith<$Res>(_self.cumulativeStress,
        (value) {
      return _then(_self.copyWith(cumulativeStress: value));
    });
  }
}

/// @nodoc
mixin _$TemperatureBreachModel {
  String get startTime;
  String get endTime;
  double get peakTemperature;
  int get durationSeconds;
  String get severity;
  String? get notes;

  /// Create a copy of TemperatureBreachModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TemperatureBreachModelCopyWith<TemperatureBreachModel> get copyWith =>
      _$TemperatureBreachModelCopyWithImpl<TemperatureBreachModel>(
          this as TemperatureBreachModel, _$identity);

  /// Serializes this TemperatureBreachModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TemperatureBreachModel &&
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
    return 'TemperatureBreachModel(startTime: $startTime, endTime: $endTime, peakTemperature: $peakTemperature, durationSeconds: $durationSeconds, severity: $severity, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $TemperatureBreachModelCopyWith<$Res> {
  factory $TemperatureBreachModelCopyWith(TemperatureBreachModel value,
          $Res Function(TemperatureBreachModel) _then) =
      _$TemperatureBreachModelCopyWithImpl;
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
class _$TemperatureBreachModelCopyWithImpl<$Res>
    implements $TemperatureBreachModelCopyWith<$Res> {
  _$TemperatureBreachModelCopyWithImpl(this._self, this._then);

  final TemperatureBreachModel _self;
  final $Res Function(TemperatureBreachModel) _then;

  /// Create a copy of TemperatureBreachModel
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
              as String,
      endTime: null == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TemperatureBreachModel].
extension TemperatureBreachModelPatterns on TemperatureBreachModel {
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
    TResult Function(_TemperatureBreachModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TemperatureBreachModel() when $default != null:
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
    TResult Function(_TemperatureBreachModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TemperatureBreachModel():
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
    TResult? Function(_TemperatureBreachModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TemperatureBreachModel() when $default != null:
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
    TResult Function(String startTime, String endTime, double peakTemperature,
            int durationSeconds, String severity, String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TemperatureBreachModel() when $default != null:
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
    TResult Function(String startTime, String endTime, double peakTemperature,
            int durationSeconds, String severity, String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TemperatureBreachModel():
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
    TResult? Function(String startTime, String endTime, double peakTemperature,
            int durationSeconds, String severity, String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TemperatureBreachModel() when $default != null:
        return $default(_that.startTime, _that.endTime, _that.peakTemperature,
            _that.durationSeconds, _that.severity, _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TemperatureBreachModel implements TemperatureBreachModel {
  const _TemperatureBreachModel(
      {required this.startTime,
      required this.endTime,
      required this.peakTemperature,
      required this.durationSeconds,
      required this.severity,
      this.notes});
  factory _TemperatureBreachModel.fromJson(Map<String, dynamic> json) =>
      _$TemperatureBreachModelFromJson(json);

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

  /// Create a copy of TemperatureBreachModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TemperatureBreachModelCopyWith<_TemperatureBreachModel> get copyWith =>
      __$TemperatureBreachModelCopyWithImpl<_TemperatureBreachModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TemperatureBreachModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TemperatureBreachModel &&
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
    return 'TemperatureBreachModel(startTime: $startTime, endTime: $endTime, peakTemperature: $peakTemperature, durationSeconds: $durationSeconds, severity: $severity, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$TemperatureBreachModelCopyWith<$Res>
    implements $TemperatureBreachModelCopyWith<$Res> {
  factory _$TemperatureBreachModelCopyWith(_TemperatureBreachModel value,
          $Res Function(_TemperatureBreachModel) _then) =
      __$TemperatureBreachModelCopyWithImpl;
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
class __$TemperatureBreachModelCopyWithImpl<$Res>
    implements _$TemperatureBreachModelCopyWith<$Res> {
  __$TemperatureBreachModelCopyWithImpl(this._self, this._then);

  final _TemperatureBreachModel _self;
  final $Res Function(_TemperatureBreachModel) _then;

  /// Create a copy of TemperatureBreachModel
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
    return _then(_TemperatureBreachModel(
      startTime: null == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CumulativeThermalStressModel {
  double get stressIndex;
  double get predictedDegradation;
  String? get recommendation;

  /// Create a copy of CumulativeThermalStressModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CumulativeThermalStressModelCopyWith<CumulativeThermalStressModel>
      get copyWith => _$CumulativeThermalStressModelCopyWithImpl<
              CumulativeThermalStressModel>(
          this as CumulativeThermalStressModel, _$identity);

  /// Serializes this CumulativeThermalStressModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CumulativeThermalStressModel &&
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
    return 'CumulativeThermalStressModel(stressIndex: $stressIndex, predictedDegradation: $predictedDegradation, recommendation: $recommendation)';
  }
}

/// @nodoc
abstract mixin class $CumulativeThermalStressModelCopyWith<$Res> {
  factory $CumulativeThermalStressModelCopyWith(
          CumulativeThermalStressModel value,
          $Res Function(CumulativeThermalStressModel) _then) =
      _$CumulativeThermalStressModelCopyWithImpl;
  @useResult
  $Res call(
      {double stressIndex,
      double predictedDegradation,
      String? recommendation});
}

/// @nodoc
class _$CumulativeThermalStressModelCopyWithImpl<$Res>
    implements $CumulativeThermalStressModelCopyWith<$Res> {
  _$CumulativeThermalStressModelCopyWithImpl(this._self, this._then);

  final CumulativeThermalStressModel _self;
  final $Res Function(CumulativeThermalStressModel) _then;

  /// Create a copy of CumulativeThermalStressModel
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

/// Adds pattern-matching-related methods to [CumulativeThermalStressModel].
extension CumulativeThermalStressModelPatterns on CumulativeThermalStressModel {
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
    TResult Function(_CumulativeThermalStressModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CumulativeThermalStressModel() when $default != null:
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
    TResult Function(_CumulativeThermalStressModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CumulativeThermalStressModel():
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
    TResult? Function(_CumulativeThermalStressModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CumulativeThermalStressModel() when $default != null:
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
      case _CumulativeThermalStressModel() when $default != null:
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
      case _CumulativeThermalStressModel():
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
      case _CumulativeThermalStressModel() when $default != null:
        return $default(_that.stressIndex, _that.predictedDegradation,
            _that.recommendation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CumulativeThermalStressModel implements CumulativeThermalStressModel {
  const _CumulativeThermalStressModel(
      {required this.stressIndex,
      required this.predictedDegradation,
      this.recommendation});
  factory _CumulativeThermalStressModel.fromJson(Map<String, dynamic> json) =>
      _$CumulativeThermalStressModelFromJson(json);

  @override
  final double stressIndex;
  @override
  final double predictedDegradation;
  @override
  final String? recommendation;

  /// Create a copy of CumulativeThermalStressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CumulativeThermalStressModelCopyWith<_CumulativeThermalStressModel>
      get copyWith => __$CumulativeThermalStressModelCopyWithImpl<
          _CumulativeThermalStressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CumulativeThermalStressModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CumulativeThermalStressModel &&
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
    return 'CumulativeThermalStressModel(stressIndex: $stressIndex, predictedDegradation: $predictedDegradation, recommendation: $recommendation)';
  }
}

/// @nodoc
abstract mixin class _$CumulativeThermalStressModelCopyWith<$Res>
    implements $CumulativeThermalStressModelCopyWith<$Res> {
  factory _$CumulativeThermalStressModelCopyWith(
          _CumulativeThermalStressModel value,
          $Res Function(_CumulativeThermalStressModel) _then) =
      __$CumulativeThermalStressModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double stressIndex,
      double predictedDegradation,
      String? recommendation});
}

/// @nodoc
class __$CumulativeThermalStressModelCopyWithImpl<$Res>
    implements _$CumulativeThermalStressModelCopyWith<$Res> {
  __$CumulativeThermalStressModelCopyWithImpl(this._self, this._then);

  final _CumulativeThermalStressModel _self;
  final $Res Function(_CumulativeThermalStressModel) _then;

  /// Create a copy of CumulativeThermalStressModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stressIndex = null,
    Object? predictedDegradation = null,
    Object? recommendation = freezed,
  }) {
    return _then(_CumulativeThermalStressModel(
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
