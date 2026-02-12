// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthToken _$AuthTokenFromJson(Map<String, dynamic> json) => _AuthToken(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      tokenType: json['tokenType'] as String,
      expiresIn: (json['expiresIn'] as num).toInt(),
      issuedAt: DateTime.parse(json['issuedAt'] as String),
    );

Map<String, dynamic> _$AuthTokenToJson(_AuthToken instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'tokenType': instance.tokenType,
      'expiresIn': instance.expiresIn,
      'issuedAt': instance.issuedAt.toIso8601String(),
    };
