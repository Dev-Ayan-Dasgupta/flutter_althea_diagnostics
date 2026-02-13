import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../config/design/app_dimensions.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';

class TemperatureGauge extends StatefulWidget {
  final double temperature;
  final double minTemp;
  final double maxTemp;
  final double size;

  const TemperatureGauge({
    super.key,
    required this.temperature,
    this.minTemp = 2.0,
    this.maxTemp = 8.0,
    this.size = 200,
  });

  @override
  State<TemperatureGauge> createState() => _TemperatureGaugeState();
}

class _TemperatureGaugeState extends State<TemperatureGauge>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = Tween<double>(
      begin: 0,
      end: widget.temperature,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));
    _controller.forward();
  }

  @override
  void didUpdateWidget(TemperatureGauge oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.temperature != widget.temperature) {
      _animation =
          Tween<double>(
            begin: oldWidget.temperature,
            end: widget.temperature,
          ).animate(
            CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
          );
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool get _isCompliant =>
      widget.temperature >= widget.minTemp &&
      widget.temperature <= widget.maxTemp;

  Color get _color => _isCompliant ? AppColors.success : AppColors.critical;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return SizedBox(
          width: widget.size,
          height: widget.size,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Background circle
              CustomPaint(
                size: Size(widget.size, widget.size),
                painter: _GaugeBackgroundPainter(),
              ),
              // Temperature arc
              CustomPaint(
                size: Size(widget.size, widget.size),
                painter: _GaugePainter(
                  temperature: _animation.value,
                  minTemp: widget.minTemp,
                  maxTemp: widget.maxTemp,
                  color: _color,
                ),
              ),
              // Center display
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _animation.value.toStringAsFixed(1),
                        style: AppTextStyles.h1.copyWith(
                          fontSize: 48,
                          fontWeight: FontWeight.w800,
                          color: _color,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          '°C',
                          style: AppTextStyles.h4.copyWith(color: _color),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppDimensions.spacing4),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDimensions.spacing12,
                      vertical: AppDimensions.spacing4,
                    ),
                    decoration: BoxDecoration(
                      color: _color.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(
                        AppDimensions.radiusSmall,
                      ),
                    ),
                    child: Text(
                      _isCompliant ? 'COMPLIANT' : 'BREACH',
                      style: AppTextStyles.bodySmall.copyWith(
                        color: _color,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _GaugeBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 15;

    final paint = Paint()
      ..color = AppColors.darkSurfaceVariant
      ..style = PaintingStyle.stroke
      ..strokeWidth = 12
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi * 0.75,
      math.pi * 1.5,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _GaugePainter extends CustomPainter {
  final double temperature;
  final double minTemp;
  final double maxTemp;
  final Color color;

  _GaugePainter({
    required this.temperature,
    required this.minTemp,
    required this.maxTemp,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 15;

    // Temperature range: 0°C to 15°C mapped to gauge arc
    final normalizedTemp = (temperature / 15).clamp(0.0, 1.0);
    final sweepAngle = math.pi * 1.5 * normalizedTemp;

    final gradient = SweepGradient(
      colors: [color, color.withValues(alpha: 0.5)],
      startAngle: -math.pi * 0.75,
      endAngle: -math.pi * 0.75 + sweepAngle,
    );

    final paint = Paint()
      ..shader = gradient.createShader(
        Rect.fromCircle(center: center, radius: radius),
      )
      ..style = PaintingStyle.stroke
      ..strokeWidth = 12
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi * 0.75,
      sweepAngle,
      false,
      paint,
    );

    // Draw glow effect
    final glowPaint = Paint()
      ..color = color.withValues(alpha: 0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20
      ..strokeCap = StrokeCap.round
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi * 0.75,
      sweepAngle,
      false,
      glowPaint,
    );
  }

  @override
  bool shouldRepaint(_GaugePainter oldDelegate) {
    return oldDelegate.temperature != temperature || oldDelegate.color != color;
  }
}
