import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/biometric_verification.dart';
import '../../domain/entities/sample.dart';
import '../../domain/entities/sample_event.dart';
import '../../../sample_integrity/data/models/sample_integrity_score_model.dart';
import '../../../sample_integrity/data/models/pre_analytical_risk_model.dart';
import '../../../cold_chain/data/models/cold_chain_data_model.dart';

part 'sample_model.freezed.dart';
part 'sample_model.g.dart';

@freezed
abstract class SampleModel with _$SampleModel {
  const factory SampleModel({
    required String id,
    required String vialId,
    required String patientAbhaId,
    required String patientName,
    required String orderId,
    required List<String> testIds,
    required Map<String, dynamic> status,
    required String collectionTime,
    required SampleIntegrityScoreModel integrityScore,
    required List<SampleEventModel> chainOfCustody,
    String? phlebotomistId,
    String? phlebotomistName,
    String? labId,
    String? labName,
    String? reachedLabTime,
    String? processingStartTime,
    String? processingEndTime,
    ColdChainDataModel? coldChainData,
    BiometricVerificationModel? biometricVerification,
    PreAnalyticalRiskModel? preAnalyticalRisk,
    SampleConditionModel? condition,
    String? notes,
    @Default([]) List<String> imageUrls,
    required String createdAt,
    String? updatedAt,
  }) = _SampleModel;

  factory SampleModel.fromJson(Map<String, dynamic> json) =>
      _$SampleModelFromJson(json);

  static SampleModel fromEntity(Sample entity) {
    return SampleModel(
      id: entity.id,
      vialId: entity.vialId,
      patientAbhaId: entity.patientAbhaId,
      patientName: entity.patientName,
      orderId: entity.orderId,
      testIds: entity.testIds,
      status: statusToJson(entity.status),
      collectionTime: entity.collectionTime.toIso8601String(),
      integrityScore:
          SampleIntegrityScoreModel.fromEntity(entity.integrityScore),
      chainOfCustody: entity.chainOfCustody
          .map((e) => SampleEventModel.fromEntity(e))
          .toList(),
      phlebotomistId: entity.phlebotomistId,
      phlebotomistName: entity.phlebotomistName,
      labId: entity.labId,
      labName: entity.labName,
      reachedLabTime: entity.reachedLabTime?.toIso8601String(),
      processingStartTime: entity.processingStartTime?.toIso8601String(),
      processingEndTime: entity.processingEndTime?.toIso8601String(),
      coldChainData: entity.coldChainData != null
          ? ColdChainDataModel.fromEntity(entity.coldChainData!)
          : null,
      biometricVerification: entity.biometricVerification != null
          ? BiometricVerificationModel.fromEntity(entity.biometricVerification!)
          : null,
      preAnalyticalRisk: entity.preAnalyticalRisk != null
          ? PreAnalyticalRiskModel.fromEntity(entity.preAnalyticalRisk!)
          : null,
      condition: entity.condition != null
          ? SampleConditionModel.fromEntity(entity.condition!)
          : null,
      notes: entity.notes,
      imageUrls: entity.imageUrls,
      createdAt: entity.createdAt.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  // Public helper method to convert SampleStatus to JSON
  static Map<String, dynamic> statusToJson(SampleStatus status) {
    return status.when(
      requested: () => {'type': 'requested'},
      assigned: (phlebotomistId) => {
        'type': 'assigned',
        'phlebotomistId': phlebotomistId,
      },
      inTransit: (startTime, currentLocation) => {
        'type': 'inTransit',
        'startTime': startTime.toIso8601String(),
        'currentLocation':
            GeoLocationModel.fromEntity(currentLocation).toJson(),
      },
      reachedLab: (arrivalTime) => {
        'type': 'reachedLab',
        'arrivalTime': arrivalTime.toIso8601String(),
      },
      processing: (startTime) => {
        'type': 'processing',
        'startTime': startTime.toIso8601String(),
      },
      completed: (completionTime, resultId) => {
        'type': 'completed',
        'completionTime': completionTime.toIso8601String(),
        'resultId': resultId,
      },
      rejected: (reason, rejectedAt, requiresRecollection) => {
        'type': 'rejected',
        'reason': reason,
        'rejectedAt': rejectedAt.toIso8601String(),
        'requiresRecollection': requiresRecollection,
      },
      cancelled: (reason, cancelledAt) => {
        'type': 'cancelled',
        'reason': reason,
        'cancelledAt': cancelledAt.toIso8601String(),
      },
    );
  }

  // Public helper method to convert JSON to SampleStatus
  static SampleStatus statusFromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;
    switch (type) {
      case 'requested':
        return const SampleStatus.requested();
      case 'assigned':
        return SampleStatus.assigned(
          phlebotomistId: json['phlebotomistId'] as String,
        );
      case 'inTransit':
        return SampleStatus.inTransit(
          startTime: DateTime.parse(json['startTime'] as String),
          currentLocation: GeoLocationModel.fromJson(
            json['currentLocation'] as Map<String, dynamic>,
          ).toEntity(),
        );
      case 'reachedLab':
        return SampleStatus.reachedLab(
          arrivalTime: DateTime.parse(json['arrivalTime'] as String),
        );
      case 'processing':
        return SampleStatus.processing(
          startTime: DateTime.parse(json['startTime'] as String),
        );
      case 'completed':
        return SampleStatus.completed(
          completionTime: DateTime.parse(json['completionTime'] as String),
          resultId: json['resultId'] as String,
        );
      case 'rejected':
        return SampleStatus.rejected(
          reason: json['reason'] as String,
          rejectedAt: DateTime.parse(json['rejectedAt'] as String),
          requiresRecollection: json['requiresRecollection'] as bool,
        );
      case 'cancelled':
        return SampleStatus.cancelled(
          reason: json['reason'] as String,
          cancelledAt: DateTime.parse(json['cancelledAt'] as String),
        );
      default:
        throw Exception('Unknown sample status type: $type');
    }
  }
}

extension SampleModelX on SampleModel {
  Sample toEntity() {
    return Sample(
      id: id,
      vialId: vialId,
      patientAbhaId: patientAbhaId,
      patientName: patientName,
      orderId: orderId,
      testIds: testIds,
      status: SampleModel.statusFromJson(status),
      collectionTime: DateTime.parse(collectionTime),
      integrityScore: integrityScore.toEntity(),
      chainOfCustody: chainOfCustody.map((e) => e.toEntity()).toList(),
      phlebotomistId: phlebotomistId,
      phlebotomistName: phlebotomistName,
      labId: labId,
      labName: labName,
      reachedLabTime:
          reachedLabTime != null ? DateTime.parse(reachedLabTime!) : null,
      processingStartTime: processingStartTime != null
          ? DateTime.parse(processingStartTime!)
          : null,
      processingEndTime:
          processingEndTime != null ? DateTime.parse(processingEndTime!) : null,
      coldChainData: coldChainData?.toEntity(),
      biometricVerification: biometricVerification?.toEntity(),
      preAnalyticalRisk: preAnalyticalRisk?.toEntity(),
      condition: condition?.toEntity(),
      notes: notes,
      imageUrls: imageUrls,
      createdAt: DateTime.parse(createdAt),
      updatedAt: updatedAt != null ? DateTime.parse(updatedAt!) : null,
    );
  }
}

@freezed
abstract class SampleConditionModel with _$SampleConditionModel {
  const factory SampleConditionModel({
    required bool isHemolyzed,
    required bool isClotted,
    required bool isLipemic,
    required bool isIcteric,
    required String volumeStatus,
    required String containerIntegrity,
    String? notes,
  }) = _SampleConditionModel;

  factory SampleConditionModel.fromJson(Map<String, dynamic> json) =>
      _$SampleConditionModelFromJson(json);

  static SampleConditionModel fromEntity(SampleCondition entity) {
    return SampleConditionModel(
      isHemolyzed: entity.isHemolyzed,
      isClotted: entity.isClotted,
      isLipemic: entity.isLipemic,
      isIcteric: entity.isIcteric,
      volumeStatus: entity.volumeStatus.name,
      containerIntegrity: entity.containerIntegrity.name,
      notes: entity.notes,
    );
  }
}

extension SampleConditionModelX on SampleConditionModel {
  SampleCondition toEntity() {
    return SampleCondition(
      isHemolyzed: isHemolyzed,
      isClotted: isClotted,
      isLipemic: isLipemic,
      isIcteric: isIcteric,
      volumeStatus: VolumeStatus.values.firstWhere(
        (e) => e.name == volumeStatus,
      ),
      containerIntegrity: ContainerIntegrity.values.firstWhere(
        (e) => e.name == containerIntegrity,
      ),
      notes: notes,
    );
  }
}

@freezed
abstract class SampleEventModel with _$SampleEventModel {
  const factory SampleEventModel({
    required String id,
    required String sampleId,
    required String eventType,
    required String actorId,
    required String actorName,
    required String actorRole,
    required String timestamp,
    required GeoLocationModel location,
    required String eventHash,
    String? previousEventHash,
    EventMetadataModel? metadata,
    String? notes,
  }) = _SampleEventModel;

  factory SampleEventModel.fromJson(Map<String, dynamic> json) =>
      _$SampleEventModelFromJson(json);

  static SampleEventModel fromEntity(SampleEvent entity) {
    return SampleEventModel(
      id: entity.id,
      sampleId: entity.sampleId,
      eventType: entity.eventType.name,
      actorId: entity.actorId,
      actorName: entity.actorName,
      actorRole: entity.actorRole.name,
      timestamp: entity.timestamp.toIso8601String(),
      location: GeoLocationModel.fromEntity(entity.location),
      eventHash: entity.eventHash,
      previousEventHash: entity.previousEventHash,
      metadata: entity.metadata != null
          ? EventMetadataModel.fromEntity(entity.metadata!)
          : null,
      notes: entity.notes,
    );
  }
}

extension SampleEventModelX on SampleEventModel {
  SampleEvent toEntity() {
    return SampleEvent(
      id: id,
      sampleId: sampleId,
      eventType: SampleEventType.values.firstWhere((e) => e.name == eventType),
      actorId: actorId,
      actorName: actorName,
      actorRole: ActorRole.values.firstWhere((e) => e.name == actorRole),
      timestamp: DateTime.parse(timestamp),
      location: location.toEntity(),
      eventHash: eventHash,
      previousEventHash: previousEventHash,
      metadata: metadata?.toEntity(),
      notes: notes,
    );
  }
}

@freezed
abstract class GeoLocationModel with _$GeoLocationModel {
  const factory GeoLocationModel({
    required double latitude,
    required double longitude,
    double? altitude,
    double? accuracy,
    String? timestamp,
  }) = _GeoLocationModel;

  factory GeoLocationModel.fromJson(Map<String, dynamic> json) =>
      _$GeoLocationModelFromJson(json);

  static GeoLocationModel fromEntity(GeoLocation entity) {
    return GeoLocationModel(
      latitude: entity.latitude,
      longitude: entity.longitude,
      altitude: entity.altitude,
      accuracy: entity.accuracy,
      timestamp: entity.timestamp?.toIso8601String(),
    );
  }
}

extension GeoLocationModelX on GeoLocationModel {
  GeoLocation toEntity() {
    return GeoLocation(
      latitude: latitude,
      longitude: longitude,
      altitude: altitude,
      accuracy: accuracy,
      timestamp: timestamp != null ? DateTime.parse(timestamp!) : null,
    );
  }
}

@freezed
abstract class EventMetadataModel with _$EventMetadataModel {
  const factory EventMetadataModel({
    double? temperature,
    double? humidity,
    String? deviceId,
    String? appVersion,
    String? bleDeviceId,
    bool? biometricSuccess,
    String? barcodeValue,
    Map<String, dynamic>? additionalData,
  }) = _EventMetadataModel;

  factory EventMetadataModel.fromJson(Map<String, dynamic> json) =>
      _$EventMetadataModelFromJson(json);

  static EventMetadataModel fromEntity(EventMetadata entity) {
    return EventMetadataModel(
      temperature: entity.temperature,
      humidity: entity.humidity,
      deviceId: entity.deviceId,
      appVersion: entity.appVersion,
      bleDeviceId: entity.bleDeviceId,
      biometricSuccess: entity.biometricSuccess,
      barcodeValue: entity.barcodeValue,
      additionalData: entity.additionalData,
    );
  }
}

extension EventMetadataModelX on EventMetadataModel {
  EventMetadata toEntity() {
    return EventMetadata(
      temperature: temperature,
      humidity: humidity,
      deviceId: deviceId,
      appVersion: appVersion,
      bleDeviceId: bleDeviceId,
      biometricSuccess: biometricSuccess,
      barcodeValue: barcodeValue,
      additionalData: additionalData,
    );
  }
}

@freezed
abstract class BiometricVerificationModel with _$BiometricVerificationModel {
  const factory BiometricVerificationModel({
    required String verificationId,
    required String patientDeviceId,
    required String phlebotomistDeviceId,
    required String timestamp,
    required bool success,
    required double proximityDistance,
    required int signalStrength,
    String? failureReason,
    int? attemptCount,
    GeoLocationModel? location,
  }) = _BiometricVerificationModel;

  factory BiometricVerificationModel.fromJson(Map<String, dynamic> json) =>
      _$BiometricVerificationModelFromJson(json);

  static BiometricVerificationModel fromEntity(BiometricVerification entity) {
    return BiometricVerificationModel(
      verificationId: entity.verificationId,
      patientDeviceId: entity.patientDeviceId,
      phlebotomistDeviceId: entity.phlebotomistDeviceId,
      timestamp: entity.timestamp.toIso8601String(),
      success: entity.success,
      proximityDistance: entity.proximityDistance,
      signalStrength: entity.signalStrength,
      failureReason: entity.failureReason,
      attemptCount: entity.attemptCount,
      location: entity.location != null
          ? GeoLocationModel.fromEntity(entity.location!)
          : null,
    );
  }
}

extension BiometricVerificationModelX on BiometricVerificationModel {
  BiometricVerification toEntity() {
    return BiometricVerification(
      verificationId: verificationId,
      patientDeviceId: patientDeviceId,
      phlebotomistDeviceId: phlebotomistDeviceId,
      timestamp: DateTime.parse(timestamp),
      success: success,
      proximityDistance: proximityDistance,
      signalStrength: signalStrength,
      failureReason: failureReason,
      attemptCount: attemptCount,
      location: location?.toEntity(),
    );
  }
}
