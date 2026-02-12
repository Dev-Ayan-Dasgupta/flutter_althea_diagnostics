import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

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
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

enum UserRole {
  labManager,
  labTechnician,
  pathologist,
  phlebotomist,
  admin,
}
