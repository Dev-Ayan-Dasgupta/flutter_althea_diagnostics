import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/export.dart';
import '../../../../core/utils/responsive_helper.dart';
import '../../../../core/utils/navigation_extensions.dart';
import '../../domain/entities/cold_chain_data.dart';
import '../providers/cold_chain_providers.dart';

class ColdChainMonitorScreen extends ConsumerStatefulWidget {
  final String sampleId;

  const ColdChainMonitorScreen({super.key, required this.sampleId});

  @override
  ConsumerState<ColdChainMonitorScreen> createState() =>
      _ColdChainMonitorScreenState();
}

class _ColdChainMonitorScreenState extends ConsumerState<ColdChainMonitorScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  bool _isLiveMode = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _handleRefresh() async {
    await ref.read(coldChainProvider(widget.sampleId).notifier).refresh();
  }

  @override
  Widget build(BuildContext context) {
    final coldChainState = ref.watch(coldChainProvider(widget.sampleId));
    final deviceType = ResponsiveHelper.getDeviceType(context);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: Column(
            children: [
              _buildAppBar(),
              Expanded(
                child: coldChainState.when(
                  data: (data) => _buildContent(data, deviceType),
                  loading: () => _buildLoadingState(),
                  error: (error, stack) => _buildErrorState(error),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => context.goBack(),
            child: Container(
              padding: const EdgeInsets.all(AppDimensions.spacing8),
              decoration: BoxDecoration(
                gradient: AppGradients.surfaceDark,
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
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
                  'Cold Chain',
                  style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w800),
                  gradient: AppGradients.primaryText,
                ),
                Text(
                  'Temperature Monitoring',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() => _isLiveMode = !_isLiveMode);
              // TODO: Start/stop live telemetry stream based on _isLiveMode
            },
            child: LiveIndicator(isLive: _isLiveMode),
          ),
          const SizedBox(width: AppDimensions.spacing8),
          GestureDetector(
            onTap: () => context.goToColdChainLog(widget.sampleId),
            child: Container(
              padding: const EdgeInsets.all(AppDimensions.spacing8),
              decoration: BoxDecoration(
                gradient: AppGradients.primaryButton,
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
                boxShadow: AppShadows.primary,
              ),
              child: const Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(ColdChainData data, DeviceType deviceType) {
    final latestReading = data.readings.isNotEmpty ? data.readings.last : null;

    return RefreshIndicator(
      onRefresh: _handleRefresh,
      color: AppColors.primary,
      child: CustomScrollView(
        slivers: [
          // Current Temperature Gauge
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(AppDimensions.spacing16),
              child: AppCard(
                child: Column(
                  children: [
                    if (latestReading != null) ...[
                      TemperatureGauge(
                        temperature: latestReading.temperature,
                        size: deviceType == DeviceType.mobile ? 200 : 250,
                      ),
                      const SizedBox(height: AppDimensions.spacing24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildMetric(
                            'Humidity',
                            '${latestReading.humidity?.toStringAsFixed(0) ?? '--'}%',
                            Icons.water_drop,
                          ),
                          _buildMetric(
                            'Battery',
                            '${latestReading.batteryLevel ?? '--'}%',
                            Icons.battery_charging_full,
                          ),
                          if (latestReading.shockDetected != null)
                            _buildMetric(
                              'Shock',
                              latestReading.shockDetected! ? 'Yes' : 'No',
                              Icons.warning_amber,
                            ),
                        ],
                      ),
                    ] else
                      Padding(
                        padding: const EdgeInsets.all(AppDimensions.spacing32),
                        child: Text(
                          'No telemetry data available',
                          style: AppTextStyles.bodyMedium.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),

          // Compliance Overview
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.spacing16,
              ),
              child: AppCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Compliance',
                          style: AppTextStyles.h4.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppDimensions.spacing12,
                            vertical: AppDimensions.spacing8,
                          ),
                          decoration: BoxDecoration(
                            gradient: data.compliance.compliancePercentage >= 95
                                ? AppGradients.success
                                : AppGradients.critical,
                            borderRadius: BorderRadius.circular(
                              AppDimensions.radiusSmall,
                            ),
                          ),
                          child: Text(
                            '${data.compliance.compliancePercentage.toStringAsFixed(1)}%',
                            style: AppTextStyles.bodyMedium.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppDimensions.spacing16),
                    Row(
                      children: [
                        Expanded(
                          child: _buildComplianceStat(
                            'Total Readings',
                            data.compliance.totalReadings.toString(),
                            Icons.analytics,
                          ),
                        ),
                        Expanded(
                          child: _buildComplianceStat(
                            'Breaches',
                            data.compliance.breachCount.toString(),
                            Icons.warning,
                          ),
                        ),
                        Expanded(
                          child: _buildComplianceStat(
                            'Max Deviation',
                            '${data.compliance.maxDeviation.toStringAsFixed(1)}°C',
                            Icons.trending_up,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(height: AppDimensions.spacing16),
          ),

          // Tabs
          SliverToBoxAdapter(child: _buildTabs()),

          // Tab Content
          SliverFillRemaining(
            child: TabBarView(
              controller: _tabController,
              children: [_buildChartTab(data), _buildBreachesTab(data)],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMetric(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(
          icon,
          size: AppDimensions.iconLarge,
          color: AppColors.textSecondary,
        ),
        const SizedBox(height: AppDimensions.spacing8),
        Text(
          value,
          style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          label,
          style: AppTextStyles.bodySmall.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }

  Widget _buildComplianceStat(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 20, color: AppColors.textSecondary),
        const SizedBox(height: AppDimensions.spacing4),
        Text(
          value,
          style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          label,
          style: AppTextStyles.bodySmall.copyWith(
            fontSize: 10,
            color: AppColors.textSecondary,
          ),
          textAlign: TextAlign.center,
        ),
      ],
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
          Tab(icon: Icon(Icons.show_chart), text: 'Temperature'),
          Tab(icon: Icon(Icons.warning), text: 'Breaches'),
        ],
      ),
    );
  }

  Widget _buildChartTab(ColdChainData data) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Temperature History',
            style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          AppCard(
            child: data.readings.isEmpty
                ? Padding(
                    padding: const EdgeInsets.all(AppDimensions.spacing32),
                    child: Center(
                      child: Text(
                        'No temperature data available',
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ),
                  )
                : TemperatureChart(
                    readings: data.readings,
                    minTemp: 2.0,
                    maxTemp: 8.0,
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildBreachesTab(ColdChainData data) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Temperature Breaches (${data.compliance.breaches.length})',
            style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          if (data.compliance.breaches.isEmpty)
            AppCard(
              child: Padding(
                padding: const EdgeInsets.all(AppDimensions.spacing32),
                child: Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        size: 64,
                        color: AppColors.success,
                      ),
                      const SizedBox(height: AppDimensions.spacing16),
                      Text(
                        'No Breaches Detected',
                        style: AppTextStyles.h4.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: AppDimensions.spacing8),
                      Text(
                        'Temperature has been within acceptable range',
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.textSecondary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            )
          else
            ...data.compliance.breaches.map((breach) {
              return BreachCard(breach: breach);
            }),
        ],
      ),
    );
  }

  Widget _buildLoadingState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          Text(
            'Loading cold chain data...',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(Object error) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing24),
        child: AppCard(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.error_outline, size: 64, color: AppColors.critical),
              const SizedBox(height: AppDimensions.spacing16),
              Text('Failed to Load Data', style: AppTextStyles.h4),
              const SizedBox(height: AppDimensions.spacing8),
              Text(
                error.toString(),
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppDimensions.spacing24),
              AppButton(
                text: 'Retry',
                onPressed: _handleRefresh,
                icon: const Icon(Icons.refresh),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
