import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/gradient_text.dart';
import '../../../../core/presentation/widgets/app_card.dart';
import '../../../../core/presentation/widgets/withdrawal_request_card.dart';
import '../../../../core/presentation/widgets/empty_state.dart';
import '../../../../core/presentation/widgets/filter_chip_custom.dart';
import '../../../../core/utils/navigation_extensions.dart';
import '../domain/entities/wallet.dart';

// Mock providers - replace with actual implementation
final withdrawalRequestsProvider = StateProvider<List<WithdrawalRequest>>(
  (ref) => [],
);
final selectedStatusFilterProvider = StateProvider<WithdrawalStatus?>(
  (ref) => null,
);

class PayoutManagementScreen extends ConsumerStatefulWidget {
  const PayoutManagementScreen({super.key});

  @override
  ConsumerState<PayoutManagementScreen> createState() =>
      _PayoutManagementScreenState();
}

class _PayoutManagementScreenState extends ConsumerState<PayoutManagementScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

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

  void _approveWithdrawal(WithdrawalRequest request) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
        ),
        title: Text(
          'Approve Withdrawal',
          style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Approve withdrawal of ₹${request.amount.toStringAsFixed(0)}?',
              style: AppTextStyles.bodyLarge,
            ),
            const SizedBox(height: AppDimensions.spacing16),
            Text(
              'This action cannot be undone.',
              style: AppTextStyles.bodySmall.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancel',
              style: TextStyle(color: AppColors.textSecondary),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              // TODO: Process approval
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Withdrawal approved successfully'),
                  backgroundColor: AppColors.success,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            child: Text('Approve', style: TextStyle(color: AppColors.success)),
          ),
        ],
      ),
    );
  }

  void _rejectWithdrawal(WithdrawalRequest request) {
    final reasonController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
        ),
        title: Text(
          'Reject Withdrawal',
          style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Please provide a reason for rejection:',
              style: AppTextStyles.bodyMedium,
            ),
            const SizedBox(height: AppDimensions.spacing16),
            TextField(
              controller: reasonController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Reason for rejection...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppDimensions.radiusMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancel',
              style: TextStyle(color: AppColors.textSecondary),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              // TODO: Process rejection
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Withdrawal rejected'),
                  backgroundColor: AppColors.critical,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            child: Text('Reject', style: TextStyle(color: AppColors.critical)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final requests = ref.watch(withdrawalRequestsProvider);
    final statusFilter = ref.watch(selectedStatusFilterProvider);

    final pendingRequests = requests
        .where((r) => r.status == WithdrawalStatus.pending)
        .toList();

    final totalPendingAmount = pendingRequests.fold<double>(
      0,
      (sum, request) => sum + request.amount,
    );

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(context),
              _buildStatsCard(pendingRequests.length, totalPendingAmount),
              _buildStatusFilters(statusFilter),
              _buildTabs(),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildPendingTab(pendingRequests),
                    _buildAllRequestsTab(requests, statusFilter),
                  ],
                ),
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
              'Payouts',
              style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
              gradient: AppGradients.primaryText,
            ),
          ),
          GestureDetector(
            onTap: () {
              // TODO: Show payout history
            },
            child: Container(
              padding: const EdgeInsets.all(AppDimensions.spacing8),
              decoration: BoxDecoration(
                gradient: AppGradients.surfaceDark,
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
                boxShadow: AppShadows.soft,
              ),
              child: const Icon(Icons.history),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsCard(int pendingCount, double pendingAmount) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDimensions.spacing16),
      child: AppCard(
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pending Approvals',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: AppDimensions.spacing8),
                  Text(
                    pendingCount.toString(),
                    style: AppTextStyles.h2.copyWith(
                      fontWeight: FontWeight.w800,
                      color: AppColors.warning,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 1,
              height: 50,
              color: AppColors.darkSurfaceVariant,
            ),
            const SizedBox(width: AppDimensions.spacing16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Amount',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: AppDimensions.spacing8),
                  Text(
                    '₹${pendingAmount.toStringAsFixed(0)}',
                    style: AppTextStyles.h2.copyWith(
                      fontWeight: FontWeight.w800,
                      color: AppColors.success,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusFilters(WithdrawalStatus? selectedStatus) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing16,
        vertical: AppDimensions.spacing12,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          FilterChipCustom(
            label: 'All',
            isSelected: selectedStatus == null,
            onTap: () {
              ref.read(selectedStatusFilterProvider.notifier).state = null;
            },
          ),
          const SizedBox(width: AppDimensions.spacing8),
          FilterChipCustom(
            label: 'Pending',
            isSelected: selectedStatus == WithdrawalStatus.pending,
            onTap: () {
              ref.read(selectedStatusFilterProvider.notifier).state =
                  WithdrawalStatus.pending;
            },
          ),
          const SizedBox(width: AppDimensions.spacing8),
          FilterChipCustom(
            label: 'Processing',
            isSelected: selectedStatus == WithdrawalStatus.processing,
            onTap: () {
              ref.read(selectedStatusFilterProvider.notifier).state =
                  WithdrawalStatus.processing;
            },
          ),
          const SizedBox(width: AppDimensions.spacing8),
          FilterChipCustom(
            label: 'Completed',
            isSelected: selectedStatus == WithdrawalStatus.completed,
            onTap: () {
              ref.read(selectedStatusFilterProvider.notifier).state =
                  WithdrawalStatus.completed;
            },
          ),
          const SizedBox(width: AppDimensions.spacing8),
          FilterChipCustom(
            label: 'Rejected',
            isSelected: selectedStatus == WithdrawalStatus.rejected,
            onTap: () {
              ref.read(selectedStatusFilterProvider.notifier).state =
                  WithdrawalStatus.rejected;
            },
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
          Tab(text: 'Pending'),
          Tab(text: 'All Requests'),
        ],
      ),
    );
  }

  Widget _buildPendingTab(List<WithdrawalRequest> requests) {
    if (requests.isEmpty) {
      return const EmptyState(
        title: 'No Pending Requests',
        message: 'All withdrawal requests have been processed',
        icon: Icons.check_circle_outline,
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      itemCount: requests.length,
      itemBuilder: (context, index) {
        final request = requests[index];
        return WithdrawalRequestCard(
          request: request,
          staffName: _getStaffName(request.userId),
          onApprove: () => _approveWithdrawal(request),
          onReject: () => _rejectWithdrawal(request),
        );
      },
    );
  }

  Widget _buildAllRequestsTab(
    List<WithdrawalRequest> requests,
    WithdrawalStatus? statusFilter,
  ) {
    var filteredRequests = requests;

    if (statusFilter != null) {
      filteredRequests = requests
          .where((r) => r.status == statusFilter)
          .toList();
    }

    if (filteredRequests.isEmpty) {
      return const EmptyState(
        title: 'No Requests Found',
        message: 'No withdrawal requests match your filter',
        icon: Icons.search_off,
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      itemCount: filteredRequests.length,
      itemBuilder: (context, index) {
        final request = filteredRequests[index];
        return WithdrawalRequestCard(
          request: request,
          staffName: _getStaffName(request.userId),
          onApprove: request.status == WithdrawalStatus.pending
              ? () => _approveWithdrawal(request)
              : null,
          onReject: request.status == WithdrawalStatus.pending
              ? () => _rejectWithdrawal(request)
              : null,
          onViewDetails: () {
            // TODO: Show detailed view
          },
        );
      },
    );
  }

  String _getStaffName(String userId) {
    // TODO: Fetch from staff list
    return 'Staff Member';
  }
}
