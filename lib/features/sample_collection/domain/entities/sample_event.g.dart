// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SampleEvent _$SampleEventFromJson(Map<String, dynamic> json) => _SampleEvent(
  id: json['id'] as String,
  sampleId: json['sampleId'] as String,
  eventType: $enumDecode(_$SampleEventTypeEnumMap, json['eventType']),
  actorId: json['actorId'] as String,
  actorName: json['actorName'] as String,
  actorRole: $enumDecode(_$ActorRoleEnumMap, json['actorRole']),
  timestamp: DateTime.parse(json['timestamp'] as String),
  location: GeoLocation.fromJson(json['location'] as Map<String, dynamic>),
  eventHash: json['eventHash'] as String,
  previousEventHash: json['previousEventHash'] as String?,
  metadata: json['metadata'] == null
      ? null
      : EventMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$SampleEventToJson(_SampleEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sampleId': instance.sampleId,
      'eventType': _$SampleEventTypeEnumMap[instance.eventType]!,
      'actorId': instance.actorId,
      'actorName': instance.actorName,
      'actorRole': _$ActorRoleEnumMap[instance.actorRole]!,
      'timestamp': instance.timestamp.toIso8601String(),
      'location': instance.location,
      'eventHash': instance.eventHash,
      'previousEventHash': instance.previousEventHash,
      'metadata': instance.metadata,
      'notes': instance.notes,
    };

const _$SampleEventTypeEnumMap = {
  SampleEventType.collected: 'collected',
  SampleEventType.biometricVerified: 'biometricVerified',
  SampleEventType.barcodeScanned: 'barcodeScanned',
  SampleEventType.transitStarted: 'transitStarted',
  SampleEventType.locationUpdated: 'locationUpdated',
  SampleEventType.temperatureLogged: 'temperatureLogged',
  SampleEventType.handoverInitiated: 'handoverInitiated',
  SampleEventType.handoverCompleted: 'handoverCompleted',
  SampleEventType.reachedLab: 'reachedLab',
  SampleEventType.qualityChecked: 'qualityChecked',
  SampleEventType.processingStarted: 'processingStarted',
  SampleEventType.resultEntered: 'resultEntered',
  SampleEventType.resultReviewed: 'resultReviewed',
  SampleEventType.pathologistSignedOff: 'pathologistSignedOff',
  SampleEventType.reportGenerated: 'reportGenerated',
  SampleEventType.reportDispatched: 'reportDispatched',
  SampleEventType.sampleStored: 'sampleStored',
  SampleEventType.sampleDisposed: 'sampleDisposed',
};

const _$ActorRoleEnumMap = {
  ActorRole.phlebotomist: 'phlebotomist',
  ActorRole.labTechnician: 'labTechnician',
  ActorRole.pathologist: 'pathologist',
  ActorRole.labManager: 'labManager',
  ActorRole.system: 'system',
};

_EventMetadata _$EventMetadataFromJson(Map<String, dynamic> json) =>
    _EventMetadata(
      temperature: (json['temperature'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      deviceId: json['deviceId'] as String?,
      appVersion: json['appVersion'] as String?,
      bleDeviceId: json['bleDeviceId'] as String?,
      biometricSuccess: json['biometricSuccess'] as bool?,
      barcodeValue: json['barcodeValue'] as String?,
      additionalData: json['additionalData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$EventMetadataToJson(_EventMetadata instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'humidity': instance.humidity,
      'deviceId': instance.deviceId,
      'appVersion': instance.appVersion,
      'bleDeviceId': instance.bleDeviceId,
      'biometricSuccess': instance.biometricSuccess,
      'barcodeValue': instance.barcodeValue,
      'additionalData': instance.additionalData,
    };

_GeoLocation _$GeoLocationFromJson(Map<String, dynamic> json) => _GeoLocation(
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  altitude: (json['altitude'] as num?)?.toDouble(),
  accuracy: (json['accuracy'] as num?)?.toDouble(),
  timestamp: json['timestamp'] == null
      ? null
      : DateTime.parse(json['timestamp'] as String),
);

Map<String, dynamic> _$GeoLocationToJson(_GeoLocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'altitude': instance.altitude,
      'accuracy': instance.accuracy,
      'timestamp': instance.timestamp?.toIso8601String(),
    };
