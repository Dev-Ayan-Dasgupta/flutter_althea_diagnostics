import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/theme/app_colors.dart';
import '../../config/theme/app_text_styles.dart';

class BarChartWidget extends StatelessWidget {
  final List<ChartBarData> data;
  final String? title;
  final double maxY;

  const BarChartWidget({
    super.key,
    required this.data,
    this.title,
    required this.maxY,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          Text(
            title!,
            style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppDimensions.spacing16),
        ],
        SizedBox(
          height: 200,
          child: BarChart(
            BarChartData(
              maxY: maxY,
              barGroups: data.asMap().entries.map((entry) {
                return BarChartGroupData(
                  x: entry.key,
                  barRods: [
                    BarChartRodData(
                      toY: entry.value.value,
                      gradient: LinearGradient(
                        colors: [
                          entry.value.color,
                          entry.value.color.withValues(alpha: 0.7),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                      width: 20,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(4),
                      ),
                    ),
                  ],
                );
              }).toList(),
              gridData: FlGridData(
                show: true,
                drawVerticalLine: false,
                horizontalInterval: maxY / 4,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                    color: AppColors.darkSurfaceVariant,
                    strokeWidth: 1,
                  );
                },
              ),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      if (value.toInt() >= 0 && value.toInt() < data.length) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            data[value.toInt()].label,
                            style: AppTextStyles.bodySmall.copyWith(
                              fontSize: 10,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 40,
                    getTitlesWidget: (value, meta) {
                      return Text(
                        value.toInt().toString(),
                        style: AppTextStyles.bodySmall.copyWith(
                          fontSize: 10,
                          color: AppColors.textSecondary,
                        ),
                      );
                    },
                  ),
                ),
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),
              borderData: FlBorderData(show: false),
              barTouchData: BarTouchData(
                touchTooltipData: BarTouchTooltipData(
                  getTooltipColor: (group) => AppColors.darkSurface,
                  getTooltipItem: (group, groupIndex, rod, rodIndex) {
                    return BarTooltipItem(
                      '${data[groupIndex].label}\n',
                      AppTextStyles.bodySmall.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(
                          text: rod.toY.toInt().toString(),
                          style: AppTextStyles.bodySmall.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ChartBarData {
  final String label;
  final double value;
  final Color color;

  ChartBarData({required this.label, required this.value, required this.color});
}
