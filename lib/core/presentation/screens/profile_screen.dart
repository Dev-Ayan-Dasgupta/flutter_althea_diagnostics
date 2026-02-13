import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../features/auth/presentation/providers/auth_providers.dart';
import '../../config/design/export.dart';
import '../../config/theme/export.dart';
import '../widgets/export.dart';
import '../../utils/navigation_extensions.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);

    if (user == null) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              // App Bar
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
                      const Spacer(),
                      Text(
                        'Profile',
                        style: AppTextStyles.h4.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          // TODO: Implement edit profile
                        },
                        child: Container(
                          padding: const EdgeInsets.all(AppDimensions.spacing8),
                          decoration: BoxDecoration(
                            gradient: AppGradients.primaryButton,
                            borderRadius: BorderRadius.circular(
                              AppDimensions.radiusMedium,
                            ),
                            boxShadow: AppShadows.primary,
                          ),
                          child: const Icon(Icons.edit, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Profile Header
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(AppDimensions.spacing16),
                  child: ProfileHeader(
                    name: user.name,
                    email: user.email,
                    phoneNumber: user.phoneNumber,
                    avatarUrl: user.avatarUrl,
                  ),
                ),
              ),

              // Role Badge
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spacing16,
                  ),
                  child: Center(
                    child: StatusBadge(
                      text: user.role.name.toUpperCase(),
                      type: BadgeType.info,
                    ),
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: AppDimensions.spacing24),
              ),

              // Personal Information
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spacing16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Personal Information',
                        style: AppTextStyles.h4.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: AppDimensions.spacing12),
                      AppCard(
                        child: Column(
                          children: [
                            InfoRow(
                              icon: Icons.person,
                              label: 'Full Name',
                              value: user.name,
                            ),
                            const Divider(),
                            InfoRow(
                              icon: Icons.email,
                              label: 'Email',
                              value: user.email,
                            ),
                            if (user.phoneNumber != null) ...[
                              const Divider(),
                              InfoRow(
                                icon: Icons.phone,
                                label: 'Phone',
                                value: user.phoneNumber!,
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: AppDimensions.spacing24),
              ),

              // Lab Information
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spacing16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lab Information',
                        style: AppTextStyles.h4.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: AppDimensions.spacing12),
                      AppCard(
                        child: Column(
                          children: [
                            InfoRow(
                              icon: Icons.business,
                              label: 'Lab Name',
                              value: user.labName ?? 'Not assigned',
                            ),
                            const Divider(),
                            InfoRow(
                              icon: Icons.badge,
                              label: 'Lab ID',
                              value: user.labId,
                            ),
                            const Divider(),
                            InfoRow(
                              icon: Icons.admin_panel_settings,
                              label: 'Role',
                              value: user.role.name,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: AppDimensions.spacing24),
              ),

              // Permissions
              if (user.permissions.isNotEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDimensions.spacing16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Permissions',
                          style: AppTextStyles.h4.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: AppDimensions.spacing12),
                        AppCard(
                          child: Wrap(
                            spacing: AppDimensions.spacing8,
                            runSpacing: AppDimensions.spacing8,
                            children: user.permissions.map((permission) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: AppDimensions.spacing12,
                                  vertical: AppDimensions.spacing8,
                                ),
                                decoration: BoxDecoration(
                                  gradient: AppGradients.primaryButton.scale(
                                    0.2,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    AppDimensions.radiusSmall,
                                  ),
                                ),
                                child: Text(
                                  permission,
                                  style: AppTextStyles.bodySmall.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              const SliverToBoxAdapter(
                child: SizedBox(height: AppDimensions.spacing24),
              ),

              // Statistics
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spacing16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Activity',
                        style: AppTextStyles.h4.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: AppDimensions.spacing12),
                      AppCard(
                        child: Column(
                          children: [
                            InfoRow(
                              icon: Icons.calendar_today,
                              label: 'Member Since',
                              value: _formatDate(user.createdAt),
                            ),
                            if (user.lastLoginAt != null) ...[
                              const Divider(),
                              InfoRow(
                                icon: Icons.access_time,
                                label: 'Last Login',
                                value: _formatDate(user.lastLoginAt!),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
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

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 365) {
      return '${(difference.inDays / 365).floor()} years ago';
    } else if (difference.inDays > 30) {
      return '${(difference.inDays / 30).floor()} months ago';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} days ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hours ago';
    } else {
      return 'Just now';
    }
  }
}
