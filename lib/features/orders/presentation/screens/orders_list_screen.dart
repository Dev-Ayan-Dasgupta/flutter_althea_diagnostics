import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/gradient_text.dart';
import '../../../../core/presentation/widgets/app_card.dart';
import '../../../../core/presentation/widgets/order_card.dart';
import '../../../../core/presentation/widgets/empty_state.dart';
import '../../domain/entities/order.dart';
import 'order_tracking_screen.dart';

// Mock provider - replace with actual implementation
final ordersProvider = StateProvider<List<CollectionOrder>>((ref) => []);
final selectedOrderStatusProvider = StateProvider<OrderStatus?>((ref) => null);

class OrdersListScreen extends ConsumerStatefulWidget {
  const OrdersListScreen({super.key});

  @override
  ConsumerState<OrdersListScreen> createState() => _OrdersListScreenState();
}

class _OrdersListScreenState extends ConsumerState<OrdersListScreen>
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

  void _acceptOrder(CollectionOrder order) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
        ),
        title: Text(
          'Accept Order',
          style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
        ),
        content: Text(
          'Accept collection request from ${order.patientName}?',
          style: AppTextStyles.bodyMedium,
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
              // TODO: Accept order
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Order accepted'),
                  backgroundColor: AppColors.success,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            child: Text('Accept', style: TextStyle(color: AppColors.success)),
          ),
        ],
      ),
    );
  }

  void _rejectOrder(CollectionOrder order) {
    final reasonController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
        ),
        title: Text(
          'Reject Order',
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
                hintText: 'Reason...',
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
              // TODO: Reject order
            },
            child: Text('Reject', style: TextStyle(color: AppColors.critical)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final orders = ref.watch(ordersProvider);

    final pendingOrders = orders
        .where((o) => o.status == OrderStatus.pending)
        .toList();
    final activeOrders = orders
        .where(
          (o) =>
              o.status == OrderStatus.accepted ||
              o.status == OrderStatus.onTheWay ||
              o.status == OrderStatus.arrived ||
              o.status == OrderStatus.collectionInProgress,
        )
        .toList();
    final completedOrders = orders
        .where(
          (o) =>
              o.status == OrderStatus.collectionCompleted ||
              o.status == OrderStatus.delivered,
        )
        .toList();

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(context, pendingOrders.length),
              _buildStatsCard(pendingOrders.length, activeOrders.length),
              _buildTabs(),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildPendingTab(pendingOrders),
                    _buildActiveTab(activeOrders),
                    _buildCompletedTab(completedOrders),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, int pendingCount) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GradientText(
                  'Orders',
                  style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
                  gradient: AppGradients.primaryText,
                ),
                Text(
                  'Manage collection requests',
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          if (pendingCount > 0)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.spacing12,
                vertical: AppDimensions.spacing8,
              ),
              decoration: BoxDecoration(
                gradient: AppGradients.critical,
                borderRadius: BorderRadius.circular(AppDimensions.radiusRound),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.critical.withValues(alpha: 0.4),
                    blurRadius: 12,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.notifications_active,
                    color: Colors.white,
                    size: 16,
                  ),
                  const SizedBox(width: AppDimensions.spacing4),
                  Text(
                    pendingCount.toString(),
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildStatsCard(int pending, int active) {
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
                    'Pending',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: AppDimensions.spacing8),
                  Text(
                    pending.toString(),
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
                    'Active',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: AppDimensions.spacing8),
                  Text(
                    active.toString(),
                    style: AppTextStyles.h2.copyWith(
                      fontWeight: FontWeight.w800,
                      color: AppColors.primary,
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

  Widget _buildTabs() {
    return Container(
      margin: const EdgeInsets.all(AppDimensions.spacing16),
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
          Tab(text: 'Active'),
          Tab(text: 'Completed'),
        ],
      ),
    );
  }

  Widget _buildPendingTab(List<CollectionOrder> orders) {
    if (orders.isEmpty) {
      return const EmptyState(
        title: 'No Pending Orders',
        message: 'New collection requests will appear here',
        icon: Icons.inbox,
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      itemCount: orders.length,
      itemBuilder: (context, index) {
        final order = orders[index];
        return OrderCard(
          order: order,
          onAccept: () => _acceptOrder(order),
          onReject: () => _rejectOrder(order),
          onTap: () {
            // Navigate to order details
          },
        );
      },
    );
  }

  Widget _buildActiveTab(List<CollectionOrder> orders) {
    if (orders.isEmpty) {
      return const EmptyState(
        title: 'No Active Orders',
        message: 'Your active collections will appear here',
        icon: Icons.local_shipping,
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      itemCount: orders.length,
      itemBuilder: (context, index) {
        final order = orders[index];
        return OrderCard(
          order: order,
          onTap: () {
            // Navigate to order tracking/details
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => OrderTrackingScreen(order: order),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildCompletedTab(List<CollectionOrder> orders) {
    if (orders.isEmpty) {
      return const EmptyState(
        title: 'No Completed Orders',
        message: 'Your completed collections will appear here',
        icon: Icons.check_circle_outline,
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      itemCount: orders.length,
      itemBuilder: (context, index) {
        final order = orders[index];
        return OrderCard(
          order: order,
          onTap: () {
            // Navigate to order details
          },
        );
      },
    );
  }
}
