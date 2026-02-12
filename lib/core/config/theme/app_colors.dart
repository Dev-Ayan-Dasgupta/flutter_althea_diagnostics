import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary Colors (Maroon & Violet as requested)
  static const Color primary = Color(0xFF800020); // Maroon
  static const Color secondary = Color(0xFF8B00FF); // Violet

  // Nano Banana Design System Colors
  static const Color background = Color(0xFF121212); // Deep charcoal
  static const Color surface = Color(0xFF1E1E1E);
  static const Color surfaceVariant = Color(0xFF2A2A2A);

  static const Color success = Color(0xFFC1FF72); // Nano Banana Green
  static const Color critical = Color(0xFFFF3131); // Critical Red
  static const Color warning = Color(0xFFFFB800); // Amber warning

  // Integrity Score Colors
  static const Color integrityHigh = Color(0xFF00E676); // High confidence
  static const Color integrityMedium = Color(0xFFFFD600); // Medium
  static const Color integrityLow = Color(0xFFFF1744); // Low confidence

  // Text Colors
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFB0B0B0);
  static const Color textDisabled = Color(0xFF6A6A6A);

  // Status Colors
  static const Color inTransit = Color(0xFF2196F3);
  static const Color processing = Color(0xFFFF9800);
  static const Color completed = success;
  static const Color failed = critical;

  // Borders & Dividers
  static const Color border = Color(0xFF3A3A3A);
  static const Color divider = Color(0xFF2E2E2E);
}
