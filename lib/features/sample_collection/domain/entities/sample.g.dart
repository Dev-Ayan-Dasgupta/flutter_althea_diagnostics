// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SampleImpl _$$SampleImplFromJson(Map<String, dynamic> json) => _$SampleImpl(
      id: json['id'] as String,
      vialId: json['vialId'] as String,
      patientAbhaId: json['patientAbhaId'] as String,
      patientName: json['patientName'] as String,
      orderId: json['orderId'] as String,
      testIds:
          (json['testIds'] as List<dynamic>).map((e) => e as String).toList(),
      status: SampleStatus.fromJson(json['status'] as Map<String, dynamic>),
      collectionTime: DateTime.parse(json['collectionTime'] as String),
      integrityScore: SampleIntegrityScore.fromJson(
          json['integrityScore'] as Map<String, dynamic>),
      chainOfCustody: (json['chainOfCustody'] as List<dynamic>)
          .map((e) => SampleEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      phlebotomistId: json['phlebotomistId'] as String?,
      phlebotomistName: json['phlebotomistName'] as String?,
      labId: json['labId'] as String?,
      labName: json['labName'] as String?,
      reachedLabTime: json['reachedLabTime'] == null
          ? null
          : DateTime.parse(json['reachedLabTime'] as String),
      processingStartTime: json['processingStartTime'] == null
          ? null
          : DateTime.parse(json['processingStartTime'] as String),
      processingEndTime: json['processingEndTime'] == null
          ? null
          : DateTime.parse(json['processingEndTime'] as String),
      coldChainData: json['coldChainData'] == null
          ? null
          : ColdChainData.fromJson(
              json['coldChainData'] as Map<String, dynamic>),
      biometricVerification: json['biometricVerification'] == null
          ? null
          : BiometricVerification.fromJson(
              json['biometricVerification'] as Map<String, dynamic>),
      preAnalyticalRisk: json['preAnalyticalRisk'] == null
          ? null
          : PreAnalyticalRiskAssessment.fromJson(
              json['preAnalyticalRisk'] as Map<String, dynamic>),
      condition: json['condition'] == null
          ? null
          : SampleCondition.fromJson(json['condition'] as Map<String, dynamic>),
      notes: json['notes'] as String?,
      imageUrls: (json['imageUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$SampleImplToJson(_$SampleImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'vialId': instance.vialId,
    'patientAbhaId': instance.patientAbhaId,
    'patientName': instance.patientName,
    'orderId': instance.orderId,
    'testIds': instance.testIds,
    'status': instance.status.toJson(),
    'collectionTime': instance.collectionTime.toIso8601String(),
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
  writeNotNull('reachedLabTime', instance.reachedLabTime?.toIso8601String());
  writeNotNull(
      'processingStartTime', instance.processingStartTime?.toIso8601String());
  writeNotNull(
      'processingEndTime', instance.processingEndTime?.toIso8601String());
  writeNotNull('coldChainData', instance.coldChainData?.toJson());
  writeNotNull(
      'biometricVerification', instance.biometricVerification?.toJson());
  writeNotNull('preAnalyticalRisk', instance.preAnalyticalRisk?.toJson());
  writeNotNull('condition', instance.condition?.toJson());
  writeNotNull('notes', instance.notes);
  val['imageUrls'] = instance.imageUrls;
  val['createdAt'] = instance.createdAt.toIso8601String();
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  return val;
}

_$SampleStatusRequestedImpl _$$SampleStatusRequestedImplFromJson(
        Map<String, dynamic> json) =>
    _$SampleStatusRequestedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SampleStatusRequestedImplToJson(
        _$SampleStatusRequestedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$SampleStatusAssignedImpl _$$SampleStatusAssignedImplFromJson(
        Map<String, dynamic> json) =>
    _$SampleStatusAssignedImpl(
      phlebotomistId: json['phlebotomistId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SampleStatusAssignedImplToJson(
        _$SampleStatusAssignedImpl instance) =>
    <String, dynamic>{
      'phlebotomistId': instance.phlebotomistId,
      'runtimeType': instance.$type,
    };

_$SampleStatusInTransitImpl _$$SampleStatusInTransitImplFromJson(
        Map<String, dynamic> json) =>
    _$SampleStatusInTransitImpl(
      startTime: DateTime.parse(json['startTime'] as String),
      currentLocation:
          GeoLocation.fromJson(json['currentLocation'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SampleStatusInTransitImplToJson(
        _$SampleStatusInTransitImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'currentLocation': instance.currentLocation.toJson(),
      'runtimeType': instance.$type,
    };

_$SampleStatusReachedLabImpl _$$SampleStatusReachedLabImplFromJson(
        Map<String, dynamic> json) =>
    _$SampleStatusReachedLabImpl(
      arrivalTime: DateTime.parse(json['arrivalTime'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SampleStatusReachedLabImplToJson(
        _$SampleStatusReachedLabImpl instance) =>
    <String, dynamic>{
      'arrivalTime': instance.arrivalTime.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$SampleStatusProcessingImpl _$$SampleStatusProcessingImplFromJson(
        Map<String, dynamic> json) =>
    _$SampleStatusProcessingImpl(
      startTime: DateTime.parse(json['startTime'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SampleStatusProcessingImplToJson(
        _$SampleStatusProcessingImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$SampleStatusCompletedImpl _$$SampleStatusCompletedImplFromJson(
        Map<String, dynamic> json) =>
    _$SampleStatusCompletedImpl(
      completionTime: DateTime.parse(json['completionTime'] as String),
      resultId: json['resultId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SampleStatusCompletedImplToJson(
        _$SampleStatusCompletedImpl instance) =>
    <String, dynamic>{
      'completionTime': instance.completionTime.toIso8601String(),
      'resultId': instance.resultId,
      'runtimeType': instance.$type,
    };

_$SampleStatusRejectedImpl _$$SampleStatusRejectedImplFromJson(
        Map<String, dynamic> json) =>
    _$SampleStatusRejectedImpl(
      reason: json['reason'] as String,
      rejectedAt: DateTime.parse(json['rejectedAt'] as String),
      requiresRecollection: json['requiresRecollection'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SampleStatusRejectedImplToJson(
        _$SampleStatusRejectedImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'rejectedAt': instance.rejectedAt.toIso8601String(),
      'requiresRecollection': instance.requiresRecollection,
      'runtimeType': instance.$type,
    };

_$SampleStatusCancelledImpl _$$SampleStatusCancelledImplFromJson(
        Map<String, dynamic> json) =>
    _$SampleStatusCancelledImpl(
      reason: json['reason'] as String,
      cancelledAt: DateTime.parse(json['cancelledAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SampleStatusCancelledImplToJson(
        _$SampleStatusCancelledImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'cancelledAt': instance.cancelledAt.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$SampleConditionImpl _$$SampleConditionImplFromJson(
        Map<String, dynamic> json) =>
    _$SampleConditionImpl(
      isHemolyzed: json['isHemolyzed'] as bool,
      isClotted: json['isClotted'] as bool,
      isLipemic: json['isLipemic'] as bool,
      isIcteric: json['isIcteric'] as bool,
      volumeStatus: $enumDecode(_$VolumeStatusEnumMap, json['volumeStatus']),
      containerIntegrity:
          $enumDecode(_$ContainerIntegrityEnumMap, json['containerIntegrity']),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$SampleConditionImplToJson(
    _$SampleConditionImpl instance) {
  final val = <String, dynamic>{
    'isHemolyzed': instance.isHemolyzed,
    'isClotted': instance.isClotted,
    'isLipemic': instance.isLipemic,
    'isIcteric': instance.isIcteric,
    'volumeStatus': _$VolumeStatusEnumMap[instance.volumeStatus]!,
    'containerIntegrity':
        _$ContainerIntegrityEnumMap[instance.containerIntegrity]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('notes', instance.notes);
  return val;
}

const _$VolumeStatusEnumMap = {
  VolumeStatus.underfilled: 'underfilled',
  VolumeStatus.optimal: 'optimal',
  VolumeStatus.overfilled: 'overfilled',
};

const _$ContainerIntegrityEnumMap = {
  ContainerIntegrity.intact: 'intact',
  ContainerIntegrity.damaged: 'damaged',
  ContainerIntegrity.leaking: 'leaking',
  ContainerIntegrity.lidOpen: 'lidOpen',
};
