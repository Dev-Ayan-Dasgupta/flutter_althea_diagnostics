import 'package:flutter/material.dart';

class AppAnimations {
  AppAnimations._();

  // Duration
  static const Duration fast = Duration(milliseconds: 150);
  static const Duration medium = Duration(milliseconds: 300);
  static const Duration slow = Duration(milliseconds: 500);
  static const Duration verySlow = Duration(milliseconds: 800);

  // Curves
  static const curve = Curves.easeInOutCubic;
  static const curveIn = Curves.easeIn;
  static const curveOut = Curves.easeOut;
  static const curveSpring = Curves.elasticOut;
  static const curveBounce = Curves.bounceOut;
}
