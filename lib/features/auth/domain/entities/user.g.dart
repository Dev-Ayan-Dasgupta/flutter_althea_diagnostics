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
};

const _$UserRoleEnumMap = {
  UserRole.labManager: 'labManager',
  UserRole.labTechnician: 'labTechnician',
  UserRole.pathologist: 'pathologist',
  UserRole.phlebotomist: 'phlebotomist',
  UserRole.admin: 'admin',
};
