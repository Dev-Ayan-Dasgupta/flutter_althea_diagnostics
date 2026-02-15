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

    // Phlebotomist-specific fields
    String? phlebotomistStatus,
    double? currentBalance,
    int? totalCollections,
    double? averageRating,
    List<String>? certifications,
    String? vehicleNumber,
    bool? isAvailableForCollection,

    // Lab Admin-specific fields
    List<String>? managedLabIds,
    int? staffCount,
    String? licenseNumber,
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
      phlebotomistStatus: entity.phlebotomistStatus?.name,
      currentBalance: entity.currentBalance,
      totalCollections: entity.totalCollections,
      averageRating: entity.averageRating,
      certifications: entity.certifications,
      vehicleNumber: entity.vehicleNumber,
      isAvailableForCollection: entity.isAvailableForCollection,
      managedLabIds: entity.managedLabIds,
      staffCount: entity.staffCount,
      licenseNumber: entity.licenseNumber,
    );
  }

  factory UserModel.fromDomain(User user) {
    return UserModel(
      id: user.id,
      name: user.name,
      email: user.email,
      phoneNumber: user.phoneNumber,
      avatarUrl: user.avatarUrl,
      role: user.role.name, // ← Convert enum to string
      labId: user.labId,
      labName: user.labName,
      permissions: user.permissions,
      createdAt: user.createdAt
          .toIso8601String(), // ← Convert DateTime to string
      lastLoginAt: user.lastLoginAt
          ?.toIso8601String(), // ← Convert DateTime to string
      phlebotomistStatus:
          user.phlebotomistStatus?.name, // ← Convert enum to string
      currentBalance: user.currentBalance,
      totalCollections: user.totalCollections,
      averageRating: user.averageRating,
      certifications: user.certifications,
      vehicleNumber: user.vehicleNumber,
      isAvailableForCollection: user.isAvailableForCollection,
      managedLabIds: user.managedLabIds,
      staffCount: user.staffCount,
      licenseNumber: user.licenseNumber,
    );
  }
}

extension UserModelX on UserModel {
  User toEntity() {
    // Parse role with case-insensitive matching
    final matchedRole = UserRole.values.firstWhere(
      (e) => e.name.toLowerCase() == role.toLowerCase(),
      orElse: () => throw FormatException(
        'Invalid user role: "$role". Expected one of: ${UserRole.values.map((e) => e.name).join(", ")}',
      ),
    );

    // Parse phlebotomist status if present
    PhlebotomistStatus? parsedStatus;
    if (phlebotomistStatus != null) {
      try {
        parsedStatus = PhlebotomistStatus.values.firstWhere(
          (e) => e.name.toLowerCase() == phlebotomistStatus!.toLowerCase(),
        );
      } catch (_) {
        parsedStatus = null;
      }
    }

    return User(
      id: id,
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      avatarUrl: avatarUrl,
      role: matchedRole,
      labId: labId,
      labName: labName,
      permissions: permissions,
      createdAt: DateTime.parse(createdAt),
      lastLoginAt: lastLoginAt != null ? DateTime.parse(lastLoginAt!) : null,
      phlebotomistStatus: parsedStatus,
      currentBalance: currentBalance,
      totalCollections: totalCollections,
      averageRating: averageRating,
      certifications: certifications,
      vehicleNumber: vehicleNumber,
      isAvailableForCollection: isAvailableForCollection,
      managedLabIds: managedLabIds,
      staffCount: staffCount,
      licenseNumber: licenseNumber,
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

  factory AuthTokenModel.fromDomain(AuthToken token) {
    return AuthTokenModel(
      accessToken: token.accessToken,
      refreshToken: token.refreshToken,
      tokenType: token.tokenType,
      expiresIn: token.expiresIn,
      issuedAt: token.issuedAt.toIso8601String(),
    );
  }
}

extension AuthTokenModelX on AuthTokenModel {
  AuthToken toDomain() {
    final issuedAtDateTime = DateTime.parse(issuedAt);

    return AuthToken(
      accessToken: accessToken,
      refreshToken: refreshToken,
      tokenType: tokenType,
      expiresIn: expiresIn,
      issuedAt: issuedAtDateTime,
    );
  }
}
