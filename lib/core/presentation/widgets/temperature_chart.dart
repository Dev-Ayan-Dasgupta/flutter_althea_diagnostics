import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/theme/app_colors.dart';
import '../../config/theme/app_text_styles.dart';
import '../../../features/cold_chain/domain/entities/cold_chain_data.dart';

class TemperatureChart extends StatefulWidget {
  final List<TelemetryReading> readings;
  final double minTemp;
  final double maxTemp;

  const TemperatureChart({
    super.key,
    required this.readings,
    this.minTemp = 2.0,
    this.maxTemp = 8.0,
  });

  @override
  State<TemperatureChart> createState() => _TemperatureChartState();
}

class _TemperatureChartState extends State<TemperatureChart> {
  int? touchedIndex;

  @override
  Widget build(BuildContext context) {
    if (widget.readings.isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.only(
          right: AppDimensions.spacing16,
          top: AppDimensions.spacing16,
          bottom: AppDimensions.spacing8,
        ),
        child: LineChart(
          _buildChartData(),
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
        ),
      ),
    );
  }

  LineChartData _buildChartData() {
    final spots = widget.readings.asMap().entries.map((entry) {
      return FlSpot(entry.key.toDouble(), entry.value.temperature);
    }).toList();

    // Find min and max temperature from readings
    final temperatures = widget.readings.map((r) => r.temperature).toList();
    final minReading = temperatures.reduce((a, b) => a < b ? a : b);
    final maxReading = temperatures.reduce((a, b) => a > b ? a : b);

    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        horizontalInterval: 2,
        getDrawingHorizontalLine: (value) {
          if (value == widget.minTemp || value == widget.maxTemp) {
            return FlLine(
              color: AppColors.critical.withOpacity(0.3),
              strokeWidth: 2,
              dashArray: [5, 5],
            );
          }
          return FlLine(color: AppColors.darkSurfaceVariant, strokeWidth: 1);
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: (spots.length / 5).ceilToDouble(),
            getTitlesWidget: (value, meta) {
              if (value.toInt() >= widget.readings.length) {
                return const SizedBox.shrink();
              }
              final reading = widget.readings[value.toInt()];
              final time = DateTime.now().difference(reading.timestamp);
              return Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  '${time.inMinutes}m',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.textSecondary,
                    fontSize: 10,
                  ),
                ),
              );
            },
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 2,
            reservedSize: 42,
            getTitlesWidget: (value, meta) {
              return Text(
                '${value.toInt()}°C',
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                  fontSize: 10,
                ),
              );
            },
          ),
        ),
      ),
      borderData: FlBorderData(show: false),
      minX: 0,
      maxX: spots.length.toDouble() - 1,
      minY: (minReading - 2).floorToDouble(),
      maxY: (maxReading + 2).ceilToDouble(),
      lineBarsData: [
        LineChartBarData(
          spots: spots,
          isCurved: true,
          gradient: LinearGradient(colors: _getGradientColors()),
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
            getDotPainter: (spot, percent, barData, index) {
              final temp = spot.y;
              final isCompliant =
                  temp >= widget.minTemp && temp <= widget.maxTemp;
              return FlDotCirclePainter(
                radius: 4,
                color: isCompliant ? AppColors.success : AppColors.critical,
                strokeWidth: 2,
                strokeColor: Colors.white,
              );
            },
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: _getGradientColors()
                  .map((color) => color.withOpacity(0.2))
                  .toList(),
            ),
          ),
        ),
      ],
      lineTouchData: LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipItems: (touchedSpots) {
            return touchedSpots.map((spot) {
              final reading = widget.readings[spot.x.toInt()];
              final isCompliant =
                  reading.temperature >= widget.minTemp &&
                  reading.temperature <= widget.maxTemp;
              return LineTooltipItem(
                '${reading.temperature.toStringAsFixed(1)}°C\n',
                AppTextStyles.bodySmall.copyWith(
                  color: isCompliant ? AppColors.success : AppColors.critical,
                  fontWeight: FontWeight.w700,
                ),
                children: [
                  TextSpan(
                    text: _formatTimestamp(reading.timestamp),
                    style: AppTextStyles.bodySmall.copyWith(
                      fontSize: 10,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              );
            }).toList();
          },
        ),
      ),
    );
  }

  List<Color> _getGradientColors() {
    // Determine overall compliance
    final compliantCount = widget.readings.where((r) {
      return r.temperature >= widget.minTemp && r.temperature <= widget.maxTemp;
    }).length;

    final complianceRate = compliantCount / widget.readings.length;

    if (complianceRate >= 0.9) {
      return [AppColors.success, AppColors.integrityHigh];
    } else if (complianceRate >= 0.7) {
      return [AppColors.warning, AppColors.integrityMedium];
    } else {
      return [AppColors.critical, AppColors.integrityLow];
    }
  }

  String _formatTimestamp(DateTime timestamp) {
    final diff = DateTime.now().difference(timestamp);
    if (diff.inMinutes < 1) {
      return 'Just now';
    } else if (diff.inMinutes < 60) {
      return '${diff.inMinutes}m ago';
    } else {
      return '${diff.inHours}h ago';
    }
  }
}
