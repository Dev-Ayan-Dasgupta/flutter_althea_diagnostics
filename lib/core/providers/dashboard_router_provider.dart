import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/auth/presentation/providers/auth_providers.dart';
import '../../features/auth/domain/entities/user.dart';

final dashboardRouteProvider = Provider<String>((ref) {
  final user = ref.watch(currentUserProvider);

  if (user == null) return '/login';

  switch (user.role) {
    case UserRole.phlebotomist:
      return '/phlebotomist-dashboard';
    case UserRole.labAdmin:
      return '/lab-admin-dashboard';
    case UserRole.labTechnician:
      return '/technician-dashboard';
    case UserRole.pathologist:
      return '/pathologist-dashboard';
    case UserRole.platformAdmin:
      return '/platform-admin-dashboard';
  }
});

final userPermissionsProvider = Provider<Set<String>>((ref) {
  final user = ref.watch(currentUserProvider);

  if (user == null) return {};

  return user.permissions.toSet();
});

// Permission checker
final hasPermissionProvider = Provider.family<bool, String>((ref, permission) {
  final permissions = ref.watch(userPermissionsProvider);
  return permissions.contains(permission);
});
