import 'package:flutter/material.dart';

class AppGradients {
  AppGradients._();

  // Surface gradients (low opacity)
  static const LinearGradient surfaceDark = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0x1AFFFFFF), Color(0x0DFFFFFF)],
  );

  static const LinearGradient surfaceLight = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0x1A000000), Color(0x0D000000)],
  );

  // Button gradients (high opacity)
  static const LinearGradient primaryButton = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF9B1B30), // Lighter maroon
      Color(0xFF800020), // Base maroon
      Color(0xFF650019), // Darker maroon
    ],
  );

  static const LinearGradient secondaryButton = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFA020F0), // Lighter violet
      Color(0xFF8B00FF), // Base violet
      Color(0xFF7000CC), // Darker violet
    ],
  );

  // Accent gradients
  static const LinearGradient success = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFD4FF8D), // Lighter
      Color(0xFFC1FF72), // Base
      Color(0xFFAAE85F), // Darker
    ],
  );

  static const LinearGradient critical = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFF5252), Color(0xFFFF3131), Color(0xFFE62020)],
  );

  // Background gradients
  static const LinearGradient darkBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF1A1A1A), Color(0xFF121212), Color(0xFF0A0A0A)],
  );

  static const LinearGradient lightBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFFAFAFA), Color(0xFFF5F5F5), Color(0xFFEEEEEE)],
  );

  // Text gradient
  static const LinearGradient primaryText = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFF4081), Color(0xFF800020), Color(0xFF8B00FF)],
  );

  static const LinearGradient goldText = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFD700), Color(0xFFFFAA00), Color(0xFFFF8C00)],
  );

  // Shimmer gradient for loading states
  static const LinearGradient shimmer = LinearGradient(
    begin: Alignment(-1.0, 0.0),
    end: Alignment(1.0, 0.0),
    colors: [Color(0x00FFFFFF), Color(0x33FFFFFF), Color(0x00FFFFFF)],
    stops: [0.0, 0.5, 1.0],
  );
}
