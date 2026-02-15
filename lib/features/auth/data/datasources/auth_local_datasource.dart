import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert';
import '../../../../core/errors/exceptions.dart';
import '../models/user_model.dart';

abstract class AuthLocalDataSource {
  Future<void> cacheToken(AuthTokenModel token);
  Future<AuthTokenModel?> getToken();
  Future<void> clearToken();
  Future<void> cacheUser(UserModel user);
  Future<UserModel?> getUser();
  Future<void> clearUser();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final FlutterSecureStorage secureStorage;

  AuthLocalDataSourceImpl({required this.secureStorage});

  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';
  static const String _tokenTypeKey = 'token_type';
  static const String _expiresInKey = 'expires_in';
  static const String _issuedAtKey = 'issued_at';
  static const String _userKey = 'user_data';

  @override
  Future<void> cacheToken(AuthTokenModel token) async {
    try {
      // Write token data to secure storage
      await secureStorage.write(key: _accessTokenKey, value: token.accessToken);
      await secureStorage.write(key: _refreshTokenKey, value: token.refreshToken);
      await secureStorage.write(key: _tokenTypeKey, value: token.tokenType);
      await secureStorage.write(
        key: _expiresInKey,
        value: token.expiresIn.toString(),
      );
      await secureStorage.write(key: _issuedAtKey, value: token.issuedAt);
    } catch (e) {
      throw CacheException('Failed to cache token: ${e.toString()}');
    }
  }

  @override
  Future<AuthTokenModel?> getToken() async {
    try {
      final accessToken = await secureStorage.read(key: _accessTokenKey);
      if (accessToken == null) return null;

      final refreshToken = await secureStorage.read(key: _refreshTokenKey);
      final tokenType = await secureStorage.read(key: _tokenTypeKey);
      final expiresIn = await secureStorage.read(key: _expiresInKey);
      final issuedAt = await secureStorage.read(key: _issuedAtKey);

      if (refreshToken == null ||
          tokenType == null ||
          expiresIn == null ||
          issuedAt == null) {
        return null;
      }

      return AuthTokenModel(
        accessToken: accessToken,
        refreshToken: refreshToken,
        tokenType: tokenType,
        expiresIn: int.parse(expiresIn),
        issuedAt: issuedAt,
      );
    } catch (e) {
      throw CacheException('Failed to get token: ${e.toString()}');
    }
  }

  @override
  Future<void> clearToken() async {
    try {
      // Delete token data sequentially to avoid race conditions
      await secureStorage.delete(key: _accessTokenKey);
      await secureStorage.delete(key: _refreshTokenKey);
      await secureStorage.delete(key: _tokenTypeKey);
      await secureStorage.delete(key: _expiresInKey);
      await secureStorage.delete(key: _issuedAtKey);
    } catch (e) {
      throw CacheException('Failed to clear token: ${e.toString()}');
    }
  }

  @override
  Future<void> cacheUser(UserModel user) async {
    try {
      final userJson = jsonEncode(user.toJson());
      await secureStorage.write(key: _userKey, value: userJson);
    } catch (e) {
      throw CacheException('Failed to cache user: ${e.toString()}');
    }
  }

  @override
  Future<UserModel?> getUser() async {
    try {
      final userData = await secureStorage.read(key: _userKey);
      if (userData == null) return null;

      final userJson = jsonDecode(userData) as Map<String, dynamic>;
      return UserModel.fromJson(userJson);
    } catch (e) {
      throw CacheException('Failed to get user: ${e.toString()}');
    }
  }

  @override
  Future<void> clearUser() async {
    try {
      await secureStorage.delete(key: _userKey);
    } catch (e) {
      throw CacheException('Failed to clear user: ${e.toString()}');
    }
  }
}
