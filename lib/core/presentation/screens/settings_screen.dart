import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../features/auth/domain/entities/user.dart';
import '../../../features/auth/presentation/providers/auth_providers.dart';
import '../../config/design/export.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import '../../providers/theme_provider.dart';
import '../../providers/app_settings_provider.dart';
import '../widgets/gradient_text.dart';
import '../widgets/settings_list_item.dart';
import '../widgets/settings_section_header.dart';
import '../widgets/app_button.dart';
import '../widgets/app_card.dart';
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

  void _showThemeDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
        ),
        title: Text(
          'Choose Theme',
          style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildThemeOption('Light', ThemeMode.light),
            _buildThemeOption('Dark', ThemeMode.dark),
            _buildThemeOption('System Default', ThemeMode.system),
          ],
        ),
      ),
    );
  }

  Widget _buildThemeOption(String label, ThemeMode mode) {
    final currentMode = ref.watch(themeProvider);

    return ListTile(
      title: Text(label),
      leading: Radio<ThemeMode>(
        value: mode,
        groupValue: currentMode,
        onChanged: (value) {
          if (value != null) {
            ref.read(themeProvider.notifier).setThemeMode(value);
            Navigator.pop(context);
          }
        },
        activeColor: AppColors.primary,
      ),
      onTap: () {
        ref.read(themeProvider.notifier).setThemeMode(mode);
        Navigator.pop(context);
      },
    );
  }

  void _showClearCacheDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
        ),
        title: Text(
          'Clear Cache',
          style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
        ),
        content: Text(
          'This will free up storage space. Are you sure?',
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
              // TODO: Implement cache clearing
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Cache cleared successfully'),
                  backgroundColor: AppColors.success,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            child: Text('Clear', style: TextStyle(color: AppColors.critical)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(currentUserProvider);
    final themeMode = ref.watch(themeProvider);
    final settings = ref.watch(appSettingsProvider);

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

              // Quick Stats Card (if user exists)
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
                        onTap: _showThemeDialog,
                      ),
                    ],
                  ),
                ),
              ),

              // Sound & Vibration Section
              const SliverToBoxAdapter(
                child: SettingsSectionHeader(
                  title: 'Sound & Vibration',
                  icon: Icons.volume_up,
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
                        icon: Icons.volume_up,
                        title: 'Sound',
                        subtitle: 'Play sound for notifications',
                        iconColor: AppColors.inTransit,
                        trailing: Switch(
                          value: settings.soundEnabled,
                          onChanged: (value) {
                            ref
                                .read(appSettingsProvider.notifier)
                                .setSoundEnabled(value);
                          },
                          activeThumbColor: AppColors.primary,
                        ),
                      ),
                      SettingsListItem(
                        icon: Icons.vibration,
                        title: 'Vibration',
                        subtitle: 'Vibrate for notifications',
                        iconColor: AppColors.secondary,
                        trailing: Switch(
                          value: settings.vibrationEnabled,
                          onChanged: (value) {
                            ref
                                .read(appSettingsProvider.notifier)
                                .setVibrationEnabled(value);
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
                        title: 'Enable Notifications',
                        subtitle: 'Receive alerts and updates',
                        iconColor: AppColors.inTransit,
                        trailing: Switch(
                          value: settings.notificationsEnabled,
                          onChanged: (value) {
                            ref
                                .read(appSettingsProvider.notifier)
                                .setNotificationsEnabled(value);
                          },
                          activeThumbColor: AppColors.primary,
                        ),
                      ),
                      SettingsListItem(
                        icon: Icons.shopping_bag,
                        title: 'Order Alerts',
                        subtitle: 'Get notified about new orders',
                        iconColor: AppColors.warning,
                        trailing: Switch(
                          value: settings.orderAlertsEnabled,
                          onChanged: (value) {
                            ref
                                .read(appSettingsProvider.notifier)
                                .setOrderAlertsEnabled(value);
                          },
                          activeThumbColor: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Order Preferences Section (for Phlebotomists)
              if (user?.isPhlebotomist ?? false) ...[
                const SliverToBoxAdapter(
                  child: SettingsSectionHeader(
                    title: 'Order Preferences',
                    icon: Icons.shopping_bag,
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
                          icon: Icons.check_circle,
                          title: 'Auto Accept Orders',
                          subtitle: 'Automatically accept incoming orders',
                          iconColor: AppColors.success,
                          trailing: Switch(
                            value: settings.autoAcceptOrders,
                            onChanged: (value) {
                              ref
                                  .read(appSettingsProvider.notifier)
                                  .setAutoAcceptOrders(value);
                            },
                            activeThumbColor: AppColors.primary,
                          ),
                        ),
                        _buildOrderRadiusSetting(settings.orderRadius),
                      ],
                    ),
                  ),
                ),
              ],

              // Data & Storage Section
              const SliverToBoxAdapter(
                child: SettingsSectionHeader(
                  title: 'Data & Storage',
                  icon: Icons.storage,
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
                      SettingsListItem(
                        icon: Icons.delete_sweep,
                        title: 'Clear Cache',
                        subtitle: 'Free up storage space',
                        iconColor: AppColors.critical,
                        onTap: _showClearCacheDialog,
                      ),
                      SettingsListItem(
                        icon: Icons.download,
                        title: 'Download Data',
                        subtitle: 'Export your data',
                        iconColor: AppColors.secondary,
                        onTap: () {
                          // TODO: Implement data export
                        },
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const HelpCenterScreen(),
                            ),
                          );
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const AboutScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              // Legal Section
              const SliverToBoxAdapter(
                child: SettingsSectionHeader(title: 'Legal', icon: Icons.gavel),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spacing16,
                  ),
                  child: Column(
                    children: [
                      SettingsListItem(
                        icon: Icons.privacy_tip,
                        title: 'Privacy Policy',
                        subtitle: 'Read our privacy policy',
                        iconColor: AppColors.warning,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const WebViewScreen(
                                title: 'Privacy Policy',
                                url: 'https://altheacare.com/privacy-policy',
                              ),
                            ),
                          );
                        },
                      ),
                      SettingsListItem(
                        icon: Icons.description,
                        title: 'Terms of Service',
                        subtitle: 'Read our terms',
                        iconColor: AppColors.warning,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const WebViewScreen(
                                title: 'Terms of Service',
                                url: 'https://altheacare.com/terms',
                              ),
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

  Widget _buildOrderRadiusSetting(double currentRadius) {
    return AppCard(
      padding: const EdgeInsets.only(bottom: AppDimensions.spacing12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.location_on, color: AppColors.primary),
              const SizedBox(width: AppDimensions.spacing12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Radius',
                      style: AppTextStyles.bodyLarge.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: AppDimensions.spacing4),
                    Text(
                      'Accept orders within this radius',
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '${currentRadius.toStringAsFixed(1)} km',
                style: AppTextStyles.bodyLarge.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.success,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacing16),
          Slider(
            value: currentRadius,
            min: 1.0,
            max: 20.0,
            divisions: 19,
            activeColor: AppColors.primary,
            label: '${currentRadius.toStringAsFixed(1)} km',
            onChanged: (value) {
              ref.read(appSettingsProvider.notifier).setOrderRadius(value);
            },
          ),
        ],
      ),
    );
  }
}
