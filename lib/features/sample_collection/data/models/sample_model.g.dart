// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SampleModelImpl _$$SampleModelImplFromJson(Map<String, dynamic> json) =>
    _$SampleModelImpl(
      id: json['id'] as String,
      vialId: json['vialId'] as String,
      patientAbhaId: json['patientAbhaId'] as String,
      patientName: json['patientName'] as String,
      orderId: json['orderId'] as String,
      testIds:
          (json['testIds'] as List<dynamic>).map((e) => e as String).toList(),
      status: json['status'] as Map<String, dynamic>,
      collectionTime: json['collectionTime'] as String,
      integrityScore: SampleIntegrityScoreModel.fromJson(
          json['integrityScore'] as Map<String, dynamic>),
      chainOfCustody: (json['chainOfCustody'] as List<dynamic>)
          .map((e) => SampleEventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      phlebotomistId: json['phlebotomistId'] as String?,
      phlebotomistName: json['phlebotomistName'] as String?,
      labId: json['labId'] as String?,
      labName: json['labName'] as String?,
      reachedLabTime: json['reachedLabTime'] as String?,
      processingStartTime: json['processingStartTime'] as String?,
      processingEndTime: json['processingEndTime'] as String?,
      coldChainData: json['coldChainData'] == null
          ? null
          : ColdChainDataModel.fromJson(
              json['coldChainData'] as Map<String, dynamic>),
      biometricVerification: json['biometricVerification'] == null
          ? null
          : BiometricVerificationModel.fromJson(
              json['biometricVerification'] as Map<String, dynamic>),
      preAnalyticalRisk: json['preAnalyticalRisk'] == null
          ? null
          : PreAnalyticalRiskModel.fromJson(
              json['preAnalyticalRisk'] as Map<String, dynamic>),
      condition: json['condition'] == null
          ? null
          : SampleConditionModel.fromJson(
              json['condition'] as Map<String, dynamic>),
      notes: json['notes'] as String?,
      imageUrls: (json['imageUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$SampleModelImplToJson(_$SampleModelImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'vialId': instance.vialId,
    'patientAbhaId': instance.patientAbhaId,
    'patientName': instance.patientName,
    'orderId': instance.orderId,
    'testIds': instance.testIds,
    'status': instance.status,
    'collectionTime': instance.collectionTime,
    'integrityScore': instance.integrityScore.toJson(),
    'chainOfCustody': instance.chainOfCustody.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phlebotomistId', instance.phlebotomistId);
  writeNotNull('phlebotomistName', instance.phlebotomistName);
  writeNotNull('labId', instance.labId);
  writeNotNull('labName', instance.labName);
  writeNotNull('reachedLabTime', instance.reachedLabTime);
  writeNotNull('processingStartTime', instance.processingStartTime);
  writeNotNull('processingEndTime', instance.processingEndTime);
  writeNotNull('coldChainData', instance.coldChainData?.toJson());
  writeNotNull(
      'biometricVerification', instance.biometricVerification?.toJson());
  writeNotNull('preAnalyticalRisk', instance.preAnalyticalRisk?.toJson());
  writeNotNull('condition', instance.condition?.toJson());
  writeNotNull('notes', instance.notes);
  val['imageUrls'] = instance.imageUrls;
  val['createdAt'] = instance.createdAt;
  writeNotNull('updatedAt', instance.updatedAt);
  return val;
}

_$SampleConditionModelImpl _$$SampleConditionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SampleConditionModelImpl(
      isHemolyzed: json['isHemolyzed'] as bool,
      isClotted: json['isClotted'] as bool,
      isLipemic: json['isLipemic'] as bool,
      isIcteric: json['isIcteric'] as bool,
      volumeStatus: json['volumeStatus'] as String,
      containerIntegrity: json['containerIntegrity'] as String,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$SampleConditionModelImplToJson(
    _$SampleConditionModelImpl instance) {
  final val = <String, dynamic>{
    'isHemolyzed': instance.isHemolyzed,
    'isClotted': instance.isClotted,
    'isLipemic': instance.isLipemic,
    'isIcteric': instance.isIcteric,
    'volumeStatus': instance.volumeStatus,
    'containerIntegrity': instance.containerIntegrity,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('notes', instance.notes);
  return val;
}

_$SampleEventModelImpl _$$SampleEventModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SampleEventModelImpl(
      id: json['id'] as String,
      sampleId: json['sampleId'] as String,
      eventType: json['eventType'] as String,
      actorId: json['actorId'] as String,
      actorName: json['actorName'] as String,
      actorRole: json['actorRole'] as String,
      timestamp: json['timestamp'] as String,
      location:
          GeoLocationModel.fromJson(json['location'] as Map<String, dynamic>),
      eventHash: json['eventHash'] as String,
      previousEventHash: json['previousEventHash'] as String?,
      metadata: json['metadata'] == null
          ? null
          : EventMetadataModel.fromJson(
              json['metadata'] as Map<String, dynamic>),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$SampleEventModelImplToJson(
    _$SampleEventModelImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'sampleId': instance.sampleId,
    'eventType': instance.eventType,
    'actorId': instance.actorId,
    'actorName': instance.actorName,
    'actorRole': instance.actorRole,
    'timestamp': instance.timestamp,
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

_$GeoLocationModelImpl _$$GeoLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GeoLocationModelImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      altitude: (json['altitude'] as num?)?.toDouble(),
      accuracy: (json['accuracy'] as num?)?.toDouble(),
      timestamp: json['timestamp'] as String?,
    );

Map<String, dynamic> _$$GeoLocationModelImplToJson(
    _$GeoLocationModelImpl instance) {
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
  writeNotNull('timestamp', instance.timestamp);
  return val;
}

_$EventMetadataModelImpl _$$EventMetadataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EventMetadataModelImpl(
      temperature: (json['temperature'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      deviceId: json['deviceId'] as String?,
      appVersion: json['appVersion'] as String?,
      bleDeviceId: json['bleDeviceId'] as String?,
      biometricSuccess: json['biometricSuccess'] as bool?,
      barcodeValue: json['barcodeValue'] as String?,
      additionalData: json['additionalData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$EventMetadataModelImplToJson(
    _$EventMetadataModelImpl instance) {
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

_$BiometricVerificationModelImpl _$$BiometricVerificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BiometricVerificationModelImpl(
      verificationId: json['verificationId'] as String,
      patientDeviceId: json['patientDeviceId'] as String,
      phlebotomistDeviceId: json['phlebotomistDeviceId'] as String,
      timestamp: json['timestamp'] as String,
      success: json['success'] as bool,
      proximityDistance: (json['proximityDistance'] as num).toDouble(),
      signalStrength: (json['signalStrength'] as num).toInt(),
      failureReason: json['failureReason'] as String?,
      attemptCount: (json['attemptCount'] as num?)?.toInt(),
      location: json['location'] == null
          ? null
          : GeoLocationModel.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BiometricVerificationModelImplToJson(
    _$BiometricVerificationModelImpl instance) {
  final val = <String, dynamic>{
    'verificationId': instance.verificationId,
    'patientDeviceId': instance.patientDeviceId,
    'phlebotomistDeviceId': instance.phlebotomistDeviceId,
    'timestamp': instance.timestamp,
    'success': instance.success,
    'proximityDistance': instance.proximityDistance,
    'signalStrength': instance.signalStrength,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('failureReason', instance.failureReason);
  writeNotNull('attemptCount', instance.attemptCount);
  writeNotNull('location', instance.location?.toJson());
  return val;
}
