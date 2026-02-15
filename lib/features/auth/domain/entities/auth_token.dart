import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_token.freezed.dart';

@freezed
abstract class AuthToken with _$AuthToken {
  const factory AuthToken({
    required String accessToken,
    required String refreshToken,
    required String tokenType,
    required int expiresIn,
    required DateTime issuedAt,
  }) = _AuthToken;

  // Add a helper to check if token is expired
  const AuthToken._();

  DateTime get expiresAt => issuedAt.add(Duration(seconds: expiresIn));

  bool get isExpired => DateTime.now().isAfter(expiresAt);

  bool get willExpireSoon {
    final now = DateTime.now();
    final expiryTime = expiresAt;
    final timeUntilExpiry = expiryTime.difference(now);
    return timeUntilExpiry.inMinutes < 5; // Will expire in less than 5 minutes
  }
}
