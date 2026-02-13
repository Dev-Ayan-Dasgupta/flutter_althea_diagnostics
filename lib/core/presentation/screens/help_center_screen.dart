import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_shadows.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import '../widgets/gradient_text.dart';
import '../widgets/app_card.dart';
import '../../utils/navigation_extensions.dart';

class HelpCenterScreen extends ConsumerWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              _buildHeader(context),
              _buildSearchBar(),
              _buildQuickActions(context),
              _buildFAQSection(),
              _buildContactSupport(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SliverToBoxAdapter(
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
                'Help Center',
                style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
                gradient: AppGradients.primaryText,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.spacing16,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.spacing16,
            vertical: AppDimensions.spacing12,
          ),
          decoration: BoxDecoration(
            gradient: AppGradients.surfaceDark,
            borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
            boxShadow: AppShadows.soft,
          ),
          child: Row(
            children: [
              Icon(Icons.search, color: AppColors.textSecondary),
              const SizedBox(width: AppDimensions.spacing12),
              Expanded(
                child: Text(
                  'Search for help...',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuickActions(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quick Actions',
              style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: AppDimensions.spacing16),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: AppDimensions.spacing12,
              mainAxisSpacing: AppDimensions.spacing12,
              childAspectRatio: 1.5,
              children: [
                _buildQuickActionCard(
                  'Getting Started',
                  Icons.rocket_launch,
                  AppGradients.primaryButton,
                  () {},
                ),
                _buildQuickActionCard(
                  'Video Tutorials',
                  Icons.play_circle,
                  AppGradients.secondaryButton,
                  () {},
                ),
                _buildQuickActionCard(
                  'Contact Support',
                  Icons.support_agent,
                  AppGradients.success,
                  () {},
                ),
                _buildQuickActionCard(
                  'Report Issue',
                  Icons.bug_report,
                  AppGradients.critical,
                  () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickActionCard(
    String title,
    IconData icon,
    Gradient gradient,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppDimensions.spacing16),
        decoration: BoxDecoration(
          gradient: AppGradients.surfaceDark,
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
          boxShadow: AppShadows.medium,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(AppDimensions.spacing12),
              decoration: BoxDecoration(
                gradient: gradient,
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
              ),
              child: Icon(icon, color: Colors.white, size: 24),
            ),
            const SizedBox(height: AppDimensions.spacing8),
            Text(
              title,
              style: AppTextStyles.bodyMedium.copyWith(
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFAQSection() {
    final faqs = [
      _FAQ(
        'How do I collect a sample?',
        'To collect a sample, scan the patient\'s QR code or enter the OTP they provide. Follow the on-screen instructions for proper collection procedures.',
      ),
      _FAQ(
        'What if cold chain temperature goes out of range?',
        'If temperature exceeds the acceptable range, you\'ll receive an immediate alert. Document the breach and contact lab management immediately.',
      ),
      _FAQ(
        'How do I request a withdrawal?',
        'Go to Wallet → Withdraw. Enter the amount and select your preferred payment method (UPI or Bank Transfer). Requests are typically processed within 24-48 hours.',
      ),
      _FAQ(
        'How are ratings calculated?',
        'Your rating is based on multiple factors including sample integrity scores, TAT compliance, collection quality, and patient feedback.',
      ),
    ];

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Frequently Asked Questions',
              style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: AppDimensions.spacing16),
            ...faqs.map((faq) => _buildFAQItem(faq)),
          ],
        ),
      ),
    );
  }

  Widget _buildFAQItem(_FAQ faq) {
    return AppCard(
      padding: const EdgeInsets.only(bottom: AppDimensions.spacing12),
      child: ExpansionTile(
        title: Text(
          faq.question,
          style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.w600),
        ),
        tilePadding: EdgeInsets.zero,
        childrenPadding: const EdgeInsets.only(bottom: AppDimensions.spacing12),
        children: [
          Text(
            faq.answer,
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactSupport() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing16),
        child: AppCard(
          child: Column(
            children: [
              Icon(Icons.headset_mic, size: 48, color: AppColors.primary),
              const SizedBox(height: AppDimensions.spacing16),
              Text(
                'Still need help?',
                style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: AppDimensions.spacing8),
              Text(
                'Our support team is available 24/7',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppDimensions.spacing24),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // TODO: Open phone dialer
                      },
                      icon: const Icon(Icons.phone),
                      label: const Text('Call'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        padding: const EdgeInsets.symmetric(
                          vertical: AppDimensions.spacing12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: AppDimensions.spacing12),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // TODO: Open email
                      },
                      icon: const Icon(Icons.email),
                      label: const Text('Email'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondary,
                        padding: const EdgeInsets.symmetric(
                          vertical: AppDimensions.spacing12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FAQ {
  final String question;
  final String answer;

  _FAQ(this.question, this.answer);
}
