// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Sample _$SampleFromJson(Map<String, dynamic> json) => _Sample(
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

Map<String, dynamic> _$SampleToJson(_Sample instance) => <String, dynamic>{
      'id': instance.id,
      'vialId': instance.vialId,
      'patientAbhaId': instance.patientAbhaId,
      'patientName': instance.patientName,
      'orderId': instance.orderId,
      'testIds': instance.testIds,
      'status': instance.status,
      'collectionTime': instance.collectionTime.toIso8601String(),
      'integrityScore': instance.integrityScore,
      'chainOfCustody': instance.chainOfCustody,
      'phlebotomistId': instance.phlebotomistId,
      'phlebotomistName': instance.phlebotomistName,
      'labId': instance.labId,
      'labName': instance.labName,
      'reachedLabTime': instance.reachedLabTime?.toIso8601String(),
      'processingStartTime': instance.processingStartTime?.toIso8601String(),
      'processingEndTime': instance.processingEndTime?.toIso8601String(),
      'coldChainData': instance.coldChainData,
      'biometricVerification': instance.biometricVerification,
      'preAnalyticalRisk': instance.preAnalyticalRisk,
      'condition': instance.condition,
      'notes': instance.notes,
      'imageUrls': instance.imageUrls,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

SampleStatusRequested _$SampleStatusRequestedFromJson(
        Map<String, dynamic> json) =>
    SampleStatusRequested(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SampleStatusRequestedToJson(
        SampleStatusRequested instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

SampleStatusAssigned _$SampleStatusAssignedFromJson(
        Map<String, dynamic> json) =>
    SampleStatusAssigned(
      phlebotomistId: json['phlebotomistId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SampleStatusAssignedToJson(
        SampleStatusAssigned instance) =>
    <String, dynamic>{
      'phlebotomistId': instance.phlebotomistId,
      'runtimeType': instance.$type,
    };

SampleStatusInTransit _$SampleStatusInTransitFromJson(
        Map<String, dynamic> json) =>
    SampleStatusInTransit(
      startTime: DateTime.parse(json['startTime'] as String),
      currentLocation:
          GeoLocation.fromJson(json['currentLocation'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SampleStatusInTransitToJson(
        SampleStatusInTransit instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'currentLocation': instance.currentLocation,
      'runtimeType': instance.$type,
    };

SampleStatusReachedLab _$SampleStatusReachedLabFromJson(
        Map<String, dynamic> json) =>
    SampleStatusReachedLab(
      arrivalTime: DateTime.parse(json['arrivalTime'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SampleStatusReachedLabToJson(
        SampleStatusReachedLab instance) =>
    <String, dynamic>{
      'arrivalTime': instance.arrivalTime.toIso8601String(),
      'runtimeType': instance.$type,
    };

SampleStatusProcessing _$SampleStatusProcessingFromJson(
        Map<String, dynamic> json) =>
    SampleStatusProcessing(
      startTime: DateTime.parse(json['startTime'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SampleStatusProcessingToJson(
        SampleStatusProcessing instance) =>
    <String, dynamic>{
      'startTime': instance.startTime.toIso8601String(),
      'runtimeType': instance.$type,
    };

SampleStatusCompleted _$SampleStatusCompletedFromJson(
        Map<String, dynamic> json) =>
    SampleStatusCompleted(
      completionTime: DateTime.parse(json['completionTime'] as String),
      resultId: json['resultId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SampleStatusCompletedToJson(
        SampleStatusCompleted instance) =>
    <String, dynamic>{
      'completionTime': instance.completionTime.toIso8601String(),
      'resultId': instance.resultId,
      'runtimeType': instance.$type,
    };

SampleStatusRejected _$SampleStatusRejectedFromJson(
        Map<String, dynamic> json) =>
    SampleStatusRejected(
      reason: json['reason'] as String,
      rejectedAt: DateTime.parse(json['rejectedAt'] as String),
      requiresRecollection: json['requiresRecollection'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SampleStatusRejectedToJson(
        SampleStatusRejected instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'rejectedAt': instance.rejectedAt.toIso8601String(),
      'requiresRecollection': instance.requiresRecollection,
      'runtimeType': instance.$type,
    };

SampleStatusCancelled _$SampleStatusCancelledFromJson(
        Map<String, dynamic> json) =>
    SampleStatusCancelled(
      reason: json['reason'] as String,
      cancelledAt: DateTime.parse(json['cancelledAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SampleStatusCancelledToJson(
        SampleStatusCancelled instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'cancelledAt': instance.cancelledAt.toIso8601String(),
      'runtimeType': instance.$type,
    };

_SampleCondition _$SampleConditionFromJson(Map<String, dynamic> json) =>
    _SampleCondition(
      isHemolyzed: json['isHemolyzed'] as bool,
      isClotted: json['isClotted'] as bool,
      isLipemic: json['isLipemic'] as bool,
      isIcteric: json['isIcteric'] as bool,
      volumeStatus: $enumDecode(_$VolumeStatusEnumMap, json['volumeStatus']),
      containerIntegrity:
          $enumDecode(_$ContainerIntegrityEnumMap, json['containerIntegrity']),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$SampleConditionToJson(_SampleCondition instance) =>
    <String, dynamic>{
      'isHemolyzed': instance.isHemolyzed,
      'isClotted': instance.isClotted,
      'isLipemic': instance.isLipemic,
      'isIcteric': instance.isIcteric,
      'volumeStatus': _$VolumeStatusEnumMap[instance.volumeStatus]!,
      'containerIntegrity':
          _$ContainerIntegrityEnumMap[instance.containerIntegrity]!,
      'notes': instance.notes,
    };

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
