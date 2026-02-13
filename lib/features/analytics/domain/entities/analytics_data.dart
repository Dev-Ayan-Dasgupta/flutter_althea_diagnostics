import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_data.freezed.dart';

@freezed
abstract class AnalyticsData with _$AnalyticsData {
  const factory AnalyticsData({
    required AnalyticsSummary summary,
    required List<TrendData> trends,
    required List<CategoryData> byCategory,
    required PerformanceMetrics performance,
    required QualityMetrics quality,
    required String generatedAt,
  }) = _AnalyticsData;
}

@freezed
abstract class AnalyticsSummary with _$AnalyticsSummary {
  const factory AnalyticsSummary({
    required int totalSamples,
    required int completedSamples,
    required int rejectedSamples,
    required int inTransitSamples,
    required double completionRate,
    required double rejectionRate,
    required double averageTAT,
    required int tatBreaches,
  }) = _AnalyticsSummary;
}

@freezed
abstract class TrendData with _$TrendData {
  const factory TrendData({
    required DateTime date,
    required int samples,
    required int completed,
    required int rejected,
    required double avgTat,
  }) = _TrendData;
}

@freezed
abstract class CategoryData with _$CategoryData {
  const factory CategoryData({
    required String category,
    required int count,
    required double percentage,
    required String color,
  }) = _CategoryData;
}

@freezed
abstract class PerformanceMetrics with _$PerformanceMetrics {
  const factory PerformanceMetrics({
    required double tatCompliance,
    required double coldChainCompliance,
    required double integrityScoreAvg,
    required int totalBreaches,
    required int criticalAlerts,
  }) = _PerformanceMetrics;
}

@freezed
abstract class QualityMetrics with _$QualityMetrics {
  const factory QualityMetrics({
    required double preAnalyticalQuality,
    required double collectionQuality,
    required double transportQuality,
    required int qualityIncidents,
  }) = _QualityMetrics;
}

enum ReportType { daily, weekly, monthly, custom }

enum ReportFormat { pdf, excel, csv }
