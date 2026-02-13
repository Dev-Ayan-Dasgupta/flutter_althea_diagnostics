// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  role: $enumDecode(_$UserRoleEnumMap, json['role']),
  labId: json['labId'] as String,
  labName: json['labName'] as String?,
  permissions: (json['permissions'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  lastLoginAt: json['lastLoginAt'] == null
      ? null
      : DateTime.parse(json['lastLoginAt'] as String),
  phlebotomistStatus: $enumDecodeNullable(
    _$PhlebotomistStatusEnumMap,
    json['phlebotomistStatus'],
  ),
  currentBalance: (json['currentBalance'] as num?)?.toDouble(),
  totalCollections: (json['totalCollections'] as num?)?.toInt(),
  averageRating: (json['averageRating'] as num?)?.toDouble(),
  certifications: (json['certifications'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  vehicleNumber: json['vehicleNumber'] as String?,
  isAvailableForCollection: json['isAvailableForCollection'] as bool?,
  managedLabIds: (json['managedLabIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  staffCount: (json['staffCount'] as num?)?.toInt(),
  licenseNumber: json['licenseNumber'] as String?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'avatarUrl': instance.avatarUrl,
  'role': _$UserRoleEnumMap[instance.role]!,
  'labId': instance.labId,
  'labName': instance.labName,
  'permissions': instance.permissions,
  'createdAt': instance.createdAt.toIso8601String(),
  'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
  'phlebotomistStatus':
      _$PhlebotomistStatusEnumMap[instance.phlebotomistStatus],
  'currentBalance': instance.currentBalance,
  'totalCollections': instance.totalCollections,
  'averageRating': instance.averageRating,
  'certifications': instance.certifications,
  'vehicleNumber': instance.vehicleNumber,
  'isAvailableForCollection': instance.isAvailableForCollection,
  'managedLabIds': instance.managedLabIds,
  'staffCount': instance.staffCount,
  'licenseNumber': instance.licenseNumber,
};

const _$UserRoleEnumMap = {
  UserRole.phlebotomist: 'phlebotomist',
  UserRole.labAdmin: 'labAdmin',
  UserRole.labTechnician: 'labTechnician',
  UserRole.pathologist: 'pathologist',
  UserRole.platformAdmin: 'platformAdmin',
};

const _$PhlebotomistStatusEnumMap = {
  PhlebotomistStatus.active: 'active',
  PhlebotomistStatus.inactive: 'inactive',
  PhlebotomistStatus.suspended: 'suspended',
  PhlebotomistStatus.onBreak: 'onBreak',
};
