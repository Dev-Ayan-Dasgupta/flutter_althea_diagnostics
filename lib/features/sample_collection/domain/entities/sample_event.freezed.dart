// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SampleEvent _$SampleEventFromJson(Map<String, dynamic> json) {
  return _SampleEvent.fromJson(json);
}

/// @nodoc
mixin _$SampleEvent {
  String get id => throw _privateConstructorUsedError;
  String get sampleId => throw _privateConstructorUsedError;
  SampleEventType get eventType => throw _privateConstructorUsedError;
  String get actorId => throw _privateConstructorUsedError;
  String get actorName => throw _privateConstructorUsedError;
  ActorRole get actorRole => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  GeoLocation get location => throw _privateConstructorUsedError;
  String get eventHash =>
      throw _privateConstructorUsedError; // For immutable audit trail
  String? get previousEventHash => throw _privateConstructorUsedError;
  EventMetadata? get metadata => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleEventCopyWith<SampleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleEventCopyWith<$Res> {
  factory $SampleEventCopyWith(
          SampleEvent value, $Res Function(SampleEvent) then) =
      _$SampleEventCopyWithImpl<$Res, SampleEvent>;
  @useResult
  $Res call(
      {String id,
      String sampleId,
      SampleEventType eventType,
      String actorId,
      String actorName,
      ActorRole actorRole,
      DateTime timestamp,
      GeoLocation location,
      String eventHash,
      String? previousEventHash,
      EventMetadata? metadata,
      String? notes});

  $GeoLocationCopyWith<$Res> get location;
  $EventMetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$SampleEventCopyWithImpl<$Res, $Val extends SampleEvent>
    implements $SampleEventCopyWith<$Res> {
  _$SampleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sampleId = null,
    Object? eventType = null,
    Object? actorId = null,
    Object? actorName = null,
    Object? actorRole = null,
    Object? timestamp = null,
    Object? location = null,
    Object? eventHash = null,
    Object? previousEventHash = freezed,
    Object? metadata = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as SampleEventType,
      actorId: null == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String,
      actorName: null == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as String,
      actorRole: null == actorRole
          ? _value.actorRole
          : actorRole // ignore: cast_nullable_to_non_nullable
              as ActorRole,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
      eventHash: null == eventHash
          ? _value.eventHash
          : eventHash // ignore: cast_nullable_to_non_nullable
              as String,
      previousEventHash: freezed == previousEventHash
          ? _value.previousEventHash
          : previousEventHash // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as EventMetadata?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoLocationCopyWith<$Res> get location {
    return $GeoLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EventMetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $EventMetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SampleEventImplCopyWith<$Res>
    implements $SampleEventCopyWith<$Res> {
  factory _$$SampleEventImplCopyWith(
          _$SampleEventImpl value, $Res Function(_$SampleEventImpl) then) =
      __$$SampleEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String sampleId,
      SampleEventType eventType,
      String actorId,
      String actorName,
      ActorRole actorRole,
      DateTime timestamp,
      GeoLocation location,
      String eventHash,
      String? previousEventHash,
      EventMetadata? metadata,
      String? notes});

  @override
  $GeoLocationCopyWith<$Res> get location;
  @override
  $EventMetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$SampleEventImplCopyWithImpl<$Res>
    extends _$SampleEventCopyWithImpl<$Res, _$SampleEventImpl>
    implements _$$SampleEventImplCopyWith<$Res> {
  __$$SampleEventImplCopyWithImpl(
      _$SampleEventImpl _value, $Res Function(_$SampleEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sampleId = null,
    Object? eventType = null,
    Object? actorId = null,
    Object? actorName = null,
    Object? actorRole = null,
    Object? timestamp = null,
    Object? location = null,
    Object? eventHash = null,
    Object? previousEventHash = freezed,
    Object? metadata = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$SampleEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as SampleEventType,
      actorId: null == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String,
      actorName: null == actorName
          ? _value.actorName
          : actorName // ignore: cast_nullable_to_non_nullable
              as String,
      actorRole: null == actorRole
          ? _value.actorRole
          : actorRole // ignore: cast_nullable_to_non_nullable
              as ActorRole,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
      eventHash: null == eventHash
          ? _value.eventHash
          : eventHash // ignore: cast_nullable_to_non_nullable
              as String,
      previousEventHash: freezed == previousEventHash
          ? _value.previousEventHash
          : previousEventHash // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as EventMetadata?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleEventImpl implements _SampleEvent {
  const _$SampleEventImpl(
      {required this.id,
      required this.sampleId,
      required this.eventType,
      required this.actorId,
      required this.actorName,
      required this.actorRole,
      required this.timestamp,
      required this.location,
      required this.eventHash,
      this.previousEventHash,
      this.metadata,
      this.notes});

  factory _$SampleEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleEventImplFromJson(json);

  @override
  final String id;
  @override
  final String sampleId;
  @override
  final SampleEventType eventType;
  @override
  final String actorId;
  @override
  final String actorName;
  @override
  final ActorRole actorRole;
  @override
  final DateTime timestamp;
  @override
  final GeoLocation location;
  @override
  final String eventHash;
// For immutable audit trail
  @override
  final String? previousEventHash;
  @override
  final EventMetadata? metadata;
  @override
  final String? notes;

  @override
  String toString() {
    return 'SampleEvent(id: $id, sampleId: $sampleId, eventType: $eventType, actorId: $actorId, actorName: $actorName, actorRole: $actorRole, timestamp: $timestamp, location: $location, eventHash: $eventHash, previousEventHash: $previousEventHash, metadata: $metadata, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.actorId, actorId) || other.actorId == actorId) &&
            (identical(other.actorName, actorName) ||
                other.actorName == actorName) &&
            (identical(other.actorRole, actorRole) ||
                other.actorRole == actorRole) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.eventHash, eventHash) ||
                other.eventHash == eventHash) &&
            (identical(other.previousEventHash, previousEventHash) ||
                other.previousEventHash == previousEventHash) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sampleId,
      eventType,
      actorId,
      actorName,
      actorRole,
      timestamp,
      location,
      eventHash,
      previousEventHash,
      metadata,
      notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleEventImplCopyWith<_$SampleEventImpl> get copyWith =>
      __$$SampleEventImplCopyWithImpl<_$SampleEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleEventImplToJson(
      this,
    );
  }
}

abstract class _SampleEvent implements SampleEvent {
  const factory _SampleEvent(
      {required final String id,
      required final String sampleId,
      required final SampleEventType eventType,
      required final String actorId,
      required final String actorName,
      required final ActorRole actorRole,
      required final DateTime timestamp,
      required final GeoLocation location,
      required final String eventHash,
      final String? previousEventHash,
      final EventMetadata? metadata,
      final String? notes}) = _$SampleEventImpl;

  factory _SampleEvent.fromJson(Map<String, dynamic> json) =
      _$SampleEventImpl.fromJson;

  @override
  String get id;
  @override
  String get sampleId;
  @override
  SampleEventType get eventType;
  @override
  String get actorId;
  @override
  String get actorName;
  @override
  ActorRole get actorRole;
  @override
  DateTime get timestamp;
  @override
  GeoLocation get location;
  @override
  String get eventHash;
  @override // For immutable audit trail
  String? get previousEventHash;
  @override
  EventMetadata? get metadata;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$SampleEventImplCopyWith<_$SampleEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventMetadata _$EventMetadataFromJson(Map<String, dynamic> json) {
  return _EventMetadata.fromJson(json);
}

/// @nodoc
mixin _$EventMetadata {
  double? get temperature => throw _privateConstructorUsedError;
  double? get humidity => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  String? get appVersion => throw _privateConstructorUsedError;
  String? get bleDeviceId => throw _privateConstructorUsedError;
  bool? get biometricSuccess => throw _privateConstructorUsedError;
  String? get barcodeValue => throw _privateConstructorUsedError;
  Map<String, dynamic>? get additionalData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventMetadataCopyWith<EventMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventMetadataCopyWith<$Res> {
  factory $EventMetadataCopyWith(
          EventMetadata value, $Res Function(EventMetadata) then) =
      _$EventMetadataCopyWithImpl<$Res, EventMetadata>;
  @useResult
  $Res call(
      {double? temperature,
      double? humidity,
      String? deviceId,
      String? appVersion,
      String? bleDeviceId,
      bool? biometricSuccess,
      String? barcodeValue,
      Map<String, dynamic>? additionalData});
}

/// @nodoc
class _$EventMetadataCopyWithImpl<$Res, $Val extends EventMetadata>
    implements $EventMetadataCopyWith<$Res> {
  _$EventMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? deviceId = freezed,
    Object? appVersion = freezed,
    Object? bleDeviceId = freezed,
    Object? biometricSuccess = freezed,
    Object? barcodeValue = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      bleDeviceId: freezed == bleDeviceId
          ? _value.bleDeviceId
          : bleDeviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      biometricSuccess: freezed == biometricSuccess
          ? _value.biometricSuccess
          : biometricSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      barcodeValue: freezed == barcodeValue
          ? _value.barcodeValue
          : barcodeValue // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventMetadataImplCopyWith<$Res>
    implements $EventMetadataCopyWith<$Res> {
  factory _$$EventMetadataImplCopyWith(
          _$EventMetadataImpl value, $Res Function(_$EventMetadataImpl) then) =
      __$$EventMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? temperature,
      double? humidity,
      String? deviceId,
      String? appVersion,
      String? bleDeviceId,
      bool? biometricSuccess,
      String? barcodeValue,
      Map<String, dynamic>? additionalData});
}

/// @nodoc
class __$$EventMetadataImplCopyWithImpl<$Res>
    extends _$EventMetadataCopyWithImpl<$Res, _$EventMetadataImpl>
    implements _$$EventMetadataImplCopyWith<$Res> {
  __$$EventMetadataImplCopyWithImpl(
      _$EventMetadataImpl _value, $Res Function(_$EventMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? humidity = freezed,
    Object? deviceId = freezed,
    Object? appVersion = freezed,
    Object? bleDeviceId = freezed,
    Object? biometricSuccess = freezed,
    Object? barcodeValue = freezed,
    Object? additionalData = freezed,
  }) {
    return _then(_$EventMetadataImpl(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      bleDeviceId: freezed == bleDeviceId
          ? _value.bleDeviceId
          : bleDeviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      biometricSuccess: freezed == biometricSuccess
          ? _value.biometricSuccess
          : biometricSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      barcodeValue: freezed == barcodeValue
          ? _value.barcodeValue
          : barcodeValue // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalData: freezed == additionalData
          ? _value._additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventMetadataImpl implements _EventMetadata {
  const _$EventMetadataImpl(
      {this.temperature,
      this.humidity,
      this.deviceId,
      this.appVersion,
      this.bleDeviceId,
      this.biometricSuccess,
      this.barcodeValue,
      final Map<String, dynamic>? additionalData})
      : _additionalData = additionalData;

  factory _$EventMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventMetadataImplFromJson(json);

  @override
  final double? temperature;
  @override
  final double? humidity;
  @override
  final String? deviceId;
  @override
  final String? appVersion;
  @override
  final String? bleDeviceId;
  @override
  final bool? biometricSuccess;
  @override
  final String? barcodeValue;
  final Map<String, dynamic>? _additionalData;
  @override
  Map<String, dynamic>? get additionalData {
    final value = _additionalData;
    if (value == null) return null;
    if (_additionalData is EqualUnmodifiableMapView) return _additionalData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'EventMetadata(temperature: $temperature, humidity: $humidity, deviceId: $deviceId, appVersion: $appVersion, bleDeviceId: $bleDeviceId, biometricSuccess: $biometricSuccess, barcodeValue: $barcodeValue, additionalData: $additionalData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventMetadataImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.bleDeviceId, bleDeviceId) ||
                other.bleDeviceId == bleDeviceId) &&
            (identical(other.biometricSuccess, biometricSuccess) ||
                other.biometricSuccess == biometricSuccess) &&
            (identical(other.barcodeValue, barcodeValue) ||
                other.barcodeValue == barcodeValue) &&
            const DeepCollectionEquality()
                .equals(other._additionalData, _additionalData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      temperature,
      humidity,
      deviceId,
      appVersion,
      bleDeviceId,
      biometricSuccess,
      barcodeValue,
      const DeepCollectionEquality().hash(_additionalData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventMetadataImplCopyWith<_$EventMetadataImpl> get copyWith =>
      __$$EventMetadataImplCopyWithImpl<_$EventMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventMetadataImplToJson(
      this,
    );
  }
}

abstract class _EventMetadata implements EventMetadata {
  const factory _EventMetadata(
      {final double? temperature,
      final double? humidity,
      final String? deviceId,
      final String? appVersion,
      final String? bleDeviceId,
      final bool? biometricSuccess,
      final String? barcodeValue,
      final Map<String, dynamic>? additionalData}) = _$EventMetadataImpl;

  factory _EventMetadata.fromJson(Map<String, dynamic> json) =
      _$EventMetadataImpl.fromJson;

  @override
  double? get temperature;
  @override
  double? get humidity;
  @override
  String? get deviceId;
  @override
  String? get appVersion;
  @override
  String? get bleDeviceId;
  @override
  bool? get biometricSuccess;
  @override
  String? get barcodeValue;
  @override
  Map<String, dynamic>? get additionalData;
  @override
  @JsonKey(ignore: true)
  _$$EventMetadataImplCopyWith<_$EventMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeoLocation _$GeoLocationFromJson(Map<String, dynamic> json) {
  return _GeoLocation.fromJson(json);
}

/// @nodoc
mixin _$GeoLocation {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double? get altitude => throw _privateConstructorUsedError;
  double? get accuracy => throw _privateConstructorUsedError;
  DateTime? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoLocationCopyWith<GeoLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoLocationCopyWith<$Res> {
  factory $GeoLocationCopyWith(
          GeoLocation value, $Res Function(GeoLocation) then) =
      _$GeoLocationCopyWithImpl<$Res, GeoLocation>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      double? altitude,
      double? accuracy,
      DateTime? timestamp});
}

/// @nodoc
class _$GeoLocationCopyWithImpl<$Res, $Val extends GeoLocation>
    implements $GeoLocationCopyWith<$Res> {
  _$GeoLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? altitude = freezed,
    Object? accuracy = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      altitude: freezed == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoLocationImplCopyWith<$Res>
    implements $GeoLocationCopyWith<$Res> {
  factory _$$GeoLocationImplCopyWith(
          _$GeoLocationImpl value, $Res Function(_$GeoLocationImpl) then) =
      __$$GeoLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      double? altitude,
      double? accuracy,
      DateTime? timestamp});
}

/// @nodoc
class __$$GeoLocationImplCopyWithImpl<$Res>
    extends _$GeoLocationCopyWithImpl<$Res, _$GeoLocationImpl>
    implements _$$GeoLocationImplCopyWith<$Res> {
  __$$GeoLocationImplCopyWithImpl(
      _$GeoLocationImpl _value, $Res Function(_$GeoLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? altitude = freezed,
    Object? accuracy = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$GeoLocationImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      altitude: freezed == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoLocationImpl implements _GeoLocation {
  const _$GeoLocationImpl(
      {required this.latitude,
      required this.longitude,
      this.altitude,
      this.accuracy,
      this.timestamp});

  factory _$GeoLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoLocationImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double? altitude;
  @override
  final double? accuracy;
  @override
  final DateTime? timestamp;

  @override
  String toString() {
    return 'GeoLocation(latitude: $latitude, longitude: $longitude, altitude: $altitude, accuracy: $accuracy, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoLocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.altitude, altitude) ||
                other.altitude == altitude) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, latitude, longitude, altitude, accuracy, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoLocationImplCopyWith<_$GeoLocationImpl> get copyWith =>
      __$$GeoLocationImplCopyWithImpl<_$GeoLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoLocationImplToJson(
      this,
    );
  }
}

abstract class _GeoLocation implements GeoLocation {
  const factory _GeoLocation(
      {required final double latitude,
      required final double longitude,
      final double? altitude,
      final double? accuracy,
      final DateTime? timestamp}) = _$GeoLocationImpl;

  factory _GeoLocation.fromJson(Map<String, dynamic> json) =
      _$GeoLocationImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double? get altitude;
  @override
  double? get accuracy;
  @override
  DateTime? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$GeoLocationImplCopyWith<_$GeoLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
