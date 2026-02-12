// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biometric_verification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BiometricVerification _$BiometricVerificationFromJson(
        Map<String, dynamic> json) =>
    _BiometricVerification(
      verificationId: json['verificationId'] as String,
      patientDeviceId: json['patientDeviceId'] as String,
      phlebotomistDeviceId: json['phlebotomistDeviceId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      success: json['success'] as bool,
      proximityDistance: (json['proximityDistance'] as num).toDouble(),
      signalStrength: (json['signalStrength'] as num).toInt(),
      failureReason: json['failureReason'] as String?,
      attemptCount: (json['attemptCount'] as num?)?.toInt(),
      location: json['location'] == null
          ? null
          : GeoLocation.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BiometricVerificationToJson(
        _BiometricVerification instance) =>
    <String, dynamic>{
      'verificationId': instance.verificationId,
      'patientDeviceId': instance.patientDeviceId,
      'phlebotomistDeviceId': instance.phlebotomistDeviceId,
      'timestamp': instance.timestamp.toIso8601String(),
      'success': instance.success,
      'proximityDistance': instance.proximityDistance,
      'signalStrength': instance.signalStrength,
      'failureReason': instance.failureReason,
      'attemptCount': instance.attemptCount,
      'location': instance.location,
    };
