import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../cold_chain/domain/entities/cold_chain_data.dart';
import 'biometric_verification.dart';
import 'pre_analytical_risk.dart';
import 'sample_event.dart';
import 'sample_integrity_score.dart';

part 'sample.freezed.dart';
part 'sample.g.dart';

@freezed
abstract class Sample with _$Sample {
  const factory Sample({
    required String id,
    required String vialId,
    required String patientAbhaId,
    required String patientName,
    required String orderId,
    required List<String> testIds,
    required SampleStatus status,
    required DateTime collectionTime,
    required SampleIntegrityScore integrityScore,
    required List<SampleEvent> chainOfCustody,
    String? phlebotomistId,
    String? phlebotomistName,
    String? labId,
    String? labName,
    DateTime? reachedLabTime,
    DateTime? processingStartTime,
    DateTime? processingEndTime,
    ColdChainData? coldChainData,
    BiometricVerification? biometricVerification,
    PreAnalyticalRiskAssessment? preAnalyticalRisk,
    SampleCondition? condition,
    String? notes,
    @Default([]) List<String> imageUrls,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _Sample;

  factory Sample.fromJson(Map<String, dynamic> json) => _$SampleFromJson(json);
}

@freezed
abstract class SampleStatus with _$SampleStatus {
  const factory SampleStatus.requested() = SampleStatusRequested;
  const factory SampleStatus.assigned({required String phlebotomistId}) =
      SampleStatusAssigned;
  const factory SampleStatus.inTransit({
    required DateTime startTime,
    required GeoLocation currentLocation,
  }) = SampleStatusInTransit;
  const factory SampleStatus.reachedLab({required DateTime arrivalTime}) =
      SampleStatusReachedLab;
  const factory SampleStatus.processing({required DateTime startTime}) =
      SampleStatusProcessing;
  const factory SampleStatus.completed({
    required DateTime completionTime,
    required String resultId,
  }) = SampleStatusCompleted;
  const factory SampleStatus.rejected({
    required String reason,
    required DateTime rejectedAt,
    required bool requiresRecollection,
  }) = SampleStatusRejected;
  const factory SampleStatus.cancelled({
    required String reason,
    required DateTime cancelledAt,
  }) = SampleStatusCancelled;

  factory SampleStatus.fromJson(Map<String, dynamic> json) =>
      _$SampleStatusFromJson(json);
}

@freezed
abstract class SampleCondition with _$SampleCondition {
  const factory SampleCondition({
    required bool isHemolyzed,
    required bool isClotted,
    required bool isLipemic,
    required bool isIcteric,
    required VolumeStatus volumeStatus,
    required ContainerIntegrity containerIntegrity,
    String? notes,
  }) = _SampleCondition;

  factory SampleCondition.fromJson(Map<String, dynamic> json) =>
      _$SampleConditionFromJson(json);
}

enum VolumeStatus {
  underfilled,
  optimal,
  overfilled,
}

enum ContainerIntegrity {
  intact,
  damaged,
  leaking,
  lidOpen,
}
