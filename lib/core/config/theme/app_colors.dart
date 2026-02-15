import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Success Colors
  static const Color successGreen = Color(0xFFC1FF72); // Nano Banana
  static const Color successGreenDark = Color(0xFF9EEB5B);

  // Warning Colors
  static const Color warningAmber = Color(0xFFFFB800); // Amber
  static const Color warningAmberDark = Color(0xFFFFA000);

  // Error Colors
  static const Color errorRed = Color(0xFFFF3131); // Critical Red
  static const Color errorRedDark = Color(0xFFFF1744);

  // Primary Colors (Maroon & Violet)
  static const Color primary = Color(0xFF800020); // Maroon
  static const Color secondary = Color(0xFF8B00FF); // Violet

  // Dark Theme Colors (Nano Banana)
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color darkSurfaceVariant = Color(0xFF2A2A2A);
  static const Color darkBorder = Color(0xFF3A3A3A);
  static const Color darkDivider = Color(0xFF2E2E2E);

  // Light Theme Colors (Clinical White)
  static const Color lightBackground = Color(0xFFF5F5F5);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurfaceVariant = Color(0xFFF0F0F0);
  static const Color lightBorder = Color(0xFFE0E0E0);
  static const Color lightDivider = Color(0xFFEEEEEE);

  // Status Colors (Same for both themes)
  static const Color success = Color(0xFFC1FF72); // Nano Banana Green
  static const Color critical = Color(0xFFFF3131); // Critical Red
  static const Color warning = Color(0xFFFFB800); // Amber warning

  // Integrity Score Colors
  static const Color integrityHigh = Color(0xFF00E676);
  static const Color integrityMedium = Color(0xFFFFD600);
  static const Color integrityLow = Color(0xFFFF1744);

  // Dark Theme Text Colors
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFB0B0B0);
  static const Color textDisabled = Color(0xFF6A6A6A);

  // Light Theme Text Colors
  static const Color lightTextPrimary = Color(0xFF1A1A1A);
  static const Color lightTextSecondary = Color(0xFF666666);
  static const Color lightTextDisabled = Color(0xFF9E9E9E);

  // Sample Status Colors
  static const Color inTransit = Color(0xFF2196F3);
  static const Color processing = Color(0xFFFF9800);
  static const Color completed = success;
  static const Color failed = critical;
}
