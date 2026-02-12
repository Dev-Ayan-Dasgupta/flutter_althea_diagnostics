import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/auth_token.dart';
import '../../domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String email,
    String? phoneNumber,
    String? avatarUrl,
    required String role,
    required String labId,
    String? labName,
    required List<String> permissions,
    required String createdAt,
    String? lastLoginAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  static UserModel fromEntity(User entity) {
    return UserModel(
      id: entity.id,
      name: entity.name,
      email: entity.email,
      phoneNumber: entity.phoneNumber,
      avatarUrl: entity.avatarUrl,
      role: entity.role.name,
      labId: entity.labId,
      labName: entity.labName,
      permissions: entity.permissions,
      createdAt: entity.createdAt.toIso8601String(),
      lastLoginAt: entity.lastLoginAt?.toIso8601String(),
    );
  }
}

extension UserModelX on UserModel {
  User toEntity() {
    return User(
      id: id,
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      avatarUrl: avatarUrl,
      role: UserRole.values.firstWhere((e) => e.name == role),
      labId: labId,
      labName: labName,
      permissions: permissions,
      createdAt: DateTime.parse(createdAt),
      lastLoginAt: lastLoginAt != null ? DateTime.parse(lastLoginAt!) : null,
    );
  }
}

@freezed
abstract class AuthTokenModel with _$AuthTokenModel {
  const factory AuthTokenModel({
    required String accessToken,
    required String refreshToken,
    required String tokenType,
    required int expiresIn,
    required String issuedAt,
  }) = _AuthTokenModel;

  factory AuthTokenModel.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenModelFromJson(json);

  static AuthTokenModel fromEntity(AuthToken entity) {
    return AuthTokenModel(
      accessToken: entity.accessToken,
      refreshToken: entity.refreshToken,
      tokenType: entity.tokenType,
      expiresIn: entity.expiresIn,
      issuedAt: entity.issuedAt.toIso8601String(),
    );
  }
}

extension AuthTokenModelX on AuthTokenModel {
  AuthToken toEntity() {
    return AuthToken(
      accessToken: accessToken,
      refreshToken: refreshToken,
      tokenType: tokenType,
      expiresIn: expiresIn,
      issuedAt: DateTime.parse(issuedAt),
    );
  }
}
