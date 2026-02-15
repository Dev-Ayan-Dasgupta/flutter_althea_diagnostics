import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/gradient_text.dart';
import '../../../../core/presentation/widgets/empty_state.dart';
import '../../../../core/presentation/widgets/notification_item.dart';
import '../../../../core/presentation/widgets/filter_chip_custom.dart';
import '../../../../core/utils/navigation_extensions.dart';
import '../../domain/entities/notification.dart';

// Mock provider for now - will be replaced with actual implementation
final notificationsProvider = StateProvider<List<AppNotification>>(
  (ref) => [
    AppNotification(
      id: '1',
      title: 'TAT Alert',
      message: 'Sample #SAM123 approaching TAT deadline in 15 minutes',
      type: NotificationType.tatAlert,
      priority: NotificationPriority.critical,
      timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
      isRead: false,
    ),
    AppNotification(
      id: '2',
      title: 'Cold Chain Breach',
      message: 'Temperature exceeded threshold for sample #SAM456',
      type: NotificationType.coldChainBreach,
      priority: NotificationPriority.high,
      timestamp: DateTime.now().subtract(const Duration(hours: 1)),
      isRead: false,
    ),
    AppNotification(
      id: '3',
      title: 'Sample Status Update',
      message: 'Sample #SAM789 has reached the lab',
      type: NotificationType.sampleStatus,
      priority: NotificationPriority.medium,
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      isRead: true,
    ),
  ],
);

class NotificationsScreen extends ConsumerStatefulWidget {
  const NotificationsScreen({super.key});

  @override
  ConsumerState<NotificationsScreen> createState() =>
      _NotificationsScreenState();
}

class _NotificationsScreenState extends ConsumerState<NotificationsScreen> {
  NotificationType? _selectedFilter;

  final List<_FilterOption> _filterOptions = [
    _FilterOption('All', null, Icons.all_inclusive),
    _FilterOption('TAT Alerts', NotificationType.tatAlert, Icons.alarm),
    _FilterOption('Samples', NotificationType.sampleStatus, Icons.science),
    _FilterOption(
      'Cold Chain',
      NotificationType.coldChainBreach,
      Icons.ac_unit,
    ),
    _FilterOption('System', NotificationType.systemAlert, Icons.info),
  ];

  void _markAllAsRead() {
    // TODO: Implement mark all as read
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('All notifications marked as read'),
        backgroundColor: AppColors.success,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _clearAll() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.darkSurface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
        ),
        title: Text(
          'Clear All Notifications',
          style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
        ),
        content: Text(
          'Are you sure you want to clear all notifications?',
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
              ref.read(notificationsProvider.notifier).state = [];
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('All notifications cleared'),
                  backgroundColor: AppColors.success,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            child: Text('Clear', style: TextStyle(color: AppColors.critical)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final notifications = ref.watch(notificationsProvider);
    final filteredNotifications = _selectedFilter == null
        ? notifications
        : notifications.where((n) => n.type == _selectedFilter).toList();

    final unreadCount = notifications.where((n) => !n.isRead).length;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(unreadCount),
              _buildFilterBar(),
              Expanded(
                child: filteredNotifications.isEmpty
                    ? _buildEmptyState()
                    : _buildNotificationsList(filteredNotifications),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(int unreadCount) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    Row(
                      children: [
                        GradientText(
                          'Notifications',
                          style: AppTextStyles.h3.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                          gradient: AppGradients.primaryText,
                        ),
                        if (unreadCount > 0) ...[
                          const SizedBox(width: AppDimensions.spacing8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppDimensions.spacing8,
                              vertical: AppDimensions.spacing4,
                            ),
                            decoration: BoxDecoration(
                              gradient: AppGradients.critical,
                              borderRadius: BorderRadius.circular(
                                AppDimensions.radiusRound,
                              ),
                            ),
                            child: Text(
                              unreadCount.toString(),
                              style: AppTextStyles.bodySmall.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                    Text(
                      'Stay updated with alerts',
                      style: AppTextStyles.bodySmall.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuButton<String>(
                icon: Container(
                  padding: const EdgeInsets.all(AppDimensions.spacing8),
                  decoration: BoxDecoration(
                    gradient: AppGradients.surfaceDark,
                    borderRadius: BorderRadius.circular(
                      AppDimensions.radiusMedium,
                    ),
                    boxShadow: AppShadows.soft,
                  ),
                  child: const Icon(Icons.more_vert),
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 'mark_read',
                    child: Row(
                      children: [
                        Icon(Icons.check_circle, color: AppColors.success),
                        const SizedBox(width: AppDimensions.spacing8),
                        const Text('Mark all as read'),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 'clear',
                    child: Row(
                      children: [
                        Icon(Icons.delete, color: AppColors.critical),
                        const SizedBox(width: AppDimensions.spacing8),
                        const Text('Clear all'),
                      ],
                    ),
                  ),
                ],
                onSelected: (value) {
                  if (value == 'mark_read') {
                    _markAllAsRead();
                  } else if (value == 'clear') {
                    _clearAll();
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFilterBar() {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(
        horizontal: AppDimensions.spacing16,
        vertical: AppDimensions.spacing8,
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _filterOptions.length,
        separatorBuilder: (_, _) =>
            const SizedBox(width: AppDimensions.spacing8),
        itemBuilder: (context, index) {
          final option = _filterOptions[index];
          return FilterChipCustom(
            label: option.label,
            icon: option.icon,
            isSelected: _selectedFilter == option.value,
            onTap: () {
              setState(() {
                _selectedFilter = option.value;
              });
            },
          );
        },
      ),
    );
  }

  Widget _buildNotificationsList(List<AppNotification> notifications) {
    return ListView.builder(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final notification = notifications[index];
        return NotificationItem(
          notification: notification,
          onTap: () {
            // TODO: Handle notification tap - navigate to relevant screen
            // Mark as read
            final updatedNotifications = ref.read(notificationsProvider).map((
              n,
            ) {
              if (n.id == notification.id) {
                return AppNotification(
                  id: n.id,
                  title: n.title,
                  message: n.message,
                  type: n.type,
                  priority: n.priority,
                  timestamp: n.timestamp,
                  isRead: true,
                  imageUrl: n.imageUrl,
                  actionUrl: n.actionUrl,
                  metadata: n.metadata,
                );
              }
              return n;
            }).toList();
            ref.read(notificationsProvider.notifier).state =
                updatedNotifications;
          },
          onDelete: () {
            ref.read(notificationsProvider.notifier).state = notifications
                .where((n) => n.id != notification.id)
                .toList();
          },
        );
      },
    );
  }

  Widget _buildEmptyState() {
    return EmptyState(
      title: 'No Notifications',
      message: _selectedFilter == null
          ? 'You\'re all caught up!'
          : 'No notifications match the selected filter',
      icon: Icons.notifications_none,
    );
  }
}

class _FilterOption {
  final String label;
  final NotificationType? value;
  final IconData icon;

  _FilterOption(this.label, this.value, this.icon);
}
