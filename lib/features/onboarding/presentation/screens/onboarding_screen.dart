import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/config/design/export.dart';
import '../../../../core/presentation/widgets/export.dart';
import '../../../../core/utils/navigation_extensions.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<_OnboardingData> _pages = [
    _OnboardingData(
      title: 'Lab Pulse Dashboard',
      description:
          'Monitor all samples in real-time with comprehensive insights',
      icon: Icons.dashboard,
      gradient: AppGradients.primaryButton,
      features: [
        'Real-time sample tracking',
        'TAT alerts and monitoring',
        'Lab capacity overview',
        'Performance metrics',
      ],
    ),
    _OnboardingData(
      title: 'Sample Intelligence',
      description: 'Advanced integrity scoring and quality assurance',
      icon: Icons.verified,
      gradient: AppGradients.secondaryButton,
      features: [
        'Automated integrity scoring',
        'Pre-analytical risk assessment',
        'Chain of custody tracking',
        'Quality alerts',
      ],
    ),
    _OnboardingData(
      title: 'Cold Chain Monitoring',
      description: 'Ensure sample integrity with temperature tracking',
      icon: Icons.ac_unit,
      gradient: const LinearGradient(
        colors: [Color(0xFF64B5F6), Color(0xFF2196F3)],
      ),
      features: [
        'Real-time temperature monitoring',
        'Breach detection and alerts',
        'Compliance tracking',
        'Historical data analysis',
      ],
    ),
    _OnboardingData(
      title: 'Seamless Collection',
      description: 'Efficient sample collection with barcode scanning',
      icon: Icons.qr_code_scanner,
      gradient: AppGradients.success,
      features: [
        'Quick barcode scanning',
        'Biometric verification',
        'GPS location tracking',
        'Photo documentation',
      ],
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: AppAnimations.slow,
        curve: AppAnimations.curve,
      );
    } else {
      _completeOnboarding();
    }
  }

  void _skipOnboarding() {
    _completeOnboarding();
  }

  Future<void> _completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_completed', true);

    if (mounted) {
      // Navigate to permissions screen first
      context.goToPermissions();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: Column(
            children: [
              // Skip Button
              Padding(
                padding: const EdgeInsets.all(AppDimensions.spacing16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (_currentPage < _pages.length - 1)
                      AppButton(
                        text: 'Skip',
                        onPressed: _skipOnboarding,
                        type: AppButtonType.text,
                      ),
                  ],
                ),
              ),

              // Pages
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: _pages.length,
                  itemBuilder: (context, index) {
                    final page = _pages[index];
                    return OnboardingPage(
                      title: page.title,
                      description: page.description,
                      icon: page.icon,
                      gradient: page.gradient,
                      features: page.features,
                    );
                  },
                ),
              ),

              // Indicator and Navigation
              Padding(
                padding: const EdgeInsets.all(AppDimensions.spacing32),
                child: Column(
                  children: [
                    PageIndicator(
                      currentPage: _currentPage,
                      pageCount: _pages.length,
                      activeGradient: _pages[_currentPage].gradient,
                    ),
                    const SizedBox(height: AppDimensions.spacing32),
                    Row(
                      children: [
                        if (_currentPage > 0)
                          Expanded(
                            child: AppButton(
                              text: 'Back',
                              onPressed: () {
                                _pageController.previousPage(
                                  duration: AppAnimations.slow,
                                  curve: AppAnimations.curve,
                                );
                              },
                              type: AppButtonType.outline,
                              icon: const Icon(Icons.arrow_back),
                            ),
                          ),
                        if (_currentPage > 0)
                          const SizedBox(width: AppDimensions.spacing12),
                        Expanded(
                          flex: _currentPage == 0 ? 1 : 1,
                          child: AppButton(
                            text: _currentPage == _pages.length - 1
                                ? 'Get Started'
                                : 'Next',
                            onPressed: _nextPage,
                            fullWidth: true,
                            size: AppButtonSize.large,
                            icon: Icon(
                              _currentPage == _pages.length - 1
                                  ? Icons.check_circle
                                  : Icons.arrow_forward,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OnboardingData {
  final String title;
  final String description;
  final IconData icon;
  final Gradient gradient;
  final List<String> features;

  _OnboardingData({
    required this.title,
    required this.description,
    required this.icon,
    required this.gradient,
    required this.features,
  });
}
