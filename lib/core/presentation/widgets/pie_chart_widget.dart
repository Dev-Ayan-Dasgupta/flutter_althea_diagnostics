import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/theme/app_text_styles.dart';

class PieChartWidget extends StatefulWidget {
  final List<ChartPieData> data;
  final String? title;

  const PieChartWidget({super.key, required this.data, this.title});

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  int _touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null) ...[
          Text(
            widget.title!,
            style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppDimensions.spacing16),
        ],
        SizedBox(
          height: 200,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: PieChart(
                  PieChartData(
                    sections: widget.data.asMap().entries.map((entry) {
                      final isTouched = entry.key == _touchedIndex;
                      final radius = isTouched ? 65.0 : 55.0;

                      return PieChartSectionData(
                        value: entry.value.value,
                        title: '${entry.value.percentage.toStringAsFixed(1)}%',
                        radius: radius,
                        titleStyle: AppTextStyles.bodySmall.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                        gradient: LinearGradient(
                          colors: [
                            entry.value.color,
                            entry.value.color.withValues(alpha: 0.7),
                          ],
                        ),
                      );
                    }).toList(),
                    sectionsSpace: 2,
                    centerSpaceRadius: 40,
                    pieTouchData: PieTouchData(
                      touchCallback: (event, response) {
                        setState(() {
                          if (response?.touchedSection != null) {
                            _touchedIndex =
                                response!.touchedSection!.touchedSectionIndex;
                          } else {
                            _touchedIndex = -1;
                          }
                        });
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.data.map((item) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: AppDimensions.spacing8,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: item.color,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: AppDimensions.spacing8),
                          Expanded(
                            child: Text(
                              item.label,
                              style: AppTextStyles.bodySmall.copyWith(
                                fontSize: 10,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ChartPieData {
  final String label;
  final double value;
  final double percentage;
  final Color color;

  ChartPieData({
    required this.label,
    required this.value,
    required this.percentage,
    required this.color,
  });
}
