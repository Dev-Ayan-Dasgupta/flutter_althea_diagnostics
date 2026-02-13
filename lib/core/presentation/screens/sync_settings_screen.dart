import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_shadows.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import '../../sync/models/sync_item.dart';
import '../widgets/gradient_text.dart';
import '../widgets/app_button.dart';
import '../widgets/app_card.dart';
import '../widgets/settings_list_item.dart';
import '../../utils/navigation_extensions.dart';
import '../../sync/services/background_sync_service.dart';
import '../../sync/services/sync_queue_service.dart';
import '../../services/connectivity_service.dart';

class SyncSettingsScreen extends ConsumerStatefulWidget {
  const SyncSettingsScreen({super.key});

  @override
  ConsumerState<SyncSettingsScreen> createState() => _SyncSettingsScreenState();
}

class _SyncSettingsScreenState extends ConsumerState<SyncSettingsScreen> {
  final _syncQueueService = SyncQueueService();
  bool _autoSync = true;
  bool _syncOnWifiOnly = false;

  Future<void> _syncNow() async {
    await ref.read(backgroundSyncServiceProvider).syncNow();

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Sync started'),
          backgroundColor: AppColors.success,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  Future<void> _clearSyncQueue() async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
        ),
        title: Text(
          'Clear Sync Queue',
          style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
        ),
        content: Text(
          'Are you sure you want to clear all pending sync items? This cannot be undone.',
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
            onPressed: () async {
              Navigator.pop(context);
              await _syncQueueService.clearAll();
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Sync queue cleared'),
                    backgroundColor: AppColors.success,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              }
            },
            child: Text('Clear', style: TextStyle(color: AppColors.critical)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final connectionStatus = ref.watch(connectionStatusProvider);
    final syncProgress = ref.watch(syncProgressProvider);
    final queueSize = ref.watch(syncQueueSizeProvider);

    final isOnline = connectionStatus.value ?? false;
    final pendingCount = queueSize.value ?? 0;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              // Header
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(AppDimensions.spacing16),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => context.goBack(),
                        child: Container(
                          padding: const EdgeInsets.all(AppDimensions.spacing8),
                          decoration: BoxDecoration(
                            gradient: AppGradients.surfaceDark,
                            borderRadius: BorderRadius.circular(
                              AppDimensions.radiusMedium,
                            ),
                            boxShadow: AppShadows.soft,
                          ),
                          child: const Icon(Icons.arrow_back),
                        ),
                      ),
                      const SizedBox(width: AppDimensions.spacing12),
                      Expanded(
                        child: GradientText(
                          'Sync & Offline',
                          style: AppTextStyles.h3.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                          gradient: AppGradients.primaryText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Connection Status Card
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(AppDimensions.spacing16),
                  child: AppCard(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(
                                AppDimensions.spacing12,
                              ),
                              decoration: BoxDecoration(
                                gradient: isOnline
                                    ? AppGradients.success
                                    : AppGradients.critical,
                                borderRadius: BorderRadius.circular(
                                  AppDimensions.radiusSmall,
                                ),
                              ),
                              child: Icon(
                                isOnline ? Icons.cloud_done : Icons.cloud_off,
                                color: Colors.white,
                                size: AppDimensions.iconLarge,
                              ),
                            ),
                            const SizedBox(width: AppDimensions.spacing16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    isOnline ? 'Online' : 'Offline',
                                    style: AppTextStyles.h4.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    isOnline
                                        ? 'Connected to server'
                                        : 'Working in offline mode',
                                    style: AppTextStyles.bodySmall.copyWith(
                                      color: AppColors.textSecondary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppDimensions.spacing16),
                        const Divider(),
                        const SizedBox(height: AppDimensions.spacing16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildStatItem(
                              'Pending',
                              pendingCount.toString(),
                              Icons.sync,
                            ),
                            Container(
                              width: 1,
                              height: 40,
                              color: AppColors.darkSurfaceVariant,
                            ),
                            _buildStatItem(
                              'Status',
                              syncProgress.value?.status.name ?? 'Idle',
                              Icons.info_outline,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Sync Actions
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spacing16,
                  ),
                  child: Column(
                    children: [
                      AppButton(
                        text: 'Sync Now',
                        onPressed: isOnline ? _syncNow : null,
                        fullWidth: true,
                        icon: const Icon(Icons.sync),
                        isLoading:
                            syncProgress.value?.status == SyncStatus.inProgress,
                      ),
                      const SizedBox(height: AppDimensions.spacing12),
                      AppButton(
                        text: 'Clear Sync Queue',
                        onPressed: pendingCount > 0 ? _clearSyncQueue : null,
                        type: AppButtonType.outline,
                        fullWidth: true,
                        icon: const Icon(Icons.delete_sweep),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: AppDimensions.spacing24),

              // Sync Settings
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spacing16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SYNC SETTINGS',
                        style: AppTextStyles.bodySmall.copyWith(
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.5,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: AppDimensions.spacing12),
                      SettingsListItem(
                        icon: Icons.sync,
                        title: 'Auto Sync',
                        subtitle: 'Automatically sync when online',
                        iconColor: AppColors.primary,
                        trailing: Switch(
                          value: _autoSync,
                          onChanged: (value) {
                            setState(() => _autoSync = value);
                          },
                          activeThumbColor: AppColors.primary,
                        ),
                      ),
                      SettingsListItem(
                        icon: Icons.wifi,
                        title: 'WiFi Only',
                        subtitle: 'Sync only when connected to WiFi',
                        iconColor: AppColors.inTransit,
                        trailing: Switch(
                          value: _syncOnWifiOnly,
                          onChanged: (value) {
                            setState(() => _syncOnWifiOnly = value);
                          },
                          activeThumbColor: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Info Card
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(AppDimensions.spacing16),
                  child: AppCard(
                    child: Row(
                      children: [
                        Icon(Icons.info_outline, color: AppColors.inTransit),
                        const SizedBox(width: AppDimensions.spacing12),
                        Expanded(
                          child: Text(
                            'Data is automatically saved locally and synced when you\'re back online',
                            style: AppTextStyles.bodySmall.copyWith(
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 20, color: AppColors.primary),
        const SizedBox(height: AppDimensions.spacing4),
        Text(
          value,
          style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          label,
          style: AppTextStyles.bodySmall.copyWith(
            fontSize: 10,
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }
}
