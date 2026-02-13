import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../config/theme/app_colors.dart';
import '../../config/theme/app_text_styles.dart';
import '../../providers/dashboard_router_provider.dart';
import '../../../features/auth/presentation/providers/auth_providers.dart';

class ProtectedRoute extends ConsumerWidget {
  final Widget child;
  final String? requiredPermission;
  final List<String>? requiredPermissions;
  final Widget? fallback;

  const ProtectedRoute({
    super.key,
    required this.child,
    this.requiredPermission,
    this.requiredPermissions,
    this.fallback,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);

    if (user == null) {
      return _buildUnauthorized();
    }

    // Check single permission
    if (requiredPermission != null) {
      final hasPermission = ref.watch(
        hasPermissionProvider(requiredPermission!),
      );

      if (!hasPermission) {
        return fallback ?? _buildUnauthorized();
      }
    }

    // Check multiple permissions (all required)
    if (requiredPermissions != null && requiredPermissions!.isNotEmpty) {
      final permissions = ref.watch(userPermissionsProvider);
      final hasAllPermissions = requiredPermissions!.every(
        (permission) => permissions.contains(permission),
      );

      if (!hasAllPermissions) {
        return fallback ?? _buildUnauthorized();
      }
    }

    return child;
  }

  Widget _buildUnauthorized() {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock_outline, size: 64, color: AppColors.textSecondary),
            const SizedBox(height: 16),
            Text('Access Denied', style: AppTextStyles.h3),
            const SizedBox(height: 8),
            Text(
              'You don\'t have permission to access this page',
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
