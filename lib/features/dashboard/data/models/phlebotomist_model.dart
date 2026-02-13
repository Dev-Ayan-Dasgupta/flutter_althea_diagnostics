import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../sample_collection/data/models/sample_model.dart';
import '../../domain/entities/phlebotomist.dart';

part 'phlebotomist_model.freezed.dart';
part 'phlebotomist_model.g.dart';

@freezed
abstract class PhlebotomistModel with _$PhlebotomistModel {
  const factory PhlebotomistModel({
    required String id,
    required String name,
    required String phoneNumber,
    required String email,
    required String status,
    GeoLocationModel? currentLocation,
    required int activeSamplesCount,
    required double batteryLevel,
    double? smartBagTemperature,
    String? deviceId,
    String? avatarUrl,
    required List<String> certifications,
    required PhlebotomistStatsModel stats,
    String? lastActiveAt,
    String? shiftStartTime,
    String? shiftEndTime,
  }) = _PhlebotomistModel;

  factory PhlebotomistModel.fromJson(Map<String, dynamic> json) =>
      _$PhlebotomistModelFromJson(json);

  static PhlebotomistModel fromEntity(Phlebotomist entity) {
    return PhlebotomistModel(
      id: entity.id,
      name: entity.name,
      phoneNumber: entity.phoneNumber,
      email: entity.email,
      status: entity.status.name,
      currentLocation: entity.currentLocation != null
          ? GeoLocationModel.fromEntity(entity.currentLocation!)
          : null,
      activeSamplesCount: entity.activeSamplesCount,
      batteryLevel: entity.batteryLevel,
      smartBagTemperature: entity.smartBagTemperature,
      deviceId: entity.deviceId,
      avatarUrl: entity.avatarUrl,
      certifications: entity.certifications,
      stats: PhlebotomistStatsModel.fromEntity(entity.stats),
      lastActiveAt: entity.lastActiveAt?.toIso8601String(),
      shiftStartTime: entity.shiftStartTime?.toIso8601String(),
      shiftEndTime: entity.shiftEndTime?.toIso8601String(),
    );
  }
}

extension PhlebotomistModelX on PhlebotomistModel {
  Phlebotomist toEntity() {
    return Phlebotomist(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      email: email,
      status: PhlebotomistStatus.values.firstWhere((e) => e.name == status),
      currentLocation: currentLocation?.toEntity(),
      activeSamplesCount: activeSamplesCount,
      batteryLevel: batteryLevel,
      smartBagTemperature: smartBagTemperature,
      deviceId: deviceId,
      avatarUrl: avatarUrl,
      certifications: certifications,
      stats: stats.toEntity(),
      lastActiveAt: lastActiveAt != null ? DateTime.parse(lastActiveAt!) : null,
      shiftStartTime: shiftStartTime != null
          ? DateTime.parse(shiftStartTime!)
          : null,
      shiftEndTime: shiftEndTime != null ? DateTime.parse(shiftEndTime!) : null,
    );
  }
}

@freezed
abstract class PhlebotomistStatsModel with _$PhlebotomistStatsModel {
  const factory PhlebotomistStatsModel({
    required int totalCollections,
    required int todayCollections,
    required double averageCollectionTime,
    required double successRate,
    required int rejectionCount,
    required double averageIntegrityScore,
  }) = _PhlebotomistStatsModel;

  factory PhlebotomistStatsModel.fromJson(Map<String, dynamic> json) =>
      _$PhlebotomistStatsModelFromJson(json);

  static PhlebotomistStatsModel fromEntity(PhlebotomistStats entity) {
    return PhlebotomistStatsModel(
      totalCollections: entity.totalCollections,
      todayCollections: entity.todayCollections,
      averageCollectionTime: entity.averageCollectionTime,
      successRate: entity.successRate,
      rejectionCount: entity.rejectionCount,
      averageIntegrityScore: entity.averageIntegrityScore,
    );
  }
}

extension PhlebotomistStatsModelX on PhlebotomistStatsModel {
  PhlebotomistStats toEntity() {
    return PhlebotomistStats(
      totalCollections: totalCollections,
      todayCollections: todayCollections,
      averageCollectionTime: averageCollectionTime,
      successRate: successRate,
      rejectionCount: rejectionCount,
      averageIntegrityScore: averageIntegrityScore,
    );
  }
}
