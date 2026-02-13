import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/gradient_text.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/app_card.dart';
import '../../../../core/presentation/widgets/metric_card.dart';
import '../../../../core/presentation/widgets/bar_chart_widget.dart';
import '../../../../core/presentation/widgets/pie_chart_widget.dart';
import '../../../../core/presentation/widgets/filter_chip_custom.dart';
import '../../../../core/utils/responsive_helper.dart';
import '../../../../core/utils/navigation_extensions.dart';
import '../../domain/entities/analytics_data.dart';

// Mock provider - replace with actual implementation
final selectedReportTypeProvider = StateProvider<ReportType>(
  (ref) => ReportType.weekly,
);

class AnalyticsDashboardScreen extends ConsumerStatefulWidget {
  const AnalyticsDashboardScreen({super.key});

  @override
  ConsumerState<AnalyticsDashboardScreen> createState() =>
      _AnalyticsDashboardScreenState();
}

class _AnalyticsDashboardScreenState
    extends ConsumerState<AnalyticsDashboardScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reportType = ref.watch(selectedReportTypeProvider);
    final deviceType = ResponsiveHelper.getDeviceType(context);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(context, reportType),
              _buildTabs(),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildOverviewTab(deviceType),
                    _buildPerformanceTab(deviceType),
                    _buildQualityTab(deviceType),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, ReportType reportType) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Column(
        children: [
          Row(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GradientText(
                      'Analytics',
                      style: AppTextStyles.h3.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                      gradient: AppGradients.primaryText,
                    ),
                    Text(
                      'Performance insights',
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              // Export Button
              GestureDetector(
                onTap: () => _showExportOptions(context),
                child: Container(
                  padding: const EdgeInsets.all(AppDimensions.spacing8),
                  decoration: BoxDecoration(
                    gradient: AppGradients.primaryButton,
                    borderRadius: BorderRadius.circular(
                      AppDimensions.radiusMedium,
                    ),
                    boxShadow: AppShadows.primary,
                  ),
                  child: const Icon(Icons.file_download, color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacing16),
          // Date Range Filter
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FilterChipCustom(
                  label: 'Daily',
                  isSelected: reportType == ReportType.daily,
                  onTap: () =>
                      ref.read(selectedReportTypeProvider.notifier).state =
                          ReportType.daily,
                ),
                const SizedBox(width: AppDimensions.spacing8),
                FilterChipCustom(
                  label: 'Weekly',
                  isSelected: reportType == ReportType.weekly,
                  onTap: () =>
                      ref.read(selectedReportTypeProvider.notifier).state =
                          ReportType.weekly,
                ),
                const SizedBox(width: AppDimensions.spacing8),
                FilterChipCustom(
                  label: 'Monthly',
                  isSelected: reportType == ReportType.monthly,
                  onTap: () =>
                      ref.read(selectedReportTypeProvider.notifier).state =
                          ReportType.monthly,
                ),
                const SizedBox(width: AppDimensions.spacing8),
                FilterChipCustom(
                  label: 'Custom',
                  icon: Icons.date_range,
                  isSelected: reportType == ReportType.custom,
                  onTap: () {
                    // TODO: Show date picker
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabs() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppDimensions.spacing16),
      decoration: BoxDecoration(
        gradient: AppGradients.surfaceDark,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
      ),
      child: TabBar(
        controller: _tabController,
        indicator: BoxDecoration(
          gradient: AppGradients.primaryButton,
          borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        ),
        dividerColor: Colors.transparent,
        labelStyle: AppTextStyles.bodyMedium.copyWith(
          fontWeight: FontWeight.w600,
        ),
        tabs: const [
          Tab(text: 'Overview'),
          Tab(text: 'Performance'),
          Tab(text: 'Quality'),
        ],
      ),
    );
  }

  Widget _buildOverviewTab(DeviceType deviceType) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Key Metrics Grid
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: deviceType == DeviceType.mobile ? 2 : 4,
            crossAxisSpacing: AppDimensions.spacing12,
            mainAxisSpacing: AppDimensions.spacing12,
            childAspectRatio: 1.1,
            children: [
              MetricCard(
                title: 'Total Samples',
                value: '1,284',
                icon: Icons.science,
                gradient: AppGradients.primaryButton,
                showTrend: true,
                trendValue: 12.5,
                subtitle: '+142 this week',
              ),
              MetricCard(
                title: 'Completion Rate',
                value: '94.2%',
                icon: Icons.check_circle,
                gradient: AppGradients.success,
                showTrend: true,
                trendValue: 2.3,
              ),
              MetricCard(
                title: 'Avg TAT',
                value: '2.4h',
                icon: Icons.timer,
                gradient: AppGradients.secondaryButton,
                showTrend: true,
                trendValue: -5.1,
                subtitle: 'Target: 3h',
              ),
              MetricCard(
                title: 'TAT Breaches',
                value: '8',
                icon: Icons.warning,
                gradient: AppGradients.critical,
                showTrend: true,
                trendValue: -15.2,
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacing24),

          // Sample Trends Chart
          AppCard(
            child: BarChartWidget(
              title: 'Sample Trends (Last 7 Days)',
              maxY: 250,
              data: [
                ChartBarData(
                  label: 'Mon',
                  value: 180,
                  color: AppColors.primary,
                ),
                ChartBarData(
                  label: 'Tue',
                  value: 210,
                  color: AppColors.primary,
                ),
                ChartBarData(
                  label: 'Wed',
                  value: 195,
                  color: AppColors.primary,
                ),
                ChartBarData(
                  label: 'Thu',
                  value: 220,
                  color: AppColors.primary,
                ),
                ChartBarData(
                  label: 'Fri',
                  value: 205,
                  color: AppColors.primary,
                ),
                ChartBarData(
                  label: 'Sat',
                  value: 150,
                  color: AppColors.primary,
                ),
                ChartBarData(
                  label: 'Sun',
                  value: 124,
                  color: AppColors.primary,
                ),
              ],
            ),
          ),
          const SizedBox(height: AppDimensions.spacing24),

          // Sample Status Distribution
          AppCard(
            child: PieChartWidget(
              title: 'Sample Status Distribution',
              data: [
                ChartPieData(
                  label: 'Completed',
                  value: 1210,
                  percentage: 94.2,
                  color: AppColors.success,
                ),
                ChartPieData(
                  label: 'In Transit',
                  value: 45,
                  percentage: 3.5,
                  color: AppColors.inTransit,
                ),
                ChartPieData(
                  label: 'Rejected',
                  value: 29,
                  percentage: 2.3,
                  color: AppColors.critical,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPerformanceTab(DeviceType deviceType) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Performance Metrics
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: deviceType == DeviceType.mobile ? 2 : 4,
            crossAxisSpacing: AppDimensions.spacing12,
            mainAxisSpacing: AppDimensions.spacing12,
            childAspectRatio: 1.1,
            children: [
              MetricCard(
                title: 'TAT Compliance',
                value: '96.8%',
                icon: Icons.speed,
                gradient: AppGradients.success,
                subtitle: 'Target: 95%',
              ),
              MetricCard(
                title: 'Cold Chain',
                value: '98.2%',
                icon: Icons.ac_unit,
                gradient: const LinearGradient(
                  colors: [Color(0xFF64B5F6), Color(0xFF2196F3)],
                ),
                subtitle: 'Compliance',
              ),
              MetricCard(
                title: 'Avg Integrity',
                value: '92.5',
                icon: Icons.verified,
                gradient: AppGradients.secondaryButton,
                subtitle: 'Score',
              ),
              MetricCard(
                title: 'Critical Alerts',
                value: '3',
                icon: Icons.error,
                gradient: AppGradients.critical,
                subtitle: 'This week',
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacing24),

          // TAT Performance Chart
          AppCard(
            child: BarChartWidget(
              title: 'TAT Performance by Day',
              maxY: 4,
              data: [
                ChartBarData(
                  label: 'Mon',
                  value: 2.4,
                  color: AppColors.success,
                ),
                ChartBarData(
                  label: 'Tue',
                  value: 2.1,
                  color: AppColors.success,
                ),
                ChartBarData(
                  label: 'Wed',
                  value: 2.8,
                  color: AppColors.success,
                ),
                ChartBarData(
                  label: 'Thu',
                  value: 2.3,
                  color: AppColors.success,
                ),
                ChartBarData(
                  label: 'Fri',
                  value: 2.6,
                  color: AppColors.success,
                ),
                ChartBarData(
                  label: 'Sat',
                  value: 3.2,
                  color: AppColors.warning,
                ),
                ChartBarData(
                  label: 'Sun',
                  value: 2.9,
                  color: AppColors.success,
                ),
              ],
            ),
          ),
          const SizedBox(height: AppDimensions.spacing24),

          // Breach Analysis
          AppCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Breach Analysis',
                  style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: AppDimensions.spacing16),
                _buildBreachItem('TAT Breaches', 8, AppColors.warning),
                _buildBreachItem('Cold Chain Breaches', 3, AppColors.critical),
                _buildBreachItem('Integrity Alerts', 12, AppColors.inTransit),
                _buildBreachItem('Quality Incidents', 5, AppColors.critical),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQualityTab(DeviceType deviceType) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Quality Metrics
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: deviceType == DeviceType.mobile ? 2 : 4,
            crossAxisSpacing: AppDimensions.spacing12,
            mainAxisSpacing: AppDimensions.spacing12,
            childAspectRatio: 1.1,
            children: [
              MetricCard(
                title: 'Pre-Analytical',
                value: '95.2%',
                icon: Icons.science,
                gradient: AppGradients.success,
                subtitle: 'Quality Score',
              ),
              MetricCard(
                title: 'Collection',
                value: '97.8%',
                icon: Icons.medical_services,
                gradient: AppGradients.primaryButton,
                subtitle: 'Quality Score',
              ),
              MetricCard(
                title: 'Transport',
                value: '96.5%',
                icon: Icons.local_shipping,
                gradient: AppGradients.secondaryButton,
                subtitle: 'Quality Score',
              ),
              MetricCard(
                title: 'Incidents',
                value: '5',
                icon: Icons.report_problem,
                gradient: AppGradients.critical,
                subtitle: 'This week',
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacing24),

          // Quality Score Breakdown
          AppCard(
            child: PieChartWidget(
              title: 'Quality Score Breakdown',
              data: [
                ChartPieData(
                  label: 'Excellent (>95%)',
                  value: 1150,
                  percentage: 89.6,
                  color: AppColors.success,
                ),
                ChartPieData(
                  label: 'Good (85-95%)',
                  value: 104,
                  percentage: 8.1,
                  color: AppColors.warning,
                ),
                ChartPieData(
                  label: 'Poor (<85%)',
                  value: 30,
                  percentage: 2.3,
                  color: AppColors.critical,
                ),
              ],
            ),
          ),
          const SizedBox(height: AppDimensions.spacing24),

          // Quality Trends
          AppCard(
            child: BarChartWidget(
              title: 'Quality Trends (Last 7 Days)',
              maxY: 100,
              data: [
                ChartBarData(
                  label: 'Mon',
                  value: 95.2,
                  color: AppColors.success,
                ),
                ChartBarData(
                  label: 'Tue',
                  value: 96.8,
                  color: AppColors.success,
                ),
                ChartBarData(
                  label: 'Wed',
                  value: 94.5,
                  color: AppColors.success,
                ),
                ChartBarData(
                  label: 'Thu',
                  value: 97.1,
                  color: AppColors.success,
                ),
                ChartBarData(
                  label: 'Fri',
                  value: 96.3,
                  color: AppColors.success,
                ),
                ChartBarData(
                  label: 'Sat',
                  value: 93.8,
                  color: AppColors.success,
                ),
                ChartBarData(
                  label: 'Sun',
                  value: 95.5,
                  color: AppColors.success,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBreachItem(String label, int count, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppDimensions.spacing12),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: AppDimensions.spacing12),
          Expanded(child: Text(label, style: AppTextStyles.bodyMedium)),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.spacing12,
              vertical: AppDimensions.spacing4,
            ),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
            ),
            child: Text(
              count.toString(),
              style: AppTextStyles.bodyMedium.copyWith(
                fontWeight: FontWeight.w700,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showExportOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        decoration: BoxDecoration(
          gradient: AppGradients.darkBackground,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(AppDimensions.radiusXLarge),
          ),
        ),
        padding: const EdgeInsets.all(AppDimensions.spacing24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Export Report',
              style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppDimensions.spacing24),
            AppButton(
              text: 'Export as PDF',
              onPressed: () {
                Navigator.pop(context);
                _exportReport(ReportFormat.pdf);
              },
              fullWidth: true,
              icon: const Icon(Icons.picture_as_pdf),
            ),
            const SizedBox(height: AppDimensions.spacing12),
            AppButton(
              text: 'Export as Excel',
              onPressed: () {
                Navigator.pop(context);
                _exportReport(ReportFormat.excel);
              },
              type: AppButtonType.outline,
              fullWidth: true,
              icon: const Icon(Icons.table_chart),
            ),
            const SizedBox(height: AppDimensions.spacing12),
            AppButton(
              text: 'Export as CSV',
              onPressed: () {
                Navigator.pop(context);
                _exportReport(ReportFormat.csv);
              },
              type: AppButtonType.outline,
              fullWidth: true,
              icon: const Icon(Icons.text_snippet),
            ),
          ],
        ),
      ),
    );
  }

  void _exportReport(ReportFormat format) {
    // TODO: Implement actual export functionality
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Exporting report as ${format.name.toUpperCase()}...'),
        backgroundColor: AppColors.success,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
