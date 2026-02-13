import 'package:flutter/material.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_animations.dart';

class PageIndicator extends StatelessWidget {
  final int currentPage;
  final int pageCount;
  final Gradient activeGradient;

  const PageIndicator({
    super.key,
    required this.currentPage,
    required this.pageCount,
    this.activeGradient = AppGradients.primaryButton,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pageCount,
        (index) => AnimatedContainer(
          duration: AppAnimations.medium,
          curve: AppAnimations.curve,
          width: currentPage == index ? 32 : 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            gradient: currentPage == index
                ? activeGradient
                : LinearGradient(
                    colors: [
                      Colors.white.withValues(alpha: 0.3),
                      Colors.white.withValues(alpha: 0.2),
                    ],
                  ),
            borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
          ),
        ),
      ),
    );
  }
}
