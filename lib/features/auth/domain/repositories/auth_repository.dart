import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/user.dart';
import '../entities/auth_token.dart';

abstract class AuthRepository {
  /// Login with email and password
  Future<Either<Failure, AuthToken>> login({
    required String email,
    required String password,
  });

  /// Login with phone OTP
  Future<Either<Failure, String>> sendOtp(String phoneNumber);

  Future<Either<Failure, AuthToken>> verifyOtp({
    required String phoneNumber,
    required String otp,
  });

  /// Refresh access token
  Future<Either<Failure, AuthToken>> refreshToken(String refreshToken);

  /// Logout
  Future<Either<Failure, void>> logout();

  /// Get current user
  Future<Either<Failure, User>> getCurrentUser();

  /// Update user profile
  Future<Either<Failure, User>> updateProfile({
    String? name,
    String? email,
    String? phoneNumber,
    String? avatarUrl,
  });

  /// Change password
  Future<Either<Failure, void>> changePassword({
    required String oldPassword,
    required String newPassword,
  });

  /// Reset password
  Future<Either<Failure, void>> resetPassword(String email);

  /// Check if user is authenticated
  Future<bool> isAuthenticated();

  /// Get stored auth token
  Future<Either<Failure, AuthToken?>> getStoredToken();

  /// Stream auth state changes
  Stream<Either<Failure, User?>> watchAuthState();
}
