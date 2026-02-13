import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/gradient_text.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/app_card.dart';
import '../../../../core/presentation/widgets/status_badge.dart';
import '../../../../core/presentation/widgets/timeline_item.dart';
import '../../../../core/presentation/widgets/info_row.dart';
import '../../../../core/utils/responsive_helper.dart';
import '../../../../core/utils/navigation_extensions.dart';
import '../../../sample_integrity/domain/entities/sample_integrity_score.dart';
import '../../domain/entities/sample.dart';
import '../../domain/entities/sample_event.dart';
import '../providers/sample_providers.dart';
import 'package:intl/intl.dart';

class SampleDetailScreen extends ConsumerStatefulWidget {
  final String sampleId;

  const SampleDetailScreen({super.key, required this.sampleId});

  @override
  ConsumerState<SampleDetailScreen> createState() => _SampleDetailScreenState();
}

class _SampleDetailScreenState extends ConsumerState<SampleDetailScreen>
    with SingleTickerProviderStateMixin {
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

  Future<void> _handleRefresh() async {
    await ref.read(sampleProvider(widget.sampleId).notifier).refresh();
  }

  @override
  Widget build(BuildContext context) {
    final sampleState = ref.watch(sampleProvider(widget.sampleId));
    final deviceType = ResponsiveHelper.getDeviceType(context);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: sampleState.when(
            data: (sample) => _buildContent(sample, deviceType),
            loading: () => _buildLoadingState(),
            error: (error, stack) => _buildErrorState(error),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(Sample sample, DeviceType deviceType) {
    return Column(
      children: [
        _buildAppBar(sample),
        Expanded(
          child: RefreshIndicator(
            onRefresh: _handleRefresh,
            color: AppColors.primary,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: _buildHeader(sample)),
                SliverToBoxAdapter(child: _buildTabs()),
                SliverFillRemaining(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      _buildDetailsTab(sample),
                      _buildTimelineTab(sample),
                      _buildIntegrityTab(sample),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildActionBar(sample),
      ],
    );
  }

  Widget _buildAppBar(Sample sample) {
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
          const Spacer(),
          // Share/Export
          GestureDetector(
            onTap: () {
              // TODO: Implement share
            },
            child: Container(
              padding: const EdgeInsets.all(AppDimensions.spacing8),
              decoration: BoxDecoration(
                gradient: AppGradients.surfaceDark,
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
                boxShadow: AppShadows.soft,
              ),
              child: const Icon(Icons.share),
            ),
          ),
          const SizedBox(width: AppDimensions.spacing8),
          // More options
          GestureDetector(
            onTap: () => _showOptionsMenu(sample),
            child: Container(
              padding: const EdgeInsets.all(AppDimensions.spacing8),
              decoration: BoxDecoration(
                gradient: AppGradients.surfaceDark,
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
                boxShadow: AppShadows.soft,
              ),
              child: const Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(Sample sample) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: AppCard(
        child: Column(
          children: [
            // Vial Icon
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                gradient: AppGradients.primaryButton,
                shape: BoxShape.circle,
                boxShadow: AppShadows.primary,
              ),
              child: const Icon(Icons.science, size: 40, color: Colors.white),
            ),
            const SizedBox(height: AppDimensions.spacing16),
            GradientText(
              sample.patientName,
              style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
              gradient: AppGradients.primaryText,
            ),
            const SizedBox(height: AppDimensions.spacing4),
            Text(
              'Vial ID: ${sample.vialId}',
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: AppDimensions.spacing16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StatusBadge(
                  text: _getStatusText(sample),
                  type: _getBadgeType(sample),
                ),
              ],
            ),
          ],
        ),
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
          Tab(text: 'Details'),
          Tab(text: 'Timeline'),
          Tab(text: 'Integrity'),
        ],
      ),
    );
  }

  Widget _buildDetailsTab(Sample sample) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sample Information',
            style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          AppCard(
            child: Column(
              children: [
                InfoRow(
                  icon: Icons.fingerprint,
                  label: 'Sample ID',
                  value: '${sample.id.substring(0, 16)}...',
                ),
                const Divider(),
                InfoRow(
                  icon: Icons.badge_outlined,
                  label: 'Patient ABHA ID',
                  value: sample.patientAbhaId,
                ),
                const Divider(),
                InfoRow(
                  icon: Icons.assignment,
                  label: 'Order ID',
                  value: sample.orderId,
                ),
                const Divider(),
                InfoRow(
                  icon: Icons.calendar_today,
                  label: 'Collection Time',
                  value: DateFormat(
                    'MMM dd, yyyy - hh:mm a',
                  ).format(sample.collectionTime),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppDimensions.spacing24),
          Text(
            'Tests Ordered (${sample.testIds.length})',
            style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          AppCard(
            child: Column(
              children: sample.testIds
                  .map(
                    (testId) => Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppDimensions.spacing8,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              gradient: AppGradients.primaryButton,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: AppDimensions.spacing12),
                          Text(testId, style: AppTextStyles.bodyMedium),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          if (sample.phlebotomistName != null) ...[
            const SizedBox(height: AppDimensions.spacing24),
            Text(
              'Phlebotomist',
              style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: AppDimensions.spacing16),
            AppCard(
              child: InfoRow(
                icon: Icons.person,
                label: 'Collected By',
                value: sample.phlebotomistName!,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildTimelineTab(Sample sample) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chain of Custody',
            style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          AppCard(
            child: Column(
              children: List.generate(sample.chainOfCustody.length, (index) {
                final event = sample.chainOfCustody[index];
                return TimelineItem(
                  title: _getEventTitle(event.eventType),
                  subtitle: '${event.actorName} (${event.actorRole.name})',
                  timestamp: event.timestamp,
                  icon: _getEventIcon(event.eventType),
                  isFirst: index == 0,
                  isLast: index == sample.chainOfCustody.length - 1,
                  gradient: _getEventGradient(event.eventType),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIntegrityTab(Sample sample) {
    final score = sample.integrityScore;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Integrity Score',
            style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          AppCard(
            child: Column(
              children: [
                // Score Gauge
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Stack(
                    children: [
                      CircularProgressIndicator(
                        value: score.overallScore / 100,
                        strokeWidth: 12,
                        backgroundColor: AppColors.darkSurfaceVariant,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          _getIntegrityColor(score.level),
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${score.overallScore.toInt()}',
                              style: AppTextStyles.h1.copyWith(
                                fontSize: 48,
                                fontWeight: FontWeight.w800,
                                color: _getIntegrityColor(score.level),
                              ),
                            ),
                            Text(
                              score.level.name.toUpperCase(),
                              style: AppTextStyles.bodySmall.copyWith(
                                color: AppColors.textSecondary,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppDimensions.spacing24),
                const Divider(),
                const SizedBox(height: AppDimensions.spacing16),
                _buildIntegrityFactor(
                  'Transit Delay',
                  score.factors.transitDelayScore,
                ),
                _buildIntegrityFactor(
                  'Temperature Compliance',
                  score.factors.temperatureComplianceScore,
                ),
                _buildIntegrityFactor('Handover', score.factors.handoverScore),
                _buildIntegrityFactor(
                  'Condition',
                  score.factors.conditionScore,
                ),
                _buildIntegrityFactor(
                  'Timeliness',
                  score.factors.timelinessScore,
                ),
              ],
            ),
          ),
          if (score.alerts.isNotEmpty) ...[
            const SizedBox(height: AppDimensions.spacing24),
            Text(
              'Alerts (${score.alerts.length})',
              style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: AppDimensions.spacing16),
            ...score.alerts.map(
              (alert) => AppCard(
                child: Padding(
                  padding: const EdgeInsets.all(AppDimensions.spacing12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.warning_amber_rounded,
                        color: _getAlertColor(alert.severity),
                      ),
                      const SizedBox(width: AppDimensions.spacing12),
                      Expanded(
                        child: Text(
                          alert.message,
                          style: AppTextStyles.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildIntegrityFactor(String label, double score) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppDimensions.spacing12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label, style: AppTextStyles.bodyMedium),
              Text(
                '${score.toInt()}%',
                style: AppTextStyles.bodyMedium.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacing8),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
            child: LinearProgressIndicator(
              value: score / 100,
              minHeight: 8,
              backgroundColor: AppColors.darkSurfaceVariant,
              valueColor: AlwaysStoppedAnimation<Color>(
                score >= 80
                    ? AppColors.integrityHigh
                    : score >= 50
                    ? AppColors.integrityMedium
                    : AppColors.integrityLow,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionBar(Sample sample) {
    return Container(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      decoration: BoxDecoration(
        gradient: AppGradients.surfaceDark,
        boxShadow: AppShadows.strong,
      ),
      child: Row(
        children: [
          Expanded(
            child: AppButton(
              text: 'Cold Chain',
              onPressed: () => context.goToColdChainMonitor(sample.id),
              type: AppButtonType.outline,
              icon: const Icon(Icons.ac_unit),
            ),
          ),
          const SizedBox(width: AppDimensions.spacing12),
          Expanded(
            child: AppButton(
              text: 'Actions',
              onPressed: () => _showActionsSheet(sample),
              icon: const Icon(Icons.touch_app),
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

  Widget _buildErrorState(Object error) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: AppColors.critical),
            const SizedBox(height: AppDimensions.spacing16),
            Text('Failed to load sample', style: AppTextStyles.h4),
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
    );
  }

  void _showOptionsMenu(Sample sample) {
    // TODO: Implement options menu
  }

  void _showActionsSheet(Sample sample) {
    // TODO: Implement actions bottom sheet
  }

  String _getStatusText(Sample sample) {
    return sample.status.when(
      requested: () => 'Requested',
      assigned: (_) => 'Assigned',
      inTransit: (_, _) => 'In Transit',
      reachedLab: (_) => 'At Lab',
      processing: (_) => 'Processing',
      completed: (_, _) => 'Completed',
      rejected: (_, _, _) => 'Rejected',
      cancelled: (_, _) => 'Cancelled',
    );
  }

  BadgeType _getBadgeType(Sample sample) {
    return sample.status.when(
      requested: () => BadgeType.info,
      assigned: (_) => BadgeType.info,
      inTransit: (_, _) => BadgeType.processing,
      reachedLab: (_) => BadgeType.warning,
      processing: (_) => BadgeType.warning,
      completed: (_, _) => BadgeType.success,
      rejected: (_, _, _) => BadgeType.critical,
      cancelled: (_, _) => BadgeType.critical,
    );
  }

  Color _getIntegrityColor(IntegrityLevel level) {
    switch (level) {
      case IntegrityLevel.high:
        return AppColors.integrityHigh;
      case IntegrityLevel.medium:
        return AppColors.integrityMedium;
      case IntegrityLevel.low:
        return AppColors.integrityLow;
    }
  }

  Color _getAlertColor(AlertSeverity severity) {
    switch (severity) {
      case AlertSeverity.critical:
        return AppColors.critical;
      case AlertSeverity.warning:
        return AppColors.warning;
      case AlertSeverity.info:
        return AppColors.inTransit;
    }
  }

  String _getEventTitle(SampleEventType type) {
    switch (type) {
      case SampleEventType.collected:
        return 'Sample Collected';
      case SampleEventType.biometricVerified:
        return 'Biometric Verified';
      case SampleEventType.barcodeScanned:
        return 'Barcode Scanned';
      case SampleEventType.transitStarted:
        return 'Transit Started';
      case SampleEventType.reachedLab:
        return 'Reached Lab';
      case SampleEventType.processingStarted:
        return 'Processing Started';
      case SampleEventType.resultEntered:
        return 'Result Entered';
      case SampleEventType.pathologistSignedOff:
        return 'Signed Off';
      default:
        return type.name;
    }
  }

  IconData _getEventIcon(SampleEventType type) {
    switch (type) {
      case SampleEventType.collected:
        return Icons.content_paste;
      case SampleEventType.biometricVerified:
        return Icons.fingerprint;
      case SampleEventType.barcodeScanned:
        return Icons.qr_code_scanner;
      case SampleEventType.transitStarted:
        return Icons.local_shipping;
      case SampleEventType.reachedLab:
        return Icons.business;
      case SampleEventType.processingStarted:
        return Icons.science;
      case SampleEventType.resultEntered:
        return Icons.edit_note;
      case SampleEventType.pathologistSignedOff:
        return Icons.check_circle;
      default:
        return Icons.circle;
    }
  }

  Gradient _getEventGradient(SampleEventType type) {
    switch (type) {
      case SampleEventType.collected:
      case SampleEventType.biometricVerified:
      case SampleEventType.barcodeScanned:
        return AppGradients.primaryButton;
      case SampleEventType.transitStarted:
        return AppGradients.secondaryButton;
      case SampleEventType.reachedLab:
      case SampleEventType.processingStarted:
        return const LinearGradient(
          colors: [Color(0xFFFF9800), Color(0xFFF57C00)],
        );
      case SampleEventType.resultEntered:
      case SampleEventType.pathologistSignedOff:
        return AppGradients.success;
      default:
        return AppGradients.primaryButton;
    }
  }
}
