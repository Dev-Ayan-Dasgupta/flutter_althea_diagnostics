import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../sample_collection/domain/entities/sample_event.dart';

part 'order.freezed.dart';

enum OrderStatus {
  pending,
  accepted,
  onTheWay,
  arrived,
  collectionInProgress,
  collectionCompleted,
  inTransit,
  delivered,
  cancelled,
}

enum AuthMethod { qrCode, otp }

@freezed
abstract class CollectionOrder with _$CollectionOrder {
  const factory CollectionOrder({
    required String id,
    required String patientId,
    required String patientName,
    required String patientPhone,
    required String patientAddress,
    required GeoLocation patientLocation,
    required List<String> testIds,
    required List<String> testNames,
    required OrderStatus status,
    required DateTime requestedAt,
    DateTime? acceptedAt,
    DateTime? startedAt,
    DateTime? arrivedAt,
    DateTime? collectionStartedAt,
    DateTime? collectionCompletedAt,
    DateTime? deliveredAt,
    String? assignedPhlebotomistId,
    String? assignedPhlebotomistName,
    GeoLocation? phlebotomistCurrentLocation,
    double? distanceToPatient,
    int? estimatedArrivalMinutes,
    String? cancellationReason,
    String? sampleId,
    String? notes,
    double? collectionFee,
  }) = _CollectionOrder;
}

@freezed
abstract class OrderAuthentication with _$OrderAuthentication {
  const factory OrderAuthentication({
    required String orderId,
    required AuthMethod method,
    String? qrCodeData,
    String? otp,
    required DateTime timestamp,
    required GeoLocation location,
  }) = _OrderAuthentication;
}

@freezed
abstract class OrderTracking with _$OrderTracking {
  const factory OrderTracking({
    required String orderId,
    required String phlebotomistId,
    required GeoLocation currentLocation,
    required DateTime timestamp,
    required double speed,
    required String heading,
  }) = _OrderTracking;
}
