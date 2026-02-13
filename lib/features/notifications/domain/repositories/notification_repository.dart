import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/notification.dart';

abstract class NotificationRepository {
  Future<Either<Failure, List<AppNotification>>> getNotifications({
    int page = 1,
    int limit = 20,
    NotificationType? type,
  });

  Future<Either<Failure, AppNotification>> getNotificationById(String id);

  Future<Either<Failure, void>> markAsRead(String id);

  Future<Either<Failure, void>> markAllAsRead();

  Future<Either<Failure, void>> deleteNotification(String id);

  Future<Either<Failure, void>> deleteAllNotifications();

  Future<Either<Failure, int>> getUnreadCount();

  Stream<Either<Failure, AppNotification>> watchNotifications();
}
