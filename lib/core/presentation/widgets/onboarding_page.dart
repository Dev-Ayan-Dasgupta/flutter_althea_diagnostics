import 'package:flutter/material.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_shadows.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import 'gradient_text.dart';

class OnboardingPage extends StatefulWidget {
  final String title;
  final String description;
  final IconData icon;
  final Gradient gradient;
  final List<String> features;

  const OnboardingPage({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.gradient,
    required this.features,
  });

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;
  late List<Animation<Offset>> _slideAnimations;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.elasticOut),
      ),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.7, curve: Curves.easeIn),
      ),
    );

    // Create slide animations for each feature
    _slideAnimations = List.generate(
      widget.features.length,
      (index) =>
          Tween<Offset>(begin: const Offset(0.3, 0), end: Offset.zero).animate(
            CurvedAnimation(
              parent: _controller,
              curve: Interval(
                0.4 + (index * 0.1),
                0.8 + (index * 0.1),
                curve: Curves.easeOut,
              ),
            ),
          ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spacing32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Animated Icon
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                gradient: widget.gradient,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: widget.gradient.colors.first.withValues(alpha: 0.5),
                    blurRadius: 40,
                    spreadRadius: 10,
                  ),
                ],
              ),
              child: Icon(widget.icon, size: 80, color: Colors.white),
            ),
          ),

          const SizedBox(height: AppDimensions.spacing48),

          // Title
          FadeTransition(
            opacity: _fadeAnimation,
            child: GradientText(
              widget.title,
              style: AppTextStyles.h2.copyWith(fontWeight: FontWeight.w800),
              gradient: widget.gradient,
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(height: AppDimensions.spacing16),

          // Description
          FadeTransition(
            opacity: _fadeAnimation,
            child: Text(
              widget.description,
              style: AppTextStyles.bodyLarge.copyWith(
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(height: AppDimensions.spacing40),

          // Features List
          ...widget.features.asMap().entries.map((entry) {
            return SlideTransition(
              position: _slideAnimations[entry.key],
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: _buildFeatureItem(entry.value),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildFeatureItem(String feature) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppDimensions.spacing12),
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      decoration: BoxDecoration(
        gradient: AppGradients.surfaceDark,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        boxShadow: AppShadows.soft,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(AppDimensions.spacing8),
            decoration: BoxDecoration(
              gradient: widget.gradient,
              borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
            ),
            child: const Icon(Icons.check, color: Colors.white, size: 16),
          ),
          const SizedBox(width: AppDimensions.spacing16),
          Expanded(
            child: Text(
              feature,
              style: AppTextStyles.bodyMedium.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
