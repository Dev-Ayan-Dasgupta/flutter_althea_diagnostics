import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/providers/providers.dart';
import '../../data/datasources/auth_local_datasource.dart';
import '../../data/datasources/auth_remote_datasource.dart';
import '../../data/datasources/auth_mock_datasource.dart'; // ← Add this import
import '../../data/repositories/auth_repository_impl.dart';
import '../../data/repositories/mock_auth_repository_impl.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/usecases/login.dart';
import '../../domain/usecases/logout.dart';
import '../../domain/usecases/verify_otp.dart';
import '../../domain/usecases/send_otp.dart';
import '../../domain/usecases/get_current_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_providers.g.dart';

// Add this flag to switch between mock and real backend
const bool useMockAuth = true; // ← Set to true for mock, false for real backend

// Mock Data Source Provider
@riverpod
MockAuthDataSource mockAuthDataSource(Ref ref) {
  return MockAuthDataSource();
}

// Data Sources
@riverpod
AuthRemoteDataSource authRemoteDataSource(Ref ref) {
  final graphqlService = ref.watch(graphqlServiceProvider);
  return AuthRemoteDataSourceImpl(graphqlService: graphqlService);
}

@riverpod
AuthLocalDataSource authLocalDataSource(Ref ref) {
  final secureStorage = ref.watch(secureStorageProvider);
  return AuthLocalDataSourceImpl(secureStorage: secureStorage);
}

// Repository - Updated to use mock or real based on flag
@riverpod
AuthRepository authRepository(Ref ref) {
  if (useMockAuth) {
    // Use mock repository implementation
    final mockDataSource = ref.watch(mockAuthDataSourceProvider);
    final localDataSource = ref.watch(authLocalDataSourceProvider);
    return MockAuthRepositoryImpl(
      mockDataSource: mockDataSource,
      localDataSource: localDataSource,
    );
  } else {
    // Use real repository implementation
    final remoteDataSource = ref.watch(authRemoteDataSourceProvider);
    final localDataSource = ref.watch(authLocalDataSourceProvider);
    return AuthRepositoryImpl(
      remoteDataSource: remoteDataSource,
      localDataSource: localDataSource,
    );
  }
}

// Use Cases (remain the same)
@riverpod
Login loginUseCase(Ref ref) {
  final repository = ref.watch(authRepositoryProvider);
  return Login(repository);
}

@riverpod
Logout logoutUseCase(Ref ref) {
  final repository = ref.watch(authRepositoryProvider);
  return Logout(repository);
}

@riverpod
SendOtp sendOtpUseCase(Ref ref) {
  final repository = ref.watch(authRepositoryProvider);
  return SendOtp(repository);
}

@riverpod
VerifyOtp verifyOtpUseCase(Ref ref) {
  final repository = ref.watch(authRepositoryProvider);
  return VerifyOtp(repository);
}

@riverpod
GetCurrentUser getCurrentUserUseCase(Ref ref) {
  final repository = ref.watch(authRepositoryProvider);
  return GetCurrentUser(repository);
}

// Auth State Provider
@riverpod
class Auth extends _$Auth {
  @override
  Future<User?> build() async {
    // Check if user is already logged in
    final prefs = await SharedPreferences.getInstance();
    final userEmail = prefs.getString('user_email');

    if (userEmail == null) {
      return null;
    }

    // Try to get current user
    try {
      final repository = ref.watch(authRepositoryProvider);
      final isAuthenticated = await repository.isAuthenticated();

      if (!isAuthenticated) {
        return null;
      }

      final result = await ref.read(getCurrentUserUseCaseProvider).call();
      return result.fold((failure) => null, (user) => user);
    } catch (e) {
      return null;
    }
  }

  Future<void> login({required String email, required String password}) async {
    state = const AsyncLoading();

    final result = await ref
        .read(loginUseCaseProvider)
        .call(LoginParams(email: email, password: password));

    state = await AsyncValue.guard(() async {
      return result.fold((failure) => throw Exception(failure.message), (
        token,
      ) async {
        // Get user after successful login
        final userResult = await ref.read(getCurrentUserUseCaseProvider).call();
        return userResult.fold(
          (failure) => throw Exception(failure.message),
          (user) => user,
        );
      });
    });
  }

  Future<void> loginWithOtp({
    required String phoneNumber,
    required String otp,
  }) async {
    state = const AsyncLoading();

    final result = await ref
        .read(verifyOtpUseCaseProvider)
        .call(VerifyOtpParams(phoneNumber: phoneNumber, otp: otp));

    state = await AsyncValue.guard(() async {
      return result.fold((failure) => throw Exception(failure.message), (
        token,
      ) async {
        final userResult = await ref.read(getCurrentUserUseCaseProvider).call();
        return userResult.fold(
          (failure) => throw Exception(failure.message),
          (user) => user,
        );
      });
    });
  }

  Future<void> logout() async {
    state = const AsyncLoading();

    final result = await ref.read(logoutUseCaseProvider).call();

    state = await AsyncValue.guard(() async {
      return result.fold(
        (failure) => throw Exception(failure.message),
        (_) => null,
      );
    });
  }

  Future<void> refreshUser() async {
    final result = await ref.read(getCurrentUserUseCaseProvider).call();
    state = result.fold(
      (failure) => AsyncError(Exception(failure.message), StackTrace.current),
      (user) => AsyncData(user),
    );
  }
}

// Current User Provider (convenience)
@riverpod
User? currentUser(Ref ref) {
  final authState = ref.watch(authProvider);
  return authState.value;
}

// Is Authenticated Provider
@riverpod
bool isAuthenticated(Ref ref) {
  final authState = ref.watch(authProvider);
  return authState.value != null;
}
