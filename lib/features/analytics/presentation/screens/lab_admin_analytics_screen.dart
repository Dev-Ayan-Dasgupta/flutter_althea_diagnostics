import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/gradient_text.dart';
import '../../../../core/presentation/widgets/metric_card.dart';
import '../../../../core/presentation/widgets/bar_chart_widget.dart';
import '../../../../core/presentation/widgets/pie_chart_widget.dart';
import '../../../../core/utils/responsive_helper.dart';
import '../../../../core/utils/navigation_extensions.dart';

class LabAdminAnalyticsScreen extends ConsumerWidget {
  const LabAdminAnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceType = ResponsiveHelper.getDeviceType(context);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              _buildHeader(context),
              _buildMetrics(deviceType),
              _buildStaffPerformance(),
              _buildPayoutStats(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing16),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => context.goBack(),
              child: Container(
                padding: const EdgeInsets.all(AppDimensions.spacing8),
                decoration: BoxDecoration(
                  gradient: AppGradients.surfaceDark,
                  borderRadius: BorderRadius.circular(
                    AppDimensions.radiusMedium,
                  ),
                  boxShadow: AppShadows.soft,
                ),
                child: const Icon(Icons.arrow_back),
              ),
            ),
            const SizedBox(width: AppDimensions.spacing12),
            Expanded(
              child: GradientText(
                'Lab Analytics',
                style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
                gradient: AppGradients.primaryText,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetrics(DeviceType deviceType) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing16),
        child: GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: deviceType == DeviceType.mobile ? 2 : 4,
          crossAxisSpacing: AppDimensions.spacing12,
          mainAxisSpacing: AppDimensions.spacing12,
          childAspectRatio: 1.1,
          children: [
            MetricCard(
              title: 'Active Staff',
              value: '24',
              icon: Icons.people,
              gradient: AppGradients.primaryButton,
              showTrend: true,
              trendValue: 8.3,
            ),
            MetricCard(
              title: 'Total Payouts',
              value: '₹2.4L',
              subtitle: 'This month',
              icon: Icons.payments,
              gradient: AppGradients.success,
              showTrend: true,
              trendValue: 12.5,
            ),
            MetricCard(
              title: 'Avg Performance',
              value: '4.6',
              subtitle: 'Star rating',
              icon: Icons.star,
              gradient: AppGradients.secondaryButton,
            ),
            MetricCard(
              title: 'Collections',
              value: '1,284',
              subtitle: 'This month',
              icon: Icons.science,
              gradient: const LinearGradient(
                colors: [Color(0xFFFF9800), Color(0xFFF57C00)],
              ),
              showTrend: true,
              trendValue: 15.2,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStaffPerformance() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing16),
        child: Container(
          padding: const EdgeInsets.all(AppDimensions.spacing16),
          decoration: BoxDecoration(
            gradient: AppGradients.surfaceDark,
            borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
            boxShadow: AppShadows.medium,
          ),
          child: BarChartWidget(
            title: 'Staff Collections (Top 7)',
            maxY: 100,
            data: [
              ChartBarData(label: 'Raj', value: 92, color: AppColors.success),
              ChartBarData(label: 'Priya', value: 85, color: AppColors.success),
              ChartBarData(label: 'Amit', value: 78, color: AppColors.primary),
              ChartBarData(label: 'Neha', value: 71, color: AppColors.primary),
              ChartBarData(label: 'Sunil', value: 65, color: AppColors.primary),
              ChartBarData(label: 'Maya', value: 58, color: AppColors.warning),
              ChartBarData(label: 'Karan', value: 52, color: AppColors.warning),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPayoutStats() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing16),
        child: Container(
          padding: const EdgeInsets.all(AppDimensions.spacing16),
          decoration: BoxDecoration(
            gradient: AppGradients.surfaceDark,
            borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
            boxShadow: AppShadows.medium,
          ),
          child: PieChartWidget(
            title: 'Payout Distribution',
            data: [
              ChartPieData(
                label: 'Phlebotomists',
                value: 180000,
                percentage: 75,
                color: AppColors.primary,
              ),
              ChartPieData(
                label: 'Technicians',
                value: 40000,
                percentage: 16.7,
                color: AppColors.secondary,
              ),
              ChartPieData(
                label: 'Others',
                value: 20000,
                percentage: 8.3,
                color: AppColors.warning,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
