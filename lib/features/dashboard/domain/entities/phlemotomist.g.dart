// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phlemotomist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhlebotomistImpl _$$PhlebotomistImplFromJson(Map<String, dynamic> json) =>
    _$PhlebotomistImpl(
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

Map<String, dynamic> _$$PhlebotomistImplToJson(_$PhlebotomistImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'phoneNumber': instance.phoneNumber,
    'email': instance.email,
    'status': _$PhlebotomistStatusEnumMap[instance.status]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentLocation', instance.currentLocation?.toJson());
  val['activeSamplesCount'] = instance.activeSamplesCount;
  val['batteryLevel'] = instance.batteryLevel;
  writeNotNull('smartBagTemperature', instance.smartBagTemperature);
  writeNotNull('deviceId', instance.deviceId);
  writeNotNull('avatarUrl', instance.avatarUrl);
  val['certifications'] = instance.certifications;
  val['stats'] = instance.stats.toJson();
  writeNotNull('lastActiveAt', instance.lastActiveAt?.toIso8601String());
  writeNotNull('shiftStartTime', instance.shiftStartTime?.toIso8601String());
  writeNotNull('shiftEndTime', instance.shiftEndTime?.toIso8601String());
  return val;
}

const _$PhlebotomistStatusEnumMap = {
  PhlebotomistStatus.available: 'available',
  PhlebotomistStatus.assigned: 'assigned',
  PhlebotomistStatus.inTransit: 'inTransit',
  PhlebotomistStatus.collecting: 'collecting',
  PhlebotomistStatus.returning: 'returning',
  PhlebotomistStatus.offline: 'offline',
};

_$PhlebotomistStatsImpl _$$PhlebotomistStatsImplFromJson(
        Map<String, dynamic> json) =>
    _$PhlebotomistStatsImpl(
      totalCollections: (json['totalCollections'] as num).toInt(),
      todayCollections: (json['todayCollections'] as num).toInt(),
      averageCollectionTime: (json['averageCollectionTime'] as num).toDouble(),
      successRate: (json['successRate'] as num).toDouble(),
      rejectionCount: (json['rejectionCount'] as num).toInt(),
      averageIntegrityScore: (json['averageIntegrityScore'] as num).toDouble(),
    );

Map<String, dynamic> _$$PhlebotomistStatsImplToJson(
        _$PhlebotomistStatsImpl instance) =>
    <String, dynamic>{
      'totalCollections': instance.totalCollections,
      'todayCollections': instance.todayCollections,
      'averageCollectionTime': instance.averageCollectionTime,
      'successRate': instance.successRate,
      'rejectionCount': instance.rejectionCount,
      'averageIntegrityScore': instance.averageIntegrityScore,
    };
