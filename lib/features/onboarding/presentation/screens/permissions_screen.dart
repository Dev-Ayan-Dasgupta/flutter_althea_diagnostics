import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/gradient_text.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/app_card.dart';
import '../../../../core/utils/navigation_extensions.dart';

class PermissionsScreen extends ConsumerStatefulWidget {
  const PermissionsScreen({super.key});

  @override
  ConsumerState<PermissionsScreen> createState() => _PermissionsScreenState();
}

class _PermissionsScreenState extends ConsumerState<PermissionsScreen> {
  bool _cameraGranted = false;
  bool _locationGranted = false;
  bool _notificationGranted = false;
  bool _storageGranted = false;

  @override
  void initState() {
    super.initState();
    _checkPermissions();
  }

  Future<void> _checkPermissions() async {
    final camera = await Permission.camera.status;
    final location = await Permission.location.status;
    final notification = await Permission.notification.status;
    final storage = await Permission.storage.status;

    setState(() {
      _cameraGranted = camera.isGranted;
      _locationGranted = location.isGranted;
      _notificationGranted = notification.isGranted;
      _storageGranted = storage.isGranted;
    });
  }

  Future<void> _requestPermission(Permission permission) async {
    final status = await permission.request();
    await _checkPermissions();

    if (status.isPermanentlyDenied) {
      _showSettingsDialog();
    }
  }

  void _showSettingsDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
        ),
        title: Text(
          'Permission Required',
          style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
        ),
        content: Text(
          'Please enable permissions in app settings to use all features',
          style: AppTextStyles.bodyMedium,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancel',
              style: TextStyle(color: AppColors.textSecondary),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              openAppSettings();
            },
            child: Text(
              'Open Settings',
              style: TextStyle(color: AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }

  void _continue() {
    // Check if critical permissions are granted
    if (_cameraGranted && _locationGranted) {
      context.goToDashboard();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Camera and Location permissions are required'),
          backgroundColor: AppColors.critical,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final allGranted =
        _cameraGranted &&
        _locationGranted &&
        _notificationGranted &&
        _storageGranted;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(AppDimensions.spacing24),
                  child: Column(
                    children: [
                      const SizedBox(height: AppDimensions.spacing32),

                      // Icon
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          gradient: AppGradients.primaryButton,
                          shape: BoxShape.circle,
                          boxShadow: AppShadows.primary,
                        ),
                        child: const Icon(
                          Icons.security,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: AppDimensions.spacing32),

                      // Title
                      GradientText(
                        'Permissions Required',
                        style: AppTextStyles.h2.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                        gradient: AppGradients.primaryText,
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: AppDimensions.spacing16),

                      Text(
                        'To provide the best experience, we need access to the following',
                        style: AppTextStyles.bodyLarge.copyWith(
                          color: AppColors.textSecondary,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: AppDimensions.spacing48),

                      // Permission Items
                      _buildPermissionItem(
                        title: 'Camera',
                        description: 'Scan barcodes and capture sample images',
                        icon: Icons.camera_alt,
                        isGranted: _cameraGranted,
                        isRequired: true,
                        onTap: () => _requestPermission(Permission.camera),
                      ),

                      const SizedBox(height: AppDimensions.spacing12),

                      _buildPermissionItem(
                        title: 'Location',
                        description:
                            'Track sample collection and transit locations',
                        icon: Icons.location_on,
                        isGranted: _locationGranted,
                        isRequired: true,
                        onTap: () => _requestPermission(Permission.location),
                      ),

                      const SizedBox(height: AppDimensions.spacing12),

                      _buildPermissionItem(
                        title: 'Notifications',
                        description:
                            'Receive alerts for TAT and cold chain breaches',
                        icon: Icons.notifications,
                        isGranted: _notificationGranted,
                        isRequired: false,
                        onTap: () =>
                            _requestPermission(Permission.notification),
                      ),

                      const SizedBox(height: AppDimensions.spacing12),

                      _buildPermissionItem(
                        title: 'Storage',
                        description: 'Save data for offline access',
                        icon: Icons.storage,
                        isGranted: _storageGranted,
                        isRequired: false,
                        onTap: () => _requestPermission(Permission.storage),
                      ),
                    ],
                  ),
                ),
              ),

              // Continue Button
              Padding(
                padding: const EdgeInsets.all(AppDimensions.spacing24),
                child: Column(
                  children: [
                    AppButton(
                      text: allGranted
                          ? 'Continue'
                          : 'Grant Required Permissions',
                      onPressed: allGranted ? _continue : null,
                      fullWidth: true,
                      size: AppButtonSize.large,
                      icon: Icon(allGranted ? Icons.check_circle : Icons.lock),
                    ),
                    if (!allGranted) ...[
                      const SizedBox(height: AppDimensions.spacing12),
                      Text(
                        'Camera and Location are required to continue',
                        style: AppTextStyles.bodySmall.copyWith(
                          color: AppColors.textSecondary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPermissionItem({
    required String title,
    required String description,
    required IconData icon,
    required bool isGranted,
    required bool isRequired,
    required VoidCallback onTap,
  }) {
    return AppCard(
      onTap: isGranted ? null : onTap,
      child: Row(
        children: [
          // Icon
          Container(
            padding: const EdgeInsets.all(AppDimensions.spacing12),
            decoration: BoxDecoration(
              gradient: isGranted
                  ? AppGradients.success
                  : AppGradients.surfaceDark,
              borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
              boxShadow: isGranted
                  ? [
                      BoxShadow(
                        color: AppColors.success.withValues(alpha: 0.3),
                        blurRadius: 12,
                        spreadRadius: 2,
                      ),
                    ]
                  : [],
            ),
            child: Icon(
              isGranted ? Icons.check : icon,
              color: isGranted ? Colors.white : AppColors.textSecondary,
              size: AppDimensions.iconMedium,
            ),
          ),
          const SizedBox(width: AppDimensions.spacing16),

          // Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.bodyLarge.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (isRequired) ...[
                      const SizedBox(width: AppDimensions.spacing8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppDimensions.spacing8,
                          vertical: AppDimensions.spacing4,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.critical.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(
                            AppDimensions.radiusSmall,
                          ),
                        ),
                        child: Text(
                          'REQUIRED',
                          style: AppTextStyles.bodySmall.copyWith(
                            fontSize: 9,
                            fontWeight: FontWeight.w700,
                            color: AppColors.critical,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: AppDimensions.spacing4),
                Text(
                  description,
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),

          // Status
          Icon(
            isGranted ? Icons.check_circle : Icons.arrow_forward_ios,
            color: isGranted ? AppColors.success : AppColors.textSecondary,
            size: 20,
          ),
        ],
      ),
    );
  }
}
