// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phlebotomist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PhlebotomistModel _$PhlebotomistModelFromJson(Map<String, dynamic> json) =>
    _PhlebotomistModel(
      id: json['id'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      status: json['status'] as String,
      currentLocation: json['currentLocation'] == null
          ? null
          : GeoLocationModel.fromJson(
              json['currentLocation'] as Map<String, dynamic>,
            ),
      activeSamplesCount: (json['activeSamplesCount'] as num).toInt(),
      batteryLevel: (json['batteryLevel'] as num).toDouble(),
      smartBagTemperature: (json['smartBagTemperature'] as num?)?.toDouble(),
      deviceId: json['deviceId'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      certifications: (json['certifications'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      stats: PhlebotomistStatsModel.fromJson(
        json['stats'] as Map<String, dynamic>,
      ),
      lastActiveAt: json['lastActiveAt'] as String?,
      shiftStartTime: json['shiftStartTime'] as String?,
      shiftEndTime: json['shiftEndTime'] as String?,
    );

Map<String, dynamic> _$PhlebotomistModelToJson(_PhlebotomistModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'status': instance.status,
      'currentLocation': instance.currentLocation,
      'activeSamplesCount': instance.activeSamplesCount,
      'batteryLevel': instance.batteryLevel,
      'smartBagTemperature': instance.smartBagTemperature,
      'deviceId': instance.deviceId,
      'avatarUrl': instance.avatarUrl,
      'certifications': instance.certifications,
      'stats': instance.stats,
      'lastActiveAt': instance.lastActiveAt,
      'shiftStartTime': instance.shiftStartTime,
      'shiftEndTime': instance.shiftEndTime,
    };

_PhlebotomistStatsModel _$PhlebotomistStatsModelFromJson(
  Map<String, dynamic> json,
) => _PhlebotomistStatsModel(
  totalCollections: (json['totalCollections'] as num).toInt(),
  todayCollections: (json['todayCollections'] as num).toInt(),
  averageCollectionTime: (json['averageCollectionTime'] as num).toDouble(),
  successRate: (json['successRate'] as num).toDouble(),
  rejectionCount: (json['rejectionCount'] as num).toInt(),
  averageIntegrityScore: (json['averageIntegrityScore'] as num).toDouble(),
);

Map<String, dynamic> _$PhlebotomistStatsModelToJson(
  _PhlebotomistStatsModel instance,
) => <String, dynamic>{
  'totalCollections': instance.totalCollections,
  'todayCollections': instance.todayCollections,
  'averageCollectionTime': instance.averageCollectionTime,
  'successRate': instance.successRate,
  'rejectionCount': instance.rejectionCount,
  'averageIntegrityScore': instance.averageIntegrityScore,
};
