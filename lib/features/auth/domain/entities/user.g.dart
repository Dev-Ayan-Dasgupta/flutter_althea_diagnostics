// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
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

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('avatarUrl', instance.avatarUrl);
  val['role'] = _$UserRoleEnumMap[instance.role]!;
  val['labId'] = instance.labId;
  writeNotNull('labName', instance.labName);
  val['permissions'] = instance.permissions;
  val['createdAt'] = instance.createdAt.toIso8601String();
  writeNotNull('lastLoginAt', instance.lastLoginAt?.toIso8601String());
  return val;
}

const _$UserRoleEnumMap = {
  UserRole.labManager: 'labManager',
  UserRole.labTechnician: 'labTechnician',
  UserRole.pathologist: 'pathologist',
  UserRole.phlebotomist: 'phlebotomist',
  UserRole.admin: 'admin',
};
