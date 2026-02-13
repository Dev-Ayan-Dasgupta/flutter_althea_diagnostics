import 'package:flutter/material.dart';

class OnboardingPageData {
  final String title;
  final String description;
  final String animation;
  final IconData icon;
  final List<Color> gradientColors;
  final List<String> features;

  OnboardingPageData({
    required this.title,
    required this.description,
    required this.animation,
    required this.icon,
    required this.gradientColors,
    required this.features,
  });
}
