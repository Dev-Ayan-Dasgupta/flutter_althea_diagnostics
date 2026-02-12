import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../sample_collection/domain/entities/sample_event.dart';

part 'phlemotomist.freezed.dart';
part 'phlemotomist.g.dart';

@freezed
abstract class Phlebotomist with _$Phlebotomist {
  const factory Phlebotomist({
    required String id,
    required String name,
    required String phoneNumber,
    required String email,
    required PhlebotomistStatus status,
    required GeoLocation? currentLocation,
    required int activeSamplesCount,
    required double batteryLevel,
    double? smartBagTemperature,
    String? deviceId,
    String? avatarUrl,
    required List<String> certifications,
    required PhlebotomistStats stats,
    DateTime? lastActiveAt,
    DateTime? shiftStartTime,
    DateTime? shiftEndTime,
  }) = _Phlebotomist;

  factory Phlebotomist.fromJson(Map<String, dynamic> json) =>
      _$PhlebotomistFromJson(json);
}

enum PhlebotomistStatus {
  available,
  assigned,
  inTransit,
  collecting,
  returning,
  offline,
}

@freezed
abstract class PhlebotomistStats with _$PhlebotomistStats {
  const factory PhlebotomistStats({
    required int totalCollections,
    required int todayCollections,
    required double averageCollectionTime, // minutes
    required double successRate,
    required int rejectionCount,
    required double averageIntegrityScore,
  }) = _PhlebotomistStats;

  factory PhlebotomistStats.fromJson(Map<String, dynamic> json) =>
      _$PhlebotomistStatsFromJson(json);
}
