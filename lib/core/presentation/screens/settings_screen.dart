import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../features/auth/presentation/providers/auth_providers.dart';
import '../../config/design/export.dart';
import '../../config/theme/export.dart';
import '../../providers/theme_provider.dart';
import '../widgets/export.dart';
import '../../utils/navigation_extensions.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'export.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  String _appVersion = '';

  @override
  void initState() {
    super.initState();
    _loadAppVersion();
  }

  Future<void> _loadAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      _appVersion = '${packageInfo.version} (${packageInfo.buildNumber})';
    });
  }

  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
        ),
        title: Text(
          'Logout',
          style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
        ),
        content: Text(
          'Are you sure you want to logout?',
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
              await ref.read(authProvider.notifier).logout();
              if (context.mounted) {
                context.goToLogin();
              }
            },
            child: Text('Logout', style: TextStyle(color: AppColors.critical)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(currentUserProvider);
    final themeMode = ref.watch(themeProvider);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              // Header with User Info
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(AppDimensions.spacing16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          // User Avatar
                          if (user != null)
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                gradient: AppGradients.primaryButton,
                                shape: BoxShape.circle,
                                boxShadow: AppShadows.primary,
                              ),
                              child: user.avatarUrl != null
                                  ? ClipOval(
                                      child: Image.network(
                                        user.avatarUrl!,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : Center(
                                      child: Text(
                                        user.name.substring(0, 1).toUpperCase(),
                                        style: AppTextStyles.h3.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                            ),
                          const SizedBox(width: AppDimensions.spacing16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GradientText(
                                  'Settings',
                                  style: AppTextStyles.h2.copyWith(
                                    fontWeight: FontWeight.w800,
                                  ),
                                  gradient: AppGradients.primaryText,
                                ),
                                if (user != null)
                                  Text(
                                    user.name,
                                    style: AppTextStyles.bodyMedium.copyWith(
                                      color: AppColors.textSecondary,
                                    ),
                                  )
                                else
                                  Text(
                                    'Manage your account and preferences',
                                    style: AppTextStyles.bodyMedium.copyWith(
                                      color: AppColors.textSecondary,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Quick Stats Card
              if (user != null)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDimensions.spacing16,
                    ),
                    child: AppCard(
                      padding: const EdgeInsets.all(AppDimensions.spacing16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildQuickStat('Role', user.role.name, Icons.badge),
                          Container(
                            width: 1,
                            height: 40,
                            color: AppColors.darkSurfaceVariant,
                          ),
                          _buildQuickStat(
                            'Lab',
                            user.labName ?? 'N/A',
                            Icons.business,
                          ),
                          Container(
                            width: 1,
                            height: 40,
                            color: AppColors.darkSurfaceVariant,
                          ),
                          _buildQuickStat(
                            'Access',
                            '${user.permissions.length}',
                            Icons.lock,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              const SliverToBoxAdapter(
                child: SizedBox(height: AppDimensions.spacing8),
              ),

              // Account Section
              const SliverToBoxAdapter(
                child: SettingsSectionHeader(
                  title: 'Account',
                  icon: Icons.person,
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spacing16,
                  ),
                  child: Column(
                    children: [
                      SettingsListItem(
                        icon: Icons.account_circle,
                        title: 'Profile',
                        subtitle: user?.email ?? 'View and edit your profile',
                        iconColor: AppColors.primary,
                        onTap: () => context.goToProfile(),
                      ),
                      SettingsListItem(
                        icon: Icons.lock,
                        title: 'Change Password',
                        subtitle: 'Update your password',
                        iconColor: AppColors.secondary,
                        onTap: () {
                          // TODO: Implement change password
                        },
                      ),
                      SettingsListItem(
                        icon: Icons.badge,
                        title: 'Certifications',
                        subtitle: 'View your certifications',
                        iconColor: AppColors.success,
                        onTap: () {
                          // TODO: Implement certifications
                        },
                      ),
                    ],
                  ),
                ),
              ),

              // Appearance Section
              const SliverToBoxAdapter(
                child: SettingsSectionHeader(
                  title: 'Appearance',
                  icon: Icons.palette,
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spacing16,
                  ),
                  child: Column(
                    children: [
                      SettingsListItem(
                        icon: Icons.brightness_6,
                        title: 'Theme',
                        subtitle: themeMode == ThemeMode.dark
                            ? 'Dark Mode'
                            : themeMode == ThemeMode.light
                            ? 'Light Mode'
                            : 'System Default',
                        iconColor: AppColors.warning,
                        trailing: Switch(
                          value: themeMode == ThemeMode.dark,
                          onChanged: (value) {
                            ref
                                .read(themeProvider.notifier)
                                .setThemeMode(
                                  value ? ThemeMode.dark : ThemeMode.light,
                                );
                          },
                          activeThumbColor: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Notifications Section
              const SliverToBoxAdapter(
                child: SettingsSectionHeader(
                  title: 'Notifications',
                  icon: Icons.notifications,
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spacing16,
                  ),
                  child: Column(
                    children: [
                      SettingsListItem(
                        icon: Icons.notifications_active,
                        title: 'Push Notifications',
                        subtitle: 'Receive alerts and updates',
                        iconColor: AppColors.inTransit,
                        trailing: Switch(
                          value: true,
                          onChanged: (value) {
                            // TODO: Implement notification toggle
                          },
                          activeThumbColor: AppColors.primary,
                        ),
                      ),
                      SettingsListItem(
                        icon: Icons.email,
                        title: 'Email Notifications',
                        subtitle: 'Receive updates via email',
                        iconColor: AppColors.secondary,
                        trailing: Switch(
                          value: false,
                          onChanged: (value) {
                            // TODO: Implement email toggle
                          },
                          activeThumbColor: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Support Section
              const SliverToBoxAdapter(
                child: SettingsSectionHeader(
                  title: 'Support',
                  icon: Icons.help,
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spacing16,
                  ),
                  child: Column(
                    children: [
                      SettingsListItem(
                        icon: Icons.help_outline,
                        title: 'Help Center',
                        subtitle: 'Get help and support',
                        iconColor: AppColors.integrityHigh,
                        onTap: () {
                          // TODO: Implement help center
                        },
                      ),
                      SettingsListItem(
                        icon: Icons.bug_report,
                        title: 'Report an Issue',
                        subtitle: 'Tell us about problems',
                        iconColor: AppColors.critical,
                        onTap: () {
                          // TODO: Implement issue reporting
                        },
                      ),
                      SettingsListItem(
                        icon: Icons.info_outline,
                        title: 'About',
                        subtitle: 'Version $_appVersion',
                        iconColor: AppColors.textSecondary,
                        onTap: () {
                          _showAboutDialog();
                        },
                      ),
                      SettingsListItem(
                        icon: Icons.privacy_tip,
                        title: 'Privacy Policy',
                        subtitle: 'Read our privacy policy',
                        iconColor: AppColors.warning,
                        onTap: () {
                          // TODO: Open privacy policy
                        },
                      ),
                      SettingsListItem(
                        icon: Icons.description,
                        title: 'Terms of Service',
                        subtitle: 'Read our terms',
                        iconColor: AppColors.warning,
                        onTap: () {
                          // TODO: Open terms
                        },
                      ),
                      // In settings_screen.dart, add to the settings list:
                      SettingsListItem(
                        icon: Icons.sync,
                        title: 'Sync & Offline',
                        subtitle: 'Manage offline data and sync',
                        iconColor: AppColors.inTransit,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SyncSettingsScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              // Logout Button
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(AppDimensions.spacing24),
                  child: AppButton(
                    text: 'Logout',
                    onPressed: _showLogoutDialog,
                    type: AppButtonType.outline,
                    fullWidth: true,
                    icon: const Icon(Icons.logout),
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: AppDimensions.spacing40),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuickStat(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 20, color: AppColors.primary),
        const SizedBox(height: AppDimensions.spacing4),
        Text(
          value,
          style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.w700),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
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

  void _showAboutDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
        ),
        title: Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                gradient: AppGradients.primaryButton,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.medical_services_rounded,
                size: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: AppDimensions.spacing16),
            GradientText(
              'AltheaCare',
              style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
              gradient: AppGradients.primaryText,
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Diagnostic Partner Portal',
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: AppDimensions.spacing16),
            Text(
              'Version $_appVersion',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: AppDimensions.spacing8),
            Text(
              '© 2024 AltheaCare. All rights reserved.',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close', style: TextStyle(color: AppColors.primary)),
          ),
        ],
      ),
    );
  }
}
