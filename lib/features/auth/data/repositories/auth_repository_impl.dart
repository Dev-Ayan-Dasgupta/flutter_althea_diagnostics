import 'dart:async';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/auth_token.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_local_datasource.dart';
import '../datasources/auth_remote_datasource.dart';
import '../models/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, AuthToken>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await remoteDataSource.login(
        email: email,
        password: password,
      );

      final token = AuthTokenModel.fromJson(response);
      final user = UserModel.fromJson(response['user'] as Map<String, dynamic>);

      await localDataSource.cacheToken(token);
      await localDataSource.cacheUser(user);

      return Right(token.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.authentication(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> sendOtp(String phoneNumber) async {
    try {
      final requestId = await remoteDataSource.sendOtp(phoneNumber);
      return Right(requestId);
    } on ServerException catch (e) {
      return Left(Failure.authentication(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthToken>> verifyOtp({
    required String phoneNumber,
    required String otp,
  }) async {
    try {
      final response = await remoteDataSource.verifyOtp(
        phoneNumber: phoneNumber,
        otp: otp,
      );

      final token = AuthTokenModel.fromJson(response);
      final user = UserModel.fromJson(response['user'] as Map<String, dynamic>);

      await localDataSource.cacheToken(token);
      await localDataSource.cacheUser(user);

      return Right(token.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.authentication(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthToken>> refreshToken(String refreshToken) async {
    try {
      final token = await remoteDataSource.refreshToken(refreshToken);
      await localDataSource.cacheToken(token);
      return Right(token.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.authentication(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await remoteDataSource.logout();
      await localDataSource.clearToken();
      await localDataSource.clearUser();
      return const Right(null);
    } on ServerException catch (e) {
      return Left(Failure.authentication(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> getCurrentUser() async {
    try {
      final user = await remoteDataSource.getCurrentUser();
      await localDataSource.cacheUser(user);
      return Right(user.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.authentication(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> updateProfile({
    String? name,
    String? email,
    String? phoneNumber,
    String? avatarUrl,
  }) async {
    return const Left(Failure.server(message: 'Not implemented yet'));
  }

  @override
  Future<Either<Failure, void>> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    return const Left(Failure.server(message: 'Not implemented yet'));
  }

  @override
  Future<Either<Failure, void>> resetPassword(String email) async {
    return const Left(Failure.server(message: 'Not implemented yet'));
  }

  @override
  Future<bool> isAuthenticated() async {
    try {
      final token = await localDataSource.getToken();
      if (token == null) return false;

      final issuedAt = DateTime.parse(token.issuedAt);
      final expiryTime = issuedAt.add(Duration(seconds: token.expiresIn));

      return DateTime.now().isBefore(expiryTime);
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Either<Failure, AuthToken?>> getStoredToken() async {
    try {
      final token = await localDataSource.getToken();
      return Right(token?.toEntity());
    } on CacheException catch (e) {
      return Left(Failure.cache(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Stream<Either<Failure, User?>> watchAuthState() {
    return remoteDataSource.watchAuthState().transform(
          StreamTransformer.fromHandlers(
            handleData: (data, sink) {
              sink.add(Right(data?.toEntity()));
            },
            handleError: (error, stackTrace, sink) {
              sink.add(Left(Failure.authentication(message: error.toString())));
            },
          ),
        );
  }
}
