import 'package:freezed_annotation/freezed_annotation.dart';

import 'sample_event.dart';

part 'biometric_verification.freezed.dart';
part 'biometric_verification.g.dart';

@freezed
abstract class BiometricVerification with _$BiometricVerification {
  const factory BiometricVerification({
    required String verificationId,
    required String patientDeviceId,
    required String phlebotomistDeviceId,
    required DateTime timestamp,
    required bool success,
    required double proximityDistance, // meters
    required int signalStrength, // RSSI
    String? failureReason,
    int? attemptCount,
    GeoLocation? location,
  }) = _BiometricVerification;

  factory BiometricVerification.fromJson(Map<String, dynamic> json) =>
      _$BiometricVerificationFromJson(json);
}
