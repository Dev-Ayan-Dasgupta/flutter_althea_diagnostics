import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_animations.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/gradient_text.dart';
import '../../../../core/presentation/widgets/stats_card.dart';
import '../../../../core/presentation/widgets/status_badge.dart';
import '../../../../core/presentation/widgets/alert_card.dart';
import '../../../../core/presentation/widgets/mini_chart.dart';
import '../../../../core/presentation/widgets/app_card.dart';
import '../../../../core/utils/responsive_helper.dart';
import '../../../../core/utils/navigation_extensions.dart';
import '../../../analytics/presentation/screens/analytics_dashboard_screen.dart';
import '../../../auth/presentation/providers/auth_providers.dart';
import '../../domain/entities/lab_pulse.dart';
import '../providers/dashboard_providers.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen>
    with TickerProviderStateMixin {
  late AnimationController _refreshController;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _refreshController = AnimationController(
      vsync: this,
      duration: AppAnimations.slow,
    );
    _rotationAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _refreshController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  Future<void> _handleRefresh() async {
    _refreshController.repeat();
    await ref.read(labPulseProvider.notifier).refresh();
    _refreshController.reset();
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(currentUserProvider);
    final labPulseState = ref.watch(labPulseProvider);
    final deviceType = ResponsiveHelper.getDeviceType(context);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: _handleRefresh,
            color: AppColors.primary,
            child: CustomScrollView(
              slivers: [
                // App Bar
                SliverToBoxAdapter(
                  child: _buildAppBar(context, user?.name ?? 'Partner'),
                ),

                // Content
                SliverPadding(
                  padding: EdgeInsets.all(
                    deviceType == DeviceType.mobile
                        ? AppDimensions.spacing16
                        : AppDimensions.spacing24,
                  ),
                  sliver: labPulseState.when(
                    data: (pulse) => _buildContent(context, pulse, deviceType),
                    loading: () =>
                        SliverToBoxAdapter(child: _buildLoadingState()),
                    error: (error, stack) =>
                        SliverToBoxAdapter(child: _buildErrorState(error)),
                  ),
                ),

                // In dashboard_screen.dart, add a card for quick analytics access:
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, String userName) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back,',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: AppDimensions.spacing4),
                GradientText(
                  userName,
                  style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
                  gradient: AppGradients.primaryText,
                ),
              ],
            ),
          ),
          // Refresh Button
          RotationTransition(
            turns: _rotationAnimation,
            child: GestureDetector(
              onTap: _handleRefresh,
              child: Container(
                padding: const EdgeInsets.all(AppDimensions.spacing12),
                decoration: BoxDecoration(
                  gradient: AppGradients.surfaceDark,
                  borderRadius: BorderRadius.circular(
                    AppDimensions.radiusMedium,
                  ),
                  boxShadow: AppShadows.soft,
                ),
                child: const Icon(
                  Icons.refresh,
                  size: AppDimensions.iconMedium,
                ),
              ),
            ),
          ),
          const SizedBox(width: AppDimensions.spacing12),
          // Profile Avatar
          GestureDetector(
            onTap: () => context.goToProfile(),
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                gradient: AppGradients.primaryButton,
                shape: BoxShape.circle,
                boxShadow: AppShadows.primary,
              ),
              child: Center(
                child: Text(
                  userName.substring(0, 1).toUpperCase(),
                  style: AppTextStyles.h4.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          // Notification Bell
          GestureDetector(
            onTap: () => context.goToNotifications(),
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppDimensions.spacing12),
                  decoration: BoxDecoration(
                    gradient: AppGradients.surfaceDark,
                    borderRadius: BorderRadius.circular(
                      AppDimensions.radiusMedium,
                    ),
                    boxShadow: AppShadows.soft,
                  ),
                  child: const Icon(
                    Icons.notifications_outlined,
                    size: AppDimensions.iconMedium,
                  ),
                ),
                // Unread badge
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      gradient: AppGradients.critical,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: AppDimensions.spacing12),
        ],
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    LabPulse pulse,
    DeviceType deviceType,
  ) {
    return SliverList(
      delegate: SliverChildListDelegate([
        // Stats Grid
        _buildStatsGrid(pulse, deviceType),

        const SizedBox(height: AppDimensions.spacing24),

        // TAT Alerts Section
        _buildSectionHeader('TAT Alerts', Icons.alarm, pulse.tatAlerts.length),
        const SizedBox(height: AppDimensions.spacing12),
        _buildTatAlerts(pulse.tatAlerts),

        const SizedBox(height: AppDimensions.spacing24),

        // Trends Section
        _buildSectionHeader('Sample Trends', Icons.trending_up, null),
        const SizedBox(height: AppDimensions.spacing12),
        _buildTrendsCard(pulse.trends),

        const SizedBox(height: AppDimensions.spacing24),

        // Lab Capacity
        _buildSectionHeader('Lab Capacity', Icons.business, null),
        const SizedBox(height: AppDimensions.spacing12),
        _buildCapacityCard(pulse.capacity),

        const SizedBox(height: AppDimensions.spacing24),

        _buildAnalyticsCard(context),

        const SizedBox(height: AppDimensions.spacing40),
      ]),
    );
  }

  AppCard _buildAnalyticsCard(BuildContext context) {
    return AppCard(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const AnalyticsDashboardScreen()),
        );
      },
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(AppDimensions.spacing12),
            decoration: BoxDecoration(
              gradient: AppGradients.secondaryButton,
              borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
            ),
            child: const Icon(Icons.analytics, color: Colors.white),
          ),
          const SizedBox(width: AppDimensions.spacing16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'View Analytics',
                  style: AppTextStyles.bodyLarge.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Detailed insights & reports',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: AppColors.textSecondary,
          ),
        ],
      ),
    );
  }

  Widget _buildStatsGrid(LabPulse pulse, DeviceType deviceType) {
    final crossAxisCount = deviceType == DeviceType.mobile ? 2 : 4;

    final stats = [
      _StatData(
        title: 'In Transit',
        value: pulse.samplesInTransit.toString(),
        subtitle: 'Active samples',
        icon: Icons.local_shipping_outlined,
        gradient: AppGradients.secondaryButton,
      ),
      _StatData(
        title: 'Processing',
        value: pulse.samplesProcessing.toString(),
        subtitle: 'Under analysis',
        icon: Icons.science_outlined,
        gradient: const LinearGradient(
          colors: [Color(0xFFFF9800), Color(0xFFF57C00)],
        ),
      ),
      _StatData(
        title: 'Completed',
        value: pulse.samplesCompleted.toString(),
        subtitle: 'Today',
        icon: Icons.check_circle_outline,
        gradient: AppGradients.success,
      ),
      _StatData(
        title: 'Rejected',
        value: pulse.samplesRejected.toString(),
        subtitle: 'Requires attention',
        icon: Icons.error_outline,
        gradient: AppGradients.critical,
      ),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: AppDimensions.spacing12,
        mainAxisSpacing: AppDimensions.spacing12,
        childAspectRatio: 1.1,
      ),
      itemCount: stats.length,
      itemBuilder: (context, index) {
        final stat = stats[index];
        return StatsCard(
          title: stat.title,
          value: stat.value,
          subtitle: stat.subtitle,
          icon: stat.icon,
          gradient: stat.gradient,
          onTap: () {
            // Navigate to samples filtered by status
            context.push('/samples');
          },
        );
      },
    );
  }

  Widget _buildSectionHeader(String title, IconData icon, int? count) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(AppDimensions.spacing8),
          decoration: BoxDecoration(
            gradient: AppGradients.primaryButton,
            borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
          ),
          child: Icon(
            icon,
            size: AppDimensions.iconMedium,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: AppDimensions.spacing12),
        Text(
          title,
          style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
        ),
        if (count != null) ...[
          const SizedBox(width: AppDimensions.spacing8),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.spacing8,
              vertical: AppDimensions.spacing4,
            ),
            decoration: BoxDecoration(
              gradient: AppGradients.critical.scale(0.3),
              borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
            ),
            child: Text(
              count.toString(),
              style: AppTextStyles.bodySmall.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildTatAlerts(List<TatAlert> alerts) {
    if (alerts.isEmpty) {
      return _buildEmptyState(
        'No TAT alerts',
        'All samples are within turnaround time',
        Icons.check_circle_outline,
      );
    }

    return Column(
      children: alerts.map((alert) {
        final severity = alert.severity;
        final gradient = severity == TatSeverity.critical
            ? AppGradients.critical
            : severity == TatSeverity.amber
            ? const LinearGradient(
                colors: [Color(0xFFFFD600), Color(0xFFFFB800)],
              )
            : AppGradients.success;

        return AlertCard(
          title: alert.testName,
          message: 'Sample ID: ${alert.sampleId.substring(0, 8)}...',
          time: '${alert.remainingMinutes}m left',
          icon: Icons.timer,
          gradient: gradient,
          onTap: () {
            context.goToSampleDetail(alert.sampleId);
          },
        );
      }).toList(),
    );
  }

  Widget _buildTrendsCard(List<SampleTrendData> trends) {
    // Extract data for chart
    final inTransitData = trends.map((t) => t.inTransit.toDouble()).toList();
    final processingData = trends.map((t) => t.processing.toDouble()).toList();

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            gradient: AppGradients.secondaryButton,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: AppDimensions.spacing8),
                        Text('In Transit', style: AppTextStyles.bodySmall),
                      ],
                    ),
                    const SizedBox(height: AppDimensions.spacing4),
                    Text(
                      trends.last.inTransit.toString(),
                      style: AppTextStyles.h3.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: MiniChart(
                  data: inTransitData,
                  gradient: AppGradients.secondaryButton,
                  height: 60,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacing20),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 12,
                          height: 12,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFFF9800), Color(0xFFF57C00)],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: AppDimensions.spacing8),
                        Text('Processing', style: AppTextStyles.bodySmall),
                      ],
                    ),
                    const SizedBox(height: AppDimensions.spacing4),
                    Text(
                      trends.last.processing.toString(),
                      style: AppTextStyles.h3.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: MiniChart(
                  data: processingData,
                  gradient: const LinearGradient(
                    colors: [Color(0xFFFF9800), Color(0xFFF57C00)],
                  ),
                  height: 60,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCapacityCard(LabCapacity capacity) {
    final utilizationPercentage = capacity.utilizationPercentage;
    final isHighLoad = utilizationPercentage > 80;

    return AppCard(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Current Load',
                style: AppTextStyles.bodyLarge.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              StatusBadge(
                text: isHighLoad ? 'High' : 'Normal',
                type: isHighLoad ? BadgeType.critical : BadgeType.success,
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacing16),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${capacity.currentLoad}/${capacity.maxCapacity}',
                      style: AppTextStyles.h2.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: AppDimensions.spacing4),
                    Text(
                      'Samples in lab',
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 80,
                height: 80,
                child: Stack(
                  children: [
                    CircularProgressIndicator(
                      value: utilizationPercentage / 100,
                      strokeWidth: 8,
                      backgroundColor: AppColors.darkSurfaceVariant,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        isHighLoad ? AppColors.critical : AppColors.success,
                      ),
                    ),
                    Center(
                      child: Text(
                        '${utilizationPercentage.toInt()}%',
                        style: AppTextStyles.bodyLarge.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacing20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCapacityStat(
                'Analyzers Active',
                '${capacity.availableAnalyzers}/${capacity.totalAnalyzers}',
                Icons.precision_manufacturing_outlined,
              ),
              _buildCapacityStat(
                'Utilization',
                '${utilizationPercentage.toInt()}%',
                Icons.pie_chart_outline,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCapacityStat(String label, String value, IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          size: AppDimensions.iconMedium,
          color: AppColors.textSecondary,
        ),
        const SizedBox(width: AppDimensions.spacing8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            Text(
              value,
              style: AppTextStyles.bodyMedium.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildEmptyState(String title, String message, IconData icon) {
    return AppCard(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(AppDimensions.spacing20),
            decoration: BoxDecoration(
              gradient: AppGradients.success.scale(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 48, color: AppColors.success),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          Text(
            title,
            style: AppTextStyles.bodyLarge.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: AppDimensions.spacing4),
          Text(
            message,
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing64),
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
        ),
      ),
    );
  }

  Widget _buildErrorState(Object error) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing24),
        child: AppCard(
          child: Column(
            children: [
              Icon(Icons.error_outline, size: 64, color: AppColors.critical),
              const SizedBox(height: AppDimensions.spacing16),
              Text(
                'Failed to load dashboard',
                style: AppTextStyles.bodyLarge.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: AppDimensions.spacing8),
              Text(
                error.toString(),
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatData {
  final String title;
  final String value;
  final String subtitle;
  final IconData icon;
  final Gradient gradient;

  _StatData({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.icon,
    required this.gradient,
  });
}
