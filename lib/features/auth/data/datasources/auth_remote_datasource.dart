import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/graphql_client.dart';
import '../graphql/auth_queries.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  });
  Future<String> sendOtp(String phoneNumber);
  Future<Map<String, dynamic>> verifyOtp({
    required String phoneNumber,
    required String otp,
  });
  Future<AuthTokenModel> refreshToken(String refreshToken);
  Future<void> logout();
  Future<UserModel> getCurrentUser();
  Stream<UserModel?> watchAuthState();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final GraphQLService graphqlService;

  AuthRemoteDataSourceImpl({required this.graphqlService});

  @override
  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await graphqlService.mutate(
        AuthQueries.login,
        variables: {
          'email': email,
          'password': password,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ?? 'Login failed',
        );
      }

      return result.data?['login'] as Map<String, dynamic>;
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Login failed: ${e.toString()}');
    }
  }

  @override
  Future<String> sendOtp(String phoneNumber) async {
    try {
      final result = await graphqlService.mutate(
        AuthQueries.sendOtp,
        variables: {'phoneNumber': phoneNumber},
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ?? 'Failed to send OTP',
        );
      }

      return result.data?['sendOtp']['requestId'] as String;
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to send OTP: ${e.toString()}');
    }
  }

  @override
  Future<Map<String, dynamic>> verifyOtp({
    required String phoneNumber,
    required String otp,
  }) async {
    try {
      final result = await graphqlService.mutate(
        AuthQueries.verifyOtp,
        variables: {
          'phoneNumber': phoneNumber,
          'otp': otp,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'OTP verification failed',
        );
      }

      return result.data?['verifyOtp'] as Map<String, dynamic>;
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('OTP verification failed: ${e.toString()}');
    }
  }

  @override
  Future<AuthTokenModel> refreshToken(String refreshToken) async {
    try {
      final result = await graphqlService.mutate(
        AuthQueries.refreshToken,
        variables: {'refreshToken': refreshToken},
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to refresh token',
        );
      }

      return AuthTokenModel.fromJson(
        result.data?['refreshToken'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to refresh token: ${e.toString()}');
    }
  }

  @override
  Future<void> logout() async {
    try {
      final result = await graphqlService.mutate(AuthQueries.logout);

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ?? 'Logout failed',
        );
      }
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Logout failed: ${e.toString()}');
    }
  }

  @override
  Future<UserModel> getCurrentUser() async {
    try {
      final result = await graphqlService.query(AuthQueries.getCurrentUser);

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to get current user',
        );
      }

      return UserModel.fromJson(
        result.data?['currentUser'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to get current user: ${e.toString()}');
    }
  }

  @override
  Stream<UserModel?> watchAuthState() {
    return graphqlService.subscribe(AuthQueries.watchAuthState).map((result) {
      if (result.hasException) {
        return null;
      }
      final userData = result.data?['authStateChanged'];
      if (userData == null) return null;
      return UserModel.fromJson(userData as Map<String, dynamic>);
    });
  }
}
