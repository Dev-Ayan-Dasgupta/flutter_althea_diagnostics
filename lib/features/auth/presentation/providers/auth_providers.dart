import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/providers/providers.dart';
import '../../data/datasources/auth_local_datasource.dart';
import '../../data/datasources/auth_remote_datasource.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/usecases/login.dart';
import '../../domain/usecases/logout.dart';
import '../../domain/usecases/verify_otp.dart';
import '../../domain/usecases/send_otp.dart';
import '../../domain/usecases/get_current_user.dart';

part 'auth_providers.g.dart';

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

// Repository

@riverpod
AuthRepository authRepository(Ref ref) {
  final remoteDataSource = ref.watch(authRemoteDataSourceProvider);
  final localDataSource = ref.watch(authLocalDataSourceProvider);
  return AuthRepositoryImpl(
    remoteDataSource: remoteDataSource,
    localDataSource: localDataSource,
  );
}

// Use Cases

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
class AuthNotifier extends _$AuthNotifier {
  @override
  Future<User?> build() async {
    final repository = ref.watch(authRepositoryProvider);
    final isAuthenticated = await repository.isAuthenticated();

    if (!isAuthenticated) {
      return null;
    }

    final result = await ref.read(getCurrentUserUseCaseProvider).call();
    return result.fold(
      (failure) => null,
      (user) => user,
    );
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();

    final result = await ref.read(loginUseCaseProvider).call(
          LoginParams(email: email, password: password),
        );

    state = await AsyncValue.guard(() async {
      return result.fold(
        (failure) => throw failure,
        (token) async {
          // Get user after successful login
          final userResult =
              await ref.read(getCurrentUserUseCaseProvider).call();
          return userResult.fold(
            (failure) => throw failure,
            (user) => user,
          );
        },
      );
    });
  }

  Future<void> loginWithOtp({
    required String phoneNumber,
    required String otp,
  }) async {
    state = const AsyncLoading();

    final result = await ref.read(verifyOtpUseCaseProvider).call(
          VerifyOtpParams(phoneNumber: phoneNumber, otp: otp),
        );

    state = await AsyncValue.guard(() async {
      return result.fold(
        (failure) => throw failure,
        (token) async {
          final userResult =
              await ref.read(getCurrentUserUseCaseProvider).call();
          return userResult.fold(
            (failure) => throw failure,
            (user) => user,
          );
        },
      );
    });
  }

  Future<void> logout() async {
    state = const AsyncLoading();

    final result = await ref.read(logoutUseCaseProvider).call();

    state = await AsyncValue.guard(() async {
      return result.fold(
        (failure) => throw failure,
        (_) => null,
      );
    });
  }

  Future<void> refreshUser() async {
    final result = await ref.read(getCurrentUserUseCaseProvider).call();
    state = result.fold(
      (failure) => AsyncError(failure, StackTrace.current),
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
