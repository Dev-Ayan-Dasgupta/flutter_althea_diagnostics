import 'package:freezed_annotation/freezed_annotation.dart';

part 'performance.freezed.dart';

@freezed
abstract class PhlebotomistPerformance with _$PhlebotomistPerformance {
  const factory PhlebotomistPerformance({
    required String userId,
    required PerformanceStats stats,
    required List<Rating> ratings,
    required List<Achievement> achievements,
    required QualityMetrics quality,
    required DateTime lastUpdated,
  }) = _PhlebotomistPerformance;
}

@freezed
abstract class PerformanceStats with _$PerformanceStats {
  const factory PerformanceStats({
    required int totalCollections,
    required int successfulCollections,
    required int rejectedSamples,
    required double successRate,
    required double averageIntegrityScore,
    required double averageRating,
    required int totalRatings,
    required double tatComplianceRate,
    required double coldChainComplianceRate,
    required int streakDays,
    required int bonusesEarned,
  }) = _PerformanceStats;
}

@freezed
abstract class Rating with _$Rating {
  const factory Rating({
    required String id,
    required String sampleId,
    required int stars,
    String? comment,
    required String reviewerName,
    required DateTime timestamp,
  }) = _Rating;
}

@freezed
abstract class Achievement with _$Achievement {
  const factory Achievement({
    required String id,
    required String title,
    required String description,
    required String icon,
    required DateTime unlockedAt,
    required AchievementTier tier,
  }) = _Achievement;
}

enum AchievementTier { bronze, silver, gold, platinum }

@freezed
abstract class QualityMetrics with _$QualityMetrics {
  const factory QualityMetrics({
    required double integrityScoreAvg,
    required double collectionQuality,
    required double documentationQuality,
    required double punctualityScore,
    required int qualityIncidents,
  }) = _QualityMetrics;
}
