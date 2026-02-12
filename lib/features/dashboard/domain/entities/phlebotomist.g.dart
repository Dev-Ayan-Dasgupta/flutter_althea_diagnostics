// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phlebotomist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Phlebotomist _$PhlebotomistFromJson(Map<String, dynamic> json) =>
    _Phlebotomist(
      id: json['id'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      status: $enumDecode(_$PhlebotomistStatusEnumMap, json['status']),
      currentLocation: json['currentLocation'] == null
          ? null
          : GeoLocation.fromJson(
              json['currentLocation'] as Map<String, dynamic>),
      activeSamplesCount: (json['activeSamplesCount'] as num).toInt(),
      batteryLevel: (json['batteryLevel'] as num).toDouble(),
      smartBagTemperature: (json['smartBagTemperature'] as num?)?.toDouble(),
      deviceId: json['deviceId'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      certifications: (json['certifications'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      stats: PhlebotomistStats.fromJson(json['stats'] as Map<String, dynamic>),
      lastActiveAt: json['lastActiveAt'] == null
          ? null
          : DateTime.parse(json['lastActiveAt'] as String),
      shiftStartTime: json['shiftStartTime'] == null
          ? null
          : DateTime.parse(json['shiftStartTime'] as String),
      shiftEndTime: json['shiftEndTime'] == null
          ? null
          : DateTime.parse(json['shiftEndTime'] as String),
    );

Map<String, dynamic> _$PhlebotomistToJson(_Phlebotomist instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'status': _$PhlebotomistStatusEnumMap[instance.status]!,
      'currentLocation': instance.currentLocation,
      'activeSamplesCount': instance.activeSamplesCount,
      'batteryLevel': instance.batteryLevel,
      'smartBagTemperature': instance.smartBagTemperature,
      'deviceId': instance.deviceId,
      'avatarUrl': instance.avatarUrl,
      'certifications': instance.certifications,
      'stats': instance.stats,
      'lastActiveAt': instance.lastActiveAt?.toIso8601String(),
      'shiftStartTime': instance.shiftStartTime?.toIso8601String(),
      'shiftEndTime': instance.shiftEndTime?.toIso8601String(),
    };

const _$PhlebotomistStatusEnumMap = {
  PhlebotomistStatus.available: 'available',
  PhlebotomistStatus.assigned: 'assigned',
  PhlebotomistStatus.inTransit: 'inTransit',
  PhlebotomistStatus.collecting: 'collecting',
  PhlebotomistStatus.returning: 'returning',
  PhlebotomistStatus.offline: 'offline',
};

_PhlebotomistStats _$PhlebotomistStatsFromJson(Map<String, dynamic> json) =>
    _PhlebotomistStats(
      totalCollections: (json['totalCollections'] as num).toInt(),
      todayCollections: (json['todayCollections'] as num).toInt(),
      averageCollectionTime: (json['averageCollectionTime'] as num).toDouble(),
      successRate: (json['successRate'] as num).toDouble(),
      rejectionCount: (json['rejectionCount'] as num).toInt(),
      averageIntegrityScore: (json['averageIntegrityScore'] as num).toDouble(),
    );

Map<String, dynamic> _$PhlebotomistStatsToJson(_PhlebotomistStats instance) =>
    <String, dynamic>{
      'totalCollections': instance.totalCollections,
      'todayCollections': instance.todayCollections,
      'averageCollectionTime': instance.averageCollectionTime,
      'successRate': instance.successRate,
      'rejectionCount': instance.rejectionCount,
      'averageIntegrityScore': instance.averageIntegrityScore,
    };
