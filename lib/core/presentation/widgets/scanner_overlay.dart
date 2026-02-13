import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../config/design/app_dimensions.dart';
import '../../config/theme/app_colors.dart';

class ScannerOverlay extends StatefulWidget {
  final String? message;
  final double scanAreaSize;

  const ScannerOverlay({super.key, this.message, this.scanAreaSize = 250});

  @override
  State<ScannerOverlay> createState() => _ScannerOverlayState();
}

class _ScannerOverlayState extends State<ScannerOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Dark overlay
        ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.black.withValues(alpha: 0.7),
            BlendMode.srcOut,
          ),
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  backgroundBlendMode: BlendMode.dstOut,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: widget.scanAreaSize,
                  height: widget.scanAreaSize,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      AppDimensions.radiusLarge,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        // Scan area border
        Center(
          child: Container(
            width: widget.scanAreaSize,
            height: widget.scanAreaSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
              border: Border.all(color: AppColors.primary, width: 3),
            ),
            child: Stack(
              children: [
                // Corner decorations
                _buildCorner(Alignment.topLeft, 0, 0),
                _buildCorner(Alignment.topRight, 0, math.pi / 2),
                _buildCorner(Alignment.bottomLeft, 0, -math.pi / 2),
                _buildCorner(Alignment.bottomRight, 0, math.pi),

                // Scanning line
                AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return Positioned(
                      top: widget.scanAreaSize * _animation.value - 2,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 4,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              AppColors.primary,
                              Colors.transparent,
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primary.withValues(alpha: 0.5),
                              blurRadius: 8,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),

        // Message
        if (widget.message != null)
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: AppDimensions.spacing32,
              ),
              padding: const EdgeInsets.all(AppDimensions.spacing16),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.8),
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
              ),
              child: Text(
                widget.message!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildCorner(
    Alignment alignment,
    double startAngle,
    double sweepAngle,
  ) {
    return Align(
      alignment: alignment,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.success, width: 4),
          borderRadius: BorderRadius.only(
            topLeft: alignment == Alignment.topLeft
                ? Radius.circular(AppDimensions.radiusLarge)
                : Radius.zero,
            topRight: alignment == Alignment.topRight
                ? Radius.circular(AppDimensions.radiusLarge)
                : Radius.zero,
            bottomLeft: alignment == Alignment.bottomLeft
                ? Radius.circular(AppDimensions.radiusLarge)
                : Radius.zero,
            bottomRight: alignment == Alignment.bottomRight
                ? Radius.circular(AppDimensions.radiusLarge)
                : Radius.zero,
          ),
        ),
      ),
    );
  }
}
