import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/gradient_text.dart';
import '../../../../core/presentation/widgets/wallet_card.dart';
import '../../../../core/presentation/widgets/earnings_card.dart';
import '../../../../core/presentation/widgets/transaction_item.dart';
import '../../../../core/presentation/widgets/empty_state.dart';
import '../../../../core/utils/responsive_helper.dart';
import '../../../../core/utils/navigation_extensions.dart';
import '../../domain/entities/wallet.dart';

// Mock providers - replace with actual implementation
final walletProvider = StateProvider<Wallet?>((ref) => null);
final earningsProvider = StateProvider<Earnings?>((ref) => null);

class WalletScreen extends ConsumerStatefulWidget {
  const WalletScreen({super.key});

  @override
  ConsumerState<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends ConsumerState<WalletScreen>
    with SingleTickerProviderStateMixin {
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

  void _showWithdrawalSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const WithdrawalSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final wallet = ref.watch(walletProvider);
    final earnings = ref.watch(earningsProvider);
    final deviceType = ResponsiveHelper.getDeviceType(context);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(context),
              Expanded(
                child: wallet == null
                    ? _buildLoadingState()
                    : _buildContent(wallet, earnings, deviceType),
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
              'Wallet',
              style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
              gradient: AppGradients.primaryText,
            ),
          ),
          GestureDetector(
            onTap: () {
              // TODO: Navigate to withdrawal history
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

  Widget _buildContent(
    Wallet wallet,
    Earnings? earnings,
    DeviceType deviceType,
  ) {
    return CustomScrollView(
      slivers: [
        // Wallet Balance Card
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(AppDimensions.spacing16),
            child: WalletCard(
              balance: wallet.balance,
              pendingAmount: wallet.pendingAmount,
              onWithdrawTap: _showWithdrawalSheet,
            ),
          ),
        ),

        // Earnings Overview
        if (earnings != null)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.spacing16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Earnings',
                    style: AppTextStyles.h4.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: AppDimensions.spacing12),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: deviceType == DeviceType.mobile ? 3 : 4,
                    crossAxisSpacing: AppDimensions.spacing12,
                    mainAxisSpacing: AppDimensions.spacing12,
                    childAspectRatio: 1,
                    children: [
                      EarningsCard(
                        period: 'Today',
                        amount: earnings.today,
                        samplesCount: earnings.samplesCollectedToday,
                        icon: Icons.today,
                        gradient: AppGradients.primaryButton,
                      ),
                      EarningsCard(
                        period: 'This Week',
                        amount: earnings.thisWeek,
                        samplesCount: earnings.samplesCollectedThisWeek,
                        icon: Icons.date_range,
                        gradient: AppGradients.secondaryButton,
                      ),
                      EarningsCard(
                        period: 'This Month',
                        amount: earnings.thisMonth,
                        samplesCount: earnings.samplesCollectedThisMonth,
                        icon: Icons.calendar_month,
                        gradient: AppGradients.success,
                      ),
                    ],
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

        // Transactions
        SliverFillRemaining(
          child: TabBarView(
            controller: _tabController,
            children: [
              _buildTransactionsList(wallet.recentTransactions),
              _buildEarningsBreakdown(earnings),
            ],
          ),
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
          Tab(text: 'Transactions'),
          Tab(text: 'Breakdown'),
        ],
      ),
    );
  }

  Widget _buildTransactionsList(List<Transaction> transactions) {
    if (transactions.isEmpty) {
      return const EmptyState(
        title: 'No Transactions',
        message: 'Your transactions will appear here',
        icon: Icons.receipt_long,
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return TransactionItem(transaction: transactions[index]);
      },
    );
  }

  Widget _buildEarningsBreakdown(Earnings? earnings) {
    if (earnings == null) {
      return const EmptyState(
        title: 'No Earnings Data',
        message: 'Start collecting samples to see earnings',
        icon: Icons.trending_up,
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Last 7 Days',
            style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          ...earnings.last7Days.map((day) {
            return Container(
              margin: const EdgeInsets.only(bottom: AppDimensions.spacing12),
              padding: const EdgeInsets.all(AppDimensions.spacing16),
              decoration: BoxDecoration(
                gradient: AppGradients.surfaceDark,
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
                boxShadow: AppShadows.soft,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _formatDate(day.date),
                          style: AppTextStyles.bodyLarge.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: AppDimensions.spacing4),
                        Text(
                          '${day.samplesCount} samples',
                          style: AppTextStyles.bodySmall.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '₹${day.amount.toStringAsFixed(0)}',
                    style: AppTextStyles.h4.copyWith(
                      fontWeight: FontWeight.w800,
                      color: AppColors.success,
                    ),
                  ),
                ],
              ),
            );
          }),
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

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day) {
      return 'Today';
    } else if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day - 1) {
      return 'Yesterday';
    } else {
      return '${date.day}/${date.month}/${date.year}';
    }
  }
}

// Withdrawal Sheet Widget
class WithdrawalSheet extends StatefulWidget {
  const WithdrawalSheet({super.key});

  @override
  State<WithdrawalSheet> createState() => _WithdrawalSheetState();
}

class _WithdrawalSheetState extends State<WithdrawalSheet> {
  final _amountController = TextEditingController();
  WithdrawalMethod _selectedMethod = WithdrawalMethod.upi;

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppGradients.darkBackground,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppDimensions.radiusXLarge),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppDimensions.spacing24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Handle
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: AppColors.textSecondary,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                const SizedBox(height: AppDimensions.spacing24),
                // Title
                Text(
                  'Withdraw Money',
                  style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppDimensions.spacing32),
                // Amount Input
                TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  style: AppTextStyles.h1.copyWith(fontSize: 48),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: '₹0',
                    hintStyle: AppTextStyles.h1.copyWith(
                      fontSize: 48,
                      color: AppColors.textDisabled,
                    ),
                    border: InputBorder.none,
                  ),
                ),
                const SizedBox(height: AppDimensions.spacing32),
                // Withdrawal Method
                Text(
                  'Withdrawal Method',
                  style: AppTextStyles.bodyMedium.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: AppDimensions.spacing12),
                // TODO: Add method selection UI
                const SizedBox(height: AppDimensions.spacing32),
                // Withdraw Button
                ElevatedButton(
                  onPressed: () {
                    // TODO: Process withdrawal
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(
                      vertical: AppDimensions.spacing16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        AppDimensions.radiusMedium,
                      ),
                    ),
                  ),
                  child: Text(
                    'Withdraw',
                    style: AppTextStyles.bodyLarge.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
