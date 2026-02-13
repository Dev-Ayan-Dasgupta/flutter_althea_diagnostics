import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum UserRole {
  phlebotomist,
  labAdmin,
  labTechnician,
  pathologist,
  platformAdmin,
}

enum PhlebotomistStatus { active, inactive, suspended, onBreak }

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
    String? phoneNumber,
    String? avatarUrl,
    required UserRole role,
    required String labId,
    String? labName,
    required List<String> permissions,
    required DateTime createdAt,
    DateTime? lastLoginAt,

    // Phlebotomist-specific fields
    PhlebotomistStatus? phlebotomistStatus,
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
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// Helper extension for role checks
extension UserRoleX on User {
  bool get isPhlebotomist => role == UserRole.phlebotomist;
  bool get isLabAdmin => role == UserRole.labAdmin;
  bool get isLabTechnician => role == UserRole.labTechnician;
  bool get isPathologist => role == UserRole.pathologist;
  bool get isPlatformAdmin => role == UserRole.platformAdmin;

  bool get hasWallet => isPhlebotomist;
  bool get canManageStaff => isLabAdmin || isPlatformAdmin;
  bool get canCollectSamples => isPhlebotomist;
  bool get canProcessSamples => isLabTechnician || isPathologist;
  bool get canSignOffResults => isPathologist;
}
