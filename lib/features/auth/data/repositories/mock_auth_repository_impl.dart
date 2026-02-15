import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/auth_token.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_local_datasource.dart';
import '../datasources/auth_mock_datasource.dart';
import '../models/user_model.dart';

class MockAuthRepositoryImpl implements AuthRepository {
  final MockAuthDataSource mockDataSource;
  final AuthLocalDataSource localDataSource;

  User? _currentUser;

  MockAuthRepositoryImpl({
    required this.mockDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, AuthToken>> login({
    required String email,
    required String password,
  }) async {
    try {
      final user = await mockDataSource.login(email, password);
      _currentUser = user;

      final now = DateTime.now();

      // Create mock token model
      final tokenModel = AuthTokenModel(
        accessToken: 'mock_access_token_${user.id}',
        refreshToken: 'mock_refresh_token_${user.id}',
        tokenType: 'Bearer',
        expiresIn: 86400, // 24 hours in seconds
        issuedAt: now.toIso8601String(),
      );

      // Save token locally
      await localDataSource.cacheToken(tokenModel);

      // Save user locally - convert User to UserModel
      final userModel = UserModel.fromDomain(user);
      await localDataSource.cacheUser(userModel);

      // Convert to domain entity
      final token = AuthToken(
        accessToken: tokenModel.accessToken,
        refreshToken: tokenModel.refreshToken,
        tokenType: tokenModel.tokenType,
        expiresIn: tokenModel.expiresIn,
        issuedAt: now,
      );

      return Right(token);
    } on CacheException catch (e) {
      return Left(Failure.cache(message: e.message));
    } on Exception catch (e) {
      return Left(Failure.authentication(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> sendOtp(String phoneNumber) async {
    try {
      final otp = await mockDataSource.sendOTP(phoneNumber);
      return Right(otp);
    } on Exception catch (e) {
      return Left(Failure.authentication(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthToken>> verifyOtp({
    required String phoneNumber,
    required String otp,
  }) async {
    try {
      await mockDataSource.verifyOTP(phoneNumber, otp);

      final now = DateTime.now();

      // For OTP login, we need to get the user from mock data
      // For now, use a default test user
      // TODO: In a real implementation, backend would return the user

      final tokenModel = AuthTokenModel(
        accessToken: 'mock_access_token_otp',
        refreshToken: 'mock_refresh_token_otp',
        tokenType: 'Bearer',
        expiresIn: 86400,
        issuedAt: now.toIso8601String(),
      );

      await localDataSource.cacheToken(tokenModel);

      final token = AuthToken(
        accessToken: tokenModel.accessToken,
        refreshToken: tokenModel.refreshToken,
        tokenType: tokenModel.tokenType,
        expiresIn: tokenModel.expiresIn,
        issuedAt: now,
      );

      return Right(token);
    } on CacheException catch (e) {
      return Left(Failure.cache(message: e.message));
    } on Exception catch (e) {
      return Left(Failure.authentication(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthToken>> refreshToken(String refreshToken) async {
    try {
      final now = DateTime.now();

      final tokenModel = AuthTokenModel(
        accessToken: 'mock_access_token_refreshed',
        refreshToken: 'mock_refresh_token_refreshed',
        tokenType: 'Bearer',
        expiresIn: 86400,
        issuedAt: now.toIso8601String(),
      );

      await localDataSource.cacheToken(tokenModel);

      final token = AuthToken(
        accessToken: tokenModel.accessToken,
        refreshToken: tokenModel.refreshToken,
        tokenType: tokenModel.tokenType,
        expiresIn: tokenModel.expiresIn,
        issuedAt: now,
      );

      return Right(token);
    } on CacheException catch (e) {
      return Left(Failure.cache(message: e.message));
    } on Exception catch (e) {
      return Left(Failure.authentication(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await mockDataSource.logout();
      await localDataSource.clearToken();
      await localDataSource.clearUser();
      _currentUser = null;
      return const Right(null);
    } on CacheException catch (e) {
      return Left(Failure.cache(message: e.message));
    } on Exception catch (e) {
      return Left(Failure.authentication(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> getCurrentUser() async {
    try {
      // First check in-memory cache
      if (_currentUser != null) {
        return Right(_currentUser!);
      }

      // Then check if we have a saved token
      final tokenModel = await localDataSource.getToken();
      if (tokenModel == null) {
        return Left(Failure.authentication(message: 'Not authenticated'));
      }

      // Try to get cached user
      final cachedUser = await localDataSource.getUser();
      if (cachedUser != null) {
        _currentUser = cachedUser as User;
        return Right(_currentUser!);
      }

      // If no cached user, authentication has expired
      return Left(Failure.authentication(message: 'User session expired'));
    } on CacheException catch (e) {
      return Left(Failure.cache(message: e.message));
    } on Exception catch (e) {
      return Left(Failure.authentication(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> updateProfile({
    String? name,
    String? email,
    String? phoneNumber,
    String? avatarUrl,
  }) async {
    try {
      if (_currentUser == null) {
        return Left(Failure.authentication(message: 'Not authenticated'));
      }

      // Update user with new values
      _currentUser = _currentUser!.copyWith(
        name: name ?? _currentUser!.name,
        email: email ?? _currentUser!.email,
        phoneNumber: phoneNumber ?? _currentUser!.phoneNumber,
        avatarUrl: avatarUrl ?? _currentUser!.avatarUrl,
      );

      // Save updated user
      final userModel = UserModel.fromDomain(_currentUser!);
      await localDataSource.cacheUser(userModel);

      return Right(_currentUser!);
    } on CacheException catch (e) {
      return Left(Failure.cache(message: e.message));
    } on Exception catch (e) {
      return Left(Failure.server(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      return const Right(null);
    } on Exception catch (e) {
      return Left(Failure.server(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> resetPassword(String email) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      return const Right(null);
    } on Exception catch (e) {
      return Left(Failure.server(message: e.toString()));
    }
  }

  @override
  Future<bool> isAuthenticated() async {
    try {
      final tokenModel = await localDataSource.getToken();
      if (tokenModel == null) return false;

      // Check if token is expired
      final issuedAt = DateTime.parse(tokenModel.issuedAt);
      final expiresAt = issuedAt.add(Duration(seconds: tokenModel.expiresIn));

      return DateTime.now().isBefore(expiresAt);
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Either<Failure, AuthToken?>> getStoredToken() async {
    try {
      final tokenModel = await localDataSource.getToken();

      if (tokenModel == null) {
        return const Right(null);
      }

      final token = tokenModel.toDomain();
      return Right(token);
    } on Exception catch (e) {
      return Left(Failure.cache(message: e.toString()));
    }
  }

  @override
  Stream<Either<Failure, User?>> watchAuthState() async* {
    try {
      yield Right(_currentUser);
    } catch (e) {
      yield Left(Failure.unknown(message: e.toString()));
    }
  }
}
