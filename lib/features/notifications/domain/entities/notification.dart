import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

enum NotificationType {
  tatAlert,
  sampleStatus,
  coldChainBreach,
  systemAlert,
  general,
}

enum NotificationPriority { low, medium, high, critical }

@freezed
abstract class AppNotification with _$AppNotification {
  const factory AppNotification({
    required String id,
    required String title,
    required String message,
    required NotificationType type,
    required NotificationPriority priority,
    required DateTime timestamp,
    required bool isRead,
    String? imageUrl,
    String? actionUrl,
    Map<String, dynamic>? metadata,
  }) = _AppNotification;
}
