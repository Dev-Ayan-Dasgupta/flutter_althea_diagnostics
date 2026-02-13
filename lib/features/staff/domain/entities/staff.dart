import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../auth/domain/entities/user.dart';

part 'staff.freezed.dart';

@freezed
abstract class StaffMember with _$StaffMember {
  const factory StaffMember({
    required String id,
    required String name,
    required String email,
    required String phoneNumber,
    required UserRole role,
    required PhlebotomistStatus status,
    required String labId,
    required DateTime joinedAt,
    String? avatarUrl,
    List<String>? certifications,
    double? currentBalance,
    int? totalCollections,
    double? averageRating,
    required bool isOnline,
    DateTime? lastActiveAt,
  }) = _StaffMember;
}

@freezed
abstract class StaffInvitation with _$StaffInvitation {
  const factory StaffInvitation({
    required String id,
    required String labId,
    required String labName,
    required String invitedEmail,
    required String invitedPhoneNumber,
    required UserRole roleOffered,
    required InvitationStatus status,
    required DateTime createdAt,
    DateTime? expiresAt,
    DateTime? acceptedAt,
    String? invitedBy,
  }) = _StaffInvitation;
}

enum InvitationStatus { pending, accepted, rejected, expired }

@freezed
abstract class StaffFilters with _$StaffFilters {
  const factory StaffFilters({
    UserRole? role,
    PhlebotomistStatus? status,
    bool? isOnline,
    String? searchQuery,
  }) = _StaffFilters;
}
