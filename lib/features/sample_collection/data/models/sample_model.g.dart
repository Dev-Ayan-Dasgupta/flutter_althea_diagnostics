// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SampleModel _$SampleModelFromJson(Map<String, dynamic> json) => _SampleModel(
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

Map<String, dynamic> _$SampleModelToJson(_SampleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vialId': instance.vialId,
      'patientAbhaId': instance.patientAbhaId,
      'patientName': instance.patientName,
      'orderId': instance.orderId,
      'testIds': instance.testIds,
      'status': instance.status,
      'collectionTime': instance.collectionTime,
      'integrityScore': instance.integrityScore,
      'chainOfCustody': instance.chainOfCustody,
      'phlebotomistId': instance.phlebotomistId,
      'phlebotomistName': instance.phlebotomistName,
      'labId': instance.labId,
      'labName': instance.labName,
      'reachedLabTime': instance.reachedLabTime,
      'processingStartTime': instance.processingStartTime,
      'processingEndTime': instance.processingEndTime,
      'coldChainData': instance.coldChainData,
      'biometricVerification': instance.biometricVerification,
      'preAnalyticalRisk': instance.preAnalyticalRisk,
      'condition': instance.condition,
      'notes': instance.notes,
      'imageUrls': instance.imageUrls,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_SampleConditionModel _$SampleConditionModelFromJson(
        Map<String, dynamic> json) =>
    _SampleConditionModel(
      isHemolyzed: json['isHemolyzed'] as bool,
      isClotted: json['isClotted'] as bool,
      isLipemic: json['isLipemic'] as bool,
      isIcteric: json['isIcteric'] as bool,
      volumeStatus: json['volumeStatus'] as String,
      containerIntegrity: json['containerIntegrity'] as String,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$SampleConditionModelToJson(
        _SampleConditionModel instance) =>
    <String, dynamic>{
      'isHemolyzed': instance.isHemolyzed,
      'isClotted': instance.isClotted,
      'isLipemic': instance.isLipemic,
      'isIcteric': instance.isIcteric,
      'volumeStatus': instance.volumeStatus,
      'containerIntegrity': instance.containerIntegrity,
      'notes': instance.notes,
    };

_SampleEventModel _$SampleEventModelFromJson(Map<String, dynamic> json) =>
    _SampleEventModel(
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

Map<String, dynamic> _$SampleEventModelToJson(_SampleEventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sampleId': instance.sampleId,
      'eventType': instance.eventType,
      'actorId': instance.actorId,
      'actorName': instance.actorName,
      'actorRole': instance.actorRole,
      'timestamp': instance.timestamp,
      'location': instance.location,
      'eventHash': instance.eventHash,
      'previousEventHash': instance.previousEventHash,
      'metadata': instance.metadata,
      'notes': instance.notes,
    };

_GeoLocationModel _$GeoLocationModelFromJson(Map<String, dynamic> json) =>
    _GeoLocationModel(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      altitude: (json['altitude'] as num?)?.toDouble(),
      accuracy: (json['accuracy'] as num?)?.toDouble(),
      timestamp: json['timestamp'] as String?,
    );

Map<String, dynamic> _$GeoLocationModelToJson(_GeoLocationModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'altitude': instance.altitude,
      'accuracy': instance.accuracy,
      'timestamp': instance.timestamp,
    };

_EventMetadataModel _$EventMetadataModelFromJson(Map<String, dynamic> json) =>
    _EventMetadataModel(
      temperature: (json['temperature'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      deviceId: json['deviceId'] as String?,
      appVersion: json['appVersion'] as String?,
      bleDeviceId: json['bleDeviceId'] as String?,
      biometricSuccess: json['biometricSuccess'] as bool?,
      barcodeValue: json['barcodeValue'] as String?,
      additionalData: json['additionalData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$EventMetadataModelToJson(_EventMetadataModel instance) =>
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

_BiometricVerificationModel _$BiometricVerificationModelFromJson(
        Map<String, dynamic> json) =>
    _BiometricVerificationModel(
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

Map<String, dynamic> _$BiometricVerificationModelToJson(
        _BiometricVerificationModel instance) =>
    <String, dynamic>{
      'verificationId': instance.verificationId,
      'patientDeviceId': instance.patientDeviceId,
      'phlebotomistDeviceId': instance.phlebotomistDeviceId,
      'timestamp': instance.timestamp,
      'success': instance.success,
      'proximityDistance': instance.proximityDistance,
      'signalStrength': instance.signalStrength,
      'failureReason': instance.failureReason,
      'attemptCount': instance.attemptCount,
      'location': instance.location,
    };
