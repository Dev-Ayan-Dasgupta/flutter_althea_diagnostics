import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_event.freezed.dart';
part 'sample_event.g.dart';

@freezed
abstract class SampleEvent with _$SampleEvent {
  const factory SampleEvent({
    required String id,
    required String sampleId,
    required SampleEventType eventType,
    required String actorId,
    required String actorName,
    required ActorRole actorRole,
    required DateTime timestamp,
    required GeoLocation location,
    required String eventHash, // For immutable audit trail
    String? previousEventHash,
    EventMetadata? metadata,
    String? notes,
  }) = _SampleEvent;

  factory SampleEvent.fromJson(Map<String, dynamic> json) =>
      _$SampleEventFromJson(json);
}

enum SampleEventType {
  collected,
  biometricVerified,
  barcodeScanned,
  transitStarted,
  locationUpdated,
  temperatureLogged,
  handoverInitiated,
  handoverCompleted,
  reachedLab,
  qualityChecked,
  processingStarted,
  resultEntered,
  resultReviewed,
  pathologistSignedOff,
  reportGenerated,
  reportDispatched,
  sampleStored,
  sampleDisposed,
}

enum ActorRole {
  phlebotomist,
  labTechnician,
  pathologist,
  labManager,
  system,
}

@freezed
abstract class EventMetadata with _$EventMetadata {
  const factory EventMetadata({
    double? temperature,
    double? humidity,
    String? deviceId,
    String? appVersion,
    String? bleDeviceId,
    bool? biometricSuccess,
    String? barcodeValue,
    Map<String, dynamic>? additionalData,
  }) = _EventMetadata;

  factory EventMetadata.fromJson(Map<String, dynamic> json) =>
      _$EventMetadataFromJson(json);
}

@freezed
abstract class GeoLocation with _$GeoLocation {
  const factory GeoLocation({
    required double latitude,
    required double longitude,
    double? altitude,
    double? accuracy,
    DateTime? timestamp,
  }) = _GeoLocation;

  factory GeoLocation.fromJson(Map<String, dynamic> json) =>
      _$GeoLocationFromJson(json);
}
