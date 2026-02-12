// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biometric_verification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BiometricVerificationImpl _$$BiometricVerificationImplFromJson(
        Map<String, dynamic> json) =>
    _$BiometricVerificationImpl(
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

Map<String, dynamic> _$$BiometricVerificationImplToJson(
    _$BiometricVerificationImpl instance) {
  final val = <String, dynamic>{
    'verificationId': instance.verificationId,
    'patientDeviceId': instance.patientDeviceId,
    'phlebotomistDeviceId': instance.phlebotomistDeviceId,
    'timestamp': instance.timestamp.toIso8601String(),
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
