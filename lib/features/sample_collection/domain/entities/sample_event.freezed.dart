// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SampleEvent {

 String get id; String get sampleId; SampleEventType get eventType; String get actorId; String get actorName; ActorRole get actorRole; DateTime get timestamp; GeoLocation get location; String get eventHash;// For immutable audit trail
 String? get previousEventHash; EventMetadata? get metadata; String? get notes;
/// Create a copy of SampleEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleEventCopyWith<SampleEvent> get copyWith => _$SampleEventCopyWithImpl<SampleEvent>(this as SampleEvent, _$identity);

  /// Serializes this SampleEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.actorId, actorId) || other.actorId == actorId)&&(identical(other.actorName, actorName) || other.actorName == actorName)&&(identical(other.actorRole, actorRole) || other.actorRole == actorRole)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.location, location) || other.location == location)&&(identical(other.eventHash, eventHash) || other.eventHash == eventHash)&&(identical(other.previousEventHash, previousEventHash) || other.previousEventHash == previousEventHash)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sampleId,eventType,actorId,actorName,actorRole,timestamp,location,eventHash,previousEventHash,metadata,notes);

@override
String toString() {
  return 'SampleEvent(id: $id, sampleId: $sampleId, eventType: $eventType, actorId: $actorId, actorName: $actorName, actorRole: $actorRole, timestamp: $timestamp, location: $location, eventHash: $eventHash, previousEventHash: $previousEventHash, metadata: $metadata, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $SampleEventCopyWith<$Res>  {
  factory $SampleEventCopyWith(SampleEvent value, $Res Function(SampleEvent) _then) = _$SampleEventCopyWithImpl;
@useResult
$Res call({
 String id, String sampleId, SampleEventType eventType, String actorId, String actorName, ActorRole actorRole, DateTime timestamp, GeoLocation location, String eventHash, String? previousEventHash, EventMetadata? metadata, String? notes
});


$GeoLocationCopyWith<$Res> get location;$EventMetadataCopyWith<$Res>? get metadata;

}
/// @nodoc
class _$SampleEventCopyWithImpl<$Res>
    implements $SampleEventCopyWith<$Res> {
  _$SampleEventCopyWithImpl(this._self, this._then);

  final SampleEvent _self;
  final $Res Function(SampleEvent) _then;

/// Create a copy of SampleEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sampleId = null,Object? eventType = null,Object? actorId = null,Object? actorName = null,Object? actorRole = null,Object? timestamp = null,Object? location = null,Object? eventHash = null,Object? previousEventHash = freezed,Object? metadata = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sampleId: null == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as SampleEventType,actorId: null == actorId ? _self.actorId : actorId // ignore: cast_nullable_to_non_nullable
as String,actorName: null == actorName ? _self.actorName : actorName // ignore: cast_nullable_to_non_nullable
as String,actorRole: null == actorRole ? _self.actorRole : actorRole // ignore: cast_nullable_to_non_nullable
as ActorRole,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as GeoLocation,eventHash: null == eventHash ? _self.eventHash : eventHash // ignore: cast_nullable_to_non_nullable
as String,previousEventHash: freezed == previousEventHash ? _self.previousEventHash : previousEventHash // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as EventMetadata?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SampleEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<$Res> get location {
  
  return $GeoLocationCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of SampleEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $EventMetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [SampleEvent].
extension SampleEventPatterns on SampleEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SampleEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SampleEvent() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SampleEvent value)  $default,){
final _that = this;
switch (_that) {
case _SampleEvent():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SampleEvent value)?  $default,){
final _that = this;
switch (_that) {
case _SampleEvent() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String sampleId,  SampleEventType eventType,  String actorId,  String actorName,  ActorRole actorRole,  DateTime timestamp,  GeoLocation location,  String eventHash,  String? previousEventHash,  EventMetadata? metadata,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SampleEvent() when $default != null:
return $default(_that.id,_that.sampleId,_that.eventType,_that.actorId,_that.actorName,_that.actorRole,_that.timestamp,_that.location,_that.eventHash,_that.previousEventHash,_that.metadata,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String sampleId,  SampleEventType eventType,  String actorId,  String actorName,  ActorRole actorRole,  DateTime timestamp,  GeoLocation location,  String eventHash,  String? previousEventHash,  EventMetadata? metadata,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _SampleEvent():
return $default(_that.id,_that.sampleId,_that.eventType,_that.actorId,_that.actorName,_that.actorRole,_that.timestamp,_that.location,_that.eventHash,_that.previousEventHash,_that.metadata,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String sampleId,  SampleEventType eventType,  String actorId,  String actorName,  ActorRole actorRole,  DateTime timestamp,  GeoLocation location,  String eventHash,  String? previousEventHash,  EventMetadata? metadata,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _SampleEvent() when $default != null:
return $default(_that.id,_that.sampleId,_that.eventType,_that.actorId,_that.actorName,_that.actorRole,_that.timestamp,_that.location,_that.eventHash,_that.previousEventHash,_that.metadata,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SampleEvent implements SampleEvent {
  const _SampleEvent({required this.id, required this.sampleId, required this.eventType, required this.actorId, required this.actorName, required this.actorRole, required this.timestamp, required this.location, required this.eventHash, this.previousEventHash, this.metadata, this.notes});
  factory _SampleEvent.fromJson(Map<String, dynamic> json) => _$SampleEventFromJson(json);

@override final  String id;
@override final  String sampleId;
@override final  SampleEventType eventType;
@override final  String actorId;
@override final  String actorName;
@override final  ActorRole actorRole;
@override final  DateTime timestamp;
@override final  GeoLocation location;
@override final  String eventHash;
// For immutable audit trail
@override final  String? previousEventHash;
@override final  EventMetadata? metadata;
@override final  String? notes;

/// Create a copy of SampleEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SampleEventCopyWith<_SampleEvent> get copyWith => __$SampleEventCopyWithImpl<_SampleEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SampleEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SampleEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.sampleId, sampleId) || other.sampleId == sampleId)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.actorId, actorId) || other.actorId == actorId)&&(identical(other.actorName, actorName) || other.actorName == actorName)&&(identical(other.actorRole, actorRole) || other.actorRole == actorRole)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.location, location) || other.location == location)&&(identical(other.eventHash, eventHash) || other.eventHash == eventHash)&&(identical(other.previousEventHash, previousEventHash) || other.previousEventHash == previousEventHash)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sampleId,eventType,actorId,actorName,actorRole,timestamp,location,eventHash,previousEventHash,metadata,notes);

@override
String toString() {
  return 'SampleEvent(id: $id, sampleId: $sampleId, eventType: $eventType, actorId: $actorId, actorName: $actorName, actorRole: $actorRole, timestamp: $timestamp, location: $location, eventHash: $eventHash, previousEventHash: $previousEventHash, metadata: $metadata, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$SampleEventCopyWith<$Res> implements $SampleEventCopyWith<$Res> {
  factory _$SampleEventCopyWith(_SampleEvent value, $Res Function(_SampleEvent) _then) = __$SampleEventCopyWithImpl;
@override @useResult
$Res call({
 String id, String sampleId, SampleEventType eventType, String actorId, String actorName, ActorRole actorRole, DateTime timestamp, GeoLocation location, String eventHash, String? previousEventHash, EventMetadata? metadata, String? notes
});


@override $GeoLocationCopyWith<$Res> get location;@override $EventMetadataCopyWith<$Res>? get metadata;

}
/// @nodoc
class __$SampleEventCopyWithImpl<$Res>
    implements _$SampleEventCopyWith<$Res> {
  __$SampleEventCopyWithImpl(this._self, this._then);

  final _SampleEvent _self;
  final $Res Function(_SampleEvent) _then;

/// Create a copy of SampleEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sampleId = null,Object? eventType = null,Object? actorId = null,Object? actorName = null,Object? actorRole = null,Object? timestamp = null,Object? location = null,Object? eventHash = null,Object? previousEventHash = freezed,Object? metadata = freezed,Object? notes = freezed,}) {
  return _then(_SampleEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sampleId: null == sampleId ? _self.sampleId : sampleId // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as SampleEventType,actorId: null == actorId ? _self.actorId : actorId // ignore: cast_nullable_to_non_nullable
as String,actorName: null == actorName ? _self.actorName : actorName // ignore: cast_nullable_to_non_nullable
as String,actorRole: null == actorRole ? _self.actorRole : actorRole // ignore: cast_nullable_to_non_nullable
as ActorRole,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as GeoLocation,eventHash: null == eventHash ? _self.eventHash : eventHash // ignore: cast_nullable_to_non_nullable
as String,previousEventHash: freezed == previousEventHash ? _self.previousEventHash : previousEventHash // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as EventMetadata?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SampleEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<$Res> get location {
  
  return $GeoLocationCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of SampleEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $EventMetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// @nodoc
mixin _$EventMetadata {

 double? get temperature; double? get humidity; String? get deviceId; String? get appVersion; String? get bleDeviceId; bool? get biometricSuccess; String? get barcodeValue; Map<String, dynamic>? get additionalData;
/// Create a copy of EventMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventMetadataCopyWith<EventMetadata> get copyWith => _$EventMetadataCopyWithImpl<EventMetadata>(this as EventMetadata, _$identity);

  /// Serializes this EventMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventMetadata&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&(identical(other.bleDeviceId, bleDeviceId) || other.bleDeviceId == bleDeviceId)&&(identical(other.biometricSuccess, biometricSuccess) || other.biometricSuccess == biometricSuccess)&&(identical(other.barcodeValue, barcodeValue) || other.barcodeValue == barcodeValue)&&const DeepCollectionEquality().equals(other.additionalData, additionalData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature,humidity,deviceId,appVersion,bleDeviceId,biometricSuccess,barcodeValue,const DeepCollectionEquality().hash(additionalData));

@override
String toString() {
  return 'EventMetadata(temperature: $temperature, humidity: $humidity, deviceId: $deviceId, appVersion: $appVersion, bleDeviceId: $bleDeviceId, biometricSuccess: $biometricSuccess, barcodeValue: $barcodeValue, additionalData: $additionalData)';
}


}

/// @nodoc
abstract mixin class $EventMetadataCopyWith<$Res>  {
  factory $EventMetadataCopyWith(EventMetadata value, $Res Function(EventMetadata) _then) = _$EventMetadataCopyWithImpl;
@useResult
$Res call({
 double? temperature, double? humidity, String? deviceId, String? appVersion, String? bleDeviceId, bool? biometricSuccess, String? barcodeValue, Map<String, dynamic>? additionalData
});




}
/// @nodoc
class _$EventMetadataCopyWithImpl<$Res>
    implements $EventMetadataCopyWith<$Res> {
  _$EventMetadataCopyWithImpl(this._self, this._then);

  final EventMetadata _self;
  final $Res Function(EventMetadata) _then;

/// Create a copy of EventMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temperature = freezed,Object? humidity = freezed,Object? deviceId = freezed,Object? appVersion = freezed,Object? bleDeviceId = freezed,Object? biometricSuccess = freezed,Object? barcodeValue = freezed,Object? additionalData = freezed,}) {
  return _then(_self.copyWith(
temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as double?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,bleDeviceId: freezed == bleDeviceId ? _self.bleDeviceId : bleDeviceId // ignore: cast_nullable_to_non_nullable
as String?,biometricSuccess: freezed == biometricSuccess ? _self.biometricSuccess : biometricSuccess // ignore: cast_nullable_to_non_nullable
as bool?,barcodeValue: freezed == barcodeValue ? _self.barcodeValue : barcodeValue // ignore: cast_nullable_to_non_nullable
as String?,additionalData: freezed == additionalData ? _self.additionalData : additionalData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [EventMetadata].
extension EventMetadataPatterns on EventMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventMetadata() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventMetadata value)  $default,){
final _that = this;
switch (_that) {
case _EventMetadata():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _EventMetadata() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? temperature,  double? humidity,  String? deviceId,  String? appVersion,  String? bleDeviceId,  bool? biometricSuccess,  String? barcodeValue,  Map<String, dynamic>? additionalData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventMetadata() when $default != null:
return $default(_that.temperature,_that.humidity,_that.deviceId,_that.appVersion,_that.bleDeviceId,_that.biometricSuccess,_that.barcodeValue,_that.additionalData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? temperature,  double? humidity,  String? deviceId,  String? appVersion,  String? bleDeviceId,  bool? biometricSuccess,  String? barcodeValue,  Map<String, dynamic>? additionalData)  $default,) {final _that = this;
switch (_that) {
case _EventMetadata():
return $default(_that.temperature,_that.humidity,_that.deviceId,_that.appVersion,_that.bleDeviceId,_that.biometricSuccess,_that.barcodeValue,_that.additionalData);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? temperature,  double? humidity,  String? deviceId,  String? appVersion,  String? bleDeviceId,  bool? biometricSuccess,  String? barcodeValue,  Map<String, dynamic>? additionalData)?  $default,) {final _that = this;
switch (_that) {
case _EventMetadata() when $default != null:
return $default(_that.temperature,_that.humidity,_that.deviceId,_that.appVersion,_that.bleDeviceId,_that.biometricSuccess,_that.barcodeValue,_that.additionalData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventMetadata implements EventMetadata {
  const _EventMetadata({this.temperature, this.humidity, this.deviceId, this.appVersion, this.bleDeviceId, this.biometricSuccess, this.barcodeValue, final  Map<String, dynamic>? additionalData}): _additionalData = additionalData;
  factory _EventMetadata.fromJson(Map<String, dynamic> json) => _$EventMetadataFromJson(json);

@override final  double? temperature;
@override final  double? humidity;
@override final  String? deviceId;
@override final  String? appVersion;
@override final  String? bleDeviceId;
@override final  bool? biometricSuccess;
@override final  String? barcodeValue;
 final  Map<String, dynamic>? _additionalData;
@override Map<String, dynamic>? get additionalData {
  final value = _additionalData;
  if (value == null) return null;
  if (_additionalData is EqualUnmodifiableMapView) return _additionalData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of EventMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventMetadataCopyWith<_EventMetadata> get copyWith => __$EventMetadataCopyWithImpl<_EventMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventMetadata&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.appVersion, appVersion) || other.appVersion == appVersion)&&(identical(other.bleDeviceId, bleDeviceId) || other.bleDeviceId == bleDeviceId)&&(identical(other.biometricSuccess, biometricSuccess) || other.biometricSuccess == biometricSuccess)&&(identical(other.barcodeValue, barcodeValue) || other.barcodeValue == barcodeValue)&&const DeepCollectionEquality().equals(other._additionalData, _additionalData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature,humidity,deviceId,appVersion,bleDeviceId,biometricSuccess,barcodeValue,const DeepCollectionEquality().hash(_additionalData));

@override
String toString() {
  return 'EventMetadata(temperature: $temperature, humidity: $humidity, deviceId: $deviceId, appVersion: $appVersion, bleDeviceId: $bleDeviceId, biometricSuccess: $biometricSuccess, barcodeValue: $barcodeValue, additionalData: $additionalData)';
}


}

/// @nodoc
abstract mixin class _$EventMetadataCopyWith<$Res> implements $EventMetadataCopyWith<$Res> {
  factory _$EventMetadataCopyWith(_EventMetadata value, $Res Function(_EventMetadata) _then) = __$EventMetadataCopyWithImpl;
@override @useResult
$Res call({
 double? temperature, double? humidity, String? deviceId, String? appVersion, String? bleDeviceId, bool? biometricSuccess, String? barcodeValue, Map<String, dynamic>? additionalData
});




}
/// @nodoc
class __$EventMetadataCopyWithImpl<$Res>
    implements _$EventMetadataCopyWith<$Res> {
  __$EventMetadataCopyWithImpl(this._self, this._then);

  final _EventMetadata _self;
  final $Res Function(_EventMetadata) _then;

/// Create a copy of EventMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temperature = freezed,Object? humidity = freezed,Object? deviceId = freezed,Object? appVersion = freezed,Object? bleDeviceId = freezed,Object? biometricSuccess = freezed,Object? barcodeValue = freezed,Object? additionalData = freezed,}) {
  return _then(_EventMetadata(
temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,humidity: freezed == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as double?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,appVersion: freezed == appVersion ? _self.appVersion : appVersion // ignore: cast_nullable_to_non_nullable
as String?,bleDeviceId: freezed == bleDeviceId ? _self.bleDeviceId : bleDeviceId // ignore: cast_nullable_to_non_nullable
as String?,biometricSuccess: freezed == biometricSuccess ? _self.biometricSuccess : biometricSuccess // ignore: cast_nullable_to_non_nullable
as bool?,barcodeValue: freezed == barcodeValue ? _self.barcodeValue : barcodeValue // ignore: cast_nullable_to_non_nullable
as String?,additionalData: freezed == additionalData ? _self._additionalData : additionalData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$GeoLocation {

 double get latitude; double get longitude; double? get altitude; double? get accuracy; DateTime? get timestamp;
/// Create a copy of GeoLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<GeoLocation> get copyWith => _$GeoLocationCopyWithImpl<GeoLocation>(this as GeoLocation, _$identity);

  /// Serializes this GeoLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeoLocation&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.altitude, altitude) || other.altitude == altitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,altitude,accuracy,timestamp);

@override
String toString() {
  return 'GeoLocation(latitude: $latitude, longitude: $longitude, altitude: $altitude, accuracy: $accuracy, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $GeoLocationCopyWith<$Res>  {
  factory $GeoLocationCopyWith(GeoLocation value, $Res Function(GeoLocation) _then) = _$GeoLocationCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, double? altitude, double? accuracy, DateTime? timestamp
});




}
/// @nodoc
class _$GeoLocationCopyWithImpl<$Res>
    implements $GeoLocationCopyWith<$Res> {
  _$GeoLocationCopyWithImpl(this._self, this._then);

  final GeoLocation _self;
  final $Res Function(GeoLocation) _then;

/// Create a copy of GeoLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? altitude = freezed,Object? accuracy = freezed,Object? timestamp = freezed,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,altitude: freezed == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [GeoLocation].
extension GeoLocationPatterns on GeoLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeoLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeoLocation() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeoLocation value)  $default,){
final _that = this;
switch (_that) {
case _GeoLocation():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeoLocation value)?  $default,){
final _that = this;
switch (_that) {
case _GeoLocation() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude,  double? altitude,  double? accuracy,  DateTime? timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeoLocation() when $default != null:
return $default(_that.latitude,_that.longitude,_that.altitude,_that.accuracy,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude,  double? altitude,  double? accuracy,  DateTime? timestamp)  $default,) {final _that = this;
switch (_that) {
case _GeoLocation():
return $default(_that.latitude,_that.longitude,_that.altitude,_that.accuracy,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude,  double? altitude,  double? accuracy,  DateTime? timestamp)?  $default,) {final _that = this;
switch (_that) {
case _GeoLocation() when $default != null:
return $default(_that.latitude,_that.longitude,_that.altitude,_that.accuracy,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeoLocation implements GeoLocation {
  const _GeoLocation({required this.latitude, required this.longitude, this.altitude, this.accuracy, this.timestamp});
  factory _GeoLocation.fromJson(Map<String, dynamic> json) => _$GeoLocationFromJson(json);

@override final  double latitude;
@override final  double longitude;
@override final  double? altitude;
@override final  double? accuracy;
@override final  DateTime? timestamp;

/// Create a copy of GeoLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeoLocationCopyWith<_GeoLocation> get copyWith => __$GeoLocationCopyWithImpl<_GeoLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeoLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeoLocation&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.altitude, altitude) || other.altitude == altitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,altitude,accuracy,timestamp);

@override
String toString() {
  return 'GeoLocation(latitude: $latitude, longitude: $longitude, altitude: $altitude, accuracy: $accuracy, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$GeoLocationCopyWith<$Res> implements $GeoLocationCopyWith<$Res> {
  factory _$GeoLocationCopyWith(_GeoLocation value, $Res Function(_GeoLocation) _then) = __$GeoLocationCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude, double? altitude, double? accuracy, DateTime? timestamp
});




}
/// @nodoc
class __$GeoLocationCopyWithImpl<$Res>
    implements _$GeoLocationCopyWith<$Res> {
  __$GeoLocationCopyWithImpl(this._self, this._then);

  final _GeoLocation _self;
  final $Res Function(_GeoLocation) _then;

/// Create a copy of GeoLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? altitude = freezed,Object? accuracy = freezed,Object? timestamp = freezed,}) {
  return _then(_GeoLocation(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,altitude: freezed == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
