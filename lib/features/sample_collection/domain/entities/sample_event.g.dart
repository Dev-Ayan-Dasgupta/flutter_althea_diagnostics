// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SampleEventImpl _$$SampleEventImplFromJson(Map<String, dynamic> json) =>
    _$SampleEventImpl(
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

Map<String, dynamic> _$$SampleEventImplToJson(_$SampleEventImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'sampleId': instance.sampleId,
    'eventType': _$SampleEventTypeEnumMap[instance.eventType]!,
    'actorId': instance.actorId,
    'actorName': instance.actorName,
    'actorRole': _$ActorRoleEnumMap[instance.actorRole]!,
    'timestamp': instance.timestamp.toIso8601String(),
    'location': instance.location.toJson(),
    'eventHash': instance.eventHash,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('previousEventHash', instance.previousEventHash);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('notes', instance.notes);
  return val;
}

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

_$EventMetadataImpl _$$EventMetadataImplFromJson(Map<String, dynamic> json) =>
    _$EventMetadataImpl(
      temperature: (json['temperature'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      deviceId: json['deviceId'] as String?,
      appVersion: json['appVersion'] as String?,
      bleDeviceId: json['bleDeviceId'] as String?,
      biometricSuccess: json['biometricSuccess'] as bool?,
      barcodeValue: json['barcodeValue'] as String?,
      additionalData: json['additionalData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$EventMetadataImplToJson(_$EventMetadataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('temperature', instance.temperature);
  writeNotNull('humidity', instance.humidity);
  writeNotNull('deviceId', instance.deviceId);
  writeNotNull('appVersion', instance.appVersion);
  writeNotNull('bleDeviceId', instance.bleDeviceId);
  writeNotNull('biometricSuccess', instance.biometricSuccess);
  writeNotNull('barcodeValue', instance.barcodeValue);
  writeNotNull('additionalData', instance.additionalData);
  return val;
}

_$GeoLocationImpl _$$GeoLocationImplFromJson(Map<String, dynamic> json) =>
    _$GeoLocationImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      altitude: (json['altitude'] as num?)?.toDouble(),
      accuracy: (json['accuracy'] as num?)?.toDouble(),
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$GeoLocationImplToJson(_$GeoLocationImpl instance) {
  final val = <String, dynamic>{
    'latitude': instance.latitude,
    'longitude': instance.longitude,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('altitude', instance.altitude);
  writeNotNull('accuracy', instance.accuracy);
  writeNotNull('timestamp', instance.timestamp?.toIso8601String());
  return val;
}
