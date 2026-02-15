import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_shadows.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import '../widgets/gradient_text.dart';
import '../widgets/app_card.dart';
import '../../utils/navigation_extensions.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String _version = '';
  String _buildNumber = '';

  @override
  void initState() {
    super.initState();
    _loadAppInfo();
  }

  Future<void> _loadAppInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _version = info.version;
      _buildNumber = info.buildNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              _buildHeader(context),
              _buildAppInfo(),
              _buildFeatures(),
              _buildCredits(),
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
                'About',
                style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
                gradient: AppGradients.primaryText,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppInfo() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing16),
        child: AppCard(
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  gradient: AppGradients.primaryButton,
                  shape: BoxShape.circle,
                  boxShadow: AppShadows.primary,
                ),
                child: const Icon(
                  Icons.medical_services_rounded,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: AppDimensions.spacing24),
              GradientText(
                'AltheaCare',
                style: AppTextStyles.h2.copyWith(fontWeight: FontWeight.w800),
                gradient: AppGradients.primaryText,
              ),
              const SizedBox(height: AppDimensions.spacing8),
              Text(
                'Diagnostic Partner Portal',
                style: AppTextStyles.bodyLarge.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: AppDimensions.spacing16),
              Text(
                'Version $_version ($_buildNumber)',
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: AppDimensions.spacing24),
              Text(
                '© 2024 AltheaCare Technologies Pvt Ltd',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppDimensions.spacing4),
              Text(
                'All rights reserved',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatures() {
    final features = [
      _Feature(Icons.science, 'Sample Collection & Tracking'),
      _Feature(Icons.ac_unit, 'Cold Chain Monitoring'),
      _Feature(Icons.qr_code_scanner, 'Barcode Scanning'),
      _Feature(Icons.verified, 'Integrity Scoring'),
      _Feature(Icons.account_balance_wallet, 'Wallet & Earnings'),
      _Feature(Icons.analytics, 'Performance Analytics'),
    ];

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Key Features',
              style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: AppDimensions.spacing16),
            AppCard(
              child: Column(
                children: features.asMap().entries.map((entry) {
                  final isLast = entry.key == features.length - 1;
                  return Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            entry.value.icon,
                            color: AppColors.primary,
                            size: 20,
                          ),
                          const SizedBox(width: AppDimensions.spacing12),
                          Expanded(
                            child: Text(
                              entry.value.title,
                              style: AppTextStyles.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      if (!isLast) ...[
                        const SizedBox(height: AppDimensions.spacing12),
                        const Divider(),
                        const SizedBox(height: AppDimensions.spacing12),
                      ],
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCredits() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing16),
        child: AppCard(
          child: Column(
            children: [
              Text(
                'Made with ❤️ in Kolkata, India',
                style: AppTextStyles.bodyMedium.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: AppDimensions.spacing16),
              Text(
                'Powered by cutting-edge technology to revolutionize diagnostic sample management',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Feature {
  final IconData icon;
  final String title;

  _Feature(this.icon, this.title);
}
