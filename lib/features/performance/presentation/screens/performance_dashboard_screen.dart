import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/export.dart';
import '../../../../core/utils/responsive_helper.dart';
import '../../../../core/utils/navigation_extensions.dart';
import '../../domain/entities/performance.dart';

// Mock provider - replace with actual implementation
final performanceProvider = StateProvider<PhlebotomistPerformance?>(
  (ref) => null,
);

class PerformanceDashboardScreen extends ConsumerStatefulWidget {
  const PerformanceDashboardScreen({super.key});

  @override
  ConsumerState<PerformanceDashboardScreen> createState() =>
      _PerformanceDashboardScreenState();
}

class _PerformanceDashboardScreenState
    extends ConsumerState<PerformanceDashboardScreen>
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
    final performance = ref.watch(performanceProvider);
    final deviceType = ResponsiveHelper.getDeviceType(context);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(context),
              Expanded(
                child: performance == null
                    ? _buildLoadingState()
                    : _buildContent(performance, deviceType),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
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
            child: GradientText(
              'Performance',
              style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
              gradient: AppGradients.primaryText,
            ),
          ),
          GestureDetector(
            onTap: () {
              // TODO: Show performance insights
            },
            child: Container(
              padding: const EdgeInsets.all(AppDimensions.spacing8),
              decoration: BoxDecoration(
                gradient: AppGradients.surfaceDark,
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
                boxShadow: AppShadows.soft,
              ),
              child: const Icon(Icons.insights),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(
    PhlebotomistPerformance performance,
    DeviceType deviceType,
  ) {
    return CustomScrollView(
      slivers: [
        // Overall Rating Card
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(AppDimensions.spacing16),
            child: _buildRatingCard(performance.stats),
          ),
        ),

        // Streak Card
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.spacing16,
            ),
            child: _buildStreakCard(performance.stats.streakDays),
          ),
        ),

        const SliverToBoxAdapter(
          child: SizedBox(height: AppDimensions.spacing24),
        ),

        // Stats Grid
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.spacing16,
            ),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: deviceType == DeviceType.mobile ? 2 : 4,
              crossAxisSpacing: AppDimensions.spacing12,
              mainAxisSpacing: AppDimensions.spacing12,
              childAspectRatio: 1.1,
              children: [
                PerformanceStatCard(
                  label: 'Collections',
                  value: performance.stats.totalCollections.toString(),
                  subtitle:
                      '${performance.stats.successfulCollections} successful',
                  icon: Icons.science,
                  color: AppColors.primary,
                ),
                PerformanceStatCard(
                  label: 'Success Rate',
                  value: '${performance.stats.successRate.toStringAsFixed(1)}%',
                  icon: Icons.check_circle,
                  color: AppColors.success,
                  progress: performance.stats.successRate / 100,
                ),
                PerformanceStatCard(
                  label: 'Integrity Score',
                  value: performance.stats.averageIntegrityScore
                      .toStringAsFixed(1),
                  icon: Icons.verified,
                  color: AppColors.secondary,
                  progress: performance.stats.averageIntegrityScore / 100,
                ),
                PerformanceStatCard(
                  label: 'TAT Compliance',
                  value:
                      '${performance.stats.tatComplianceRate.toStringAsFixed(1)}%',
                  icon: Icons.timer,
                  color: AppColors.warning,
                  progress: performance.stats.tatComplianceRate / 100,
                ),
              ],
            ),
          ),
        ),

        const SliverToBoxAdapter(
          child: SizedBox(height: AppDimensions.spacing24),
        ),

        // Tabs
        SliverToBoxAdapter(child: _buildTabs()),

        // Tab Content
        SliverFillRemaining(
          child: TabBarView(
            controller: _tabController,
            children: [
              _buildAchievementsTab(performance.achievements),
              _buildReviewsTab(performance.ratings),
              _buildQualityTab(performance.quality),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRatingCard(PerformanceStats stats) {
    return AppCard(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Overall Rating',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: AppDimensions.spacing8),
                Row(
                  children: [
                    Icon(Icons.star, color: AppColors.warning, size: 40),
                    const SizedBox(width: AppDimensions.spacing8),
                    Text(
                      stats.averageRating.toStringAsFixed(1),
                      style: AppTextStyles.h1.copyWith(
                        fontSize: 48,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppDimensions.spacing8),
                Text(
                  '${stats.totalRatings} ratings',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              gradient: AppGradients.success,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColors.success.withValues(alpha: 0.4),
                  blurRadius: 20,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Center(
              child: Text(
                '${stats.successRate.toStringAsFixed(0)}%',
                style: AppTextStyles.h3.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStreakCard(int streakDays) {
    return AppCard(
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(AppDimensions.spacing16),
            decoration: BoxDecoration(
              gradient: AppGradients.goldText,
              borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
              boxShadow: [
                BoxShadow(
                  color: AppGradients.goldText.colors.first.withValues(
                    alpha: 0.4,
                  ),
                  blurRadius: 20,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: const Icon(
              Icons.local_fire_department,
              color: Colors.white,
              size: 40,
            ),
          ),
          const SizedBox(width: AppDimensions.spacing16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Current Streak',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: AppDimensions.spacing4),
                Text(
                  '$streakDays Days',
                  style: AppTextStyles.h2.copyWith(fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: AppDimensions.spacing4),
                Text(
                  'Keep collecting daily!',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.textSecondary,
                  ),
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
          Tab(text: 'Achievements'),
          Tab(text: 'Reviews'),
          Tab(text: 'Quality'),
        ],
      ),
    );
  }

  Widget _buildAchievementsTab(List<Achievement> achievements) {
    if (achievements.isEmpty) {
      return const EmptyState(
        title: 'No Achievements Yet',
        message: 'Complete collections to unlock achievements',
        icon: Icons.emoji_events,
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: AppDimensions.spacing12,
        mainAxisSpacing: AppDimensions.spacing12,
        childAspectRatio: 0.8,
      ),
      itemCount: achievements.length,
      itemBuilder: (context, index) {
        return AchievementBadge(
          achievement: achievements[index],
          onTap: () {
            _showAchievementDetails(achievements[index]);
          },
        );
      },
    );
  }

  Widget _buildReviewsTab(List<Rating> ratings) {
    if (ratings.isEmpty) {
      return const EmptyState(
        title: 'No Reviews Yet',
        message: 'Collect samples to receive reviews',
        icon: Icons.rate_review,
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      itemCount: ratings.length,
      itemBuilder: (context, index) {
        return ReviewCard(rating: ratings[index]);
      },
    );
  }

  Widget _buildQualityTab(QualityMetrics quality) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Quality Metrics',
            style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          _buildQualityMetric(
            'Integrity Score',
            quality.integrityScoreAvg,
            Icons.verified,
          ),
          _buildQualityMetric(
            'Collection Quality',
            quality.collectionQuality,
            Icons.medical_services,
          ),
          _buildQualityMetric(
            'Documentation',
            quality.documentationQuality,
            Icons.assignment,
          ),
          _buildQualityMetric(
            'Punctuality',
            quality.punctualityScore,
            Icons.schedule,
          ),
          const SizedBox(height: AppDimensions.spacing24),
          AppCard(
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppDimensions.spacing12),
                  decoration: BoxDecoration(
                    color: quality.qualityIncidents > 0
                        ? AppColors.critical.withValues(alpha: 0.2)
                        : AppColors.success.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(
                      AppDimensions.radiusSmall,
                    ),
                  ),
                  child: Icon(
                    quality.qualityIncidents > 0
                        ? Icons.warning
                        : Icons.check_circle,
                    color: quality.qualityIncidents > 0
                        ? AppColors.critical
                        : AppColors.success,
                  ),
                ),
                const SizedBox(width: AppDimensions.spacing16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Quality Incidents',
                        style: AppTextStyles.bodyMedium.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                      Text(
                        quality.qualityIncidents.toString(),
                        style: AppTextStyles.h3.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQualityMetric(String label, double value, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppDimensions.spacing12),
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      decoration: BoxDecoration(
        gradient: AppGradients.surfaceDark,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        boxShadow: AppShadows.soft,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 20, color: AppColors.textSecondary),
              const SizedBox(width: AppDimensions.spacing8),
              Text(label, style: AppTextStyles.bodyMedium),
              const Spacer(),
              Text(
                '${value.toStringAsFixed(1)}%',
                style: AppTextStyles.bodyLarge.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacing12),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
            child: LinearProgressIndicator(
              value: value / 100,
              minHeight: 8,
              backgroundColor: AppColors.darkSurfaceVariant,
              valueColor: AlwaysStoppedAnimation<Color>(
                value >= 90
                    ? AppColors.success
                    : value >= 70
                    ? AppColors.warning
                    : AppColors.critical,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingState() {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
      ),
    );
  }

  void _showAchievementDetails(Achievement achievement) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(achievement.icon, style: const TextStyle(fontSize: 64)),
            const SizedBox(height: AppDimensions.spacing16),
            Text(
              achievement.title,
              style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppDimensions.spacing8),
            Text(
              achievement.description,
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppDimensions.spacing16),
            Text(
              'Unlocked ${timeago.format(achievement.unlockedAt)}',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close', style: TextStyle(color: AppColors.primary)),
          ),
        ],
      ),
    );
  }
}
