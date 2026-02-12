import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/sample_integrity_score.dart';

part 'sample_integrity_score_model.freezed.dart';
part 'sample_integrity_score_model.g.dart';

@freezed
abstract class SampleIntegrityScoreModel with _$SampleIntegrityScoreModel {
  const factory SampleIntegrityScoreModel({
    required double overallScore,
    required String level,
    required String calculatedAt,
    required IntegrityFactorsModel factors,
    required List<IntegrityAlertModel> alerts,
    String? recommendation,
    bool? requiresRecollection,
  }) = _SampleIntegrityScoreModel;

  factory SampleIntegrityScoreModel.fromJson(Map<String, dynamic> json) =>
      _$SampleIntegrityScoreModelFromJson(json);

  static SampleIntegrityScoreModel fromEntity(SampleIntegrityScore entity) {
    return SampleIntegrityScoreModel(
      overallScore: entity.overallScore,
      level: entity.level.name,
      calculatedAt: entity.calculatedAt.toIso8601String(),
      factors: IntegrityFactorsModel.fromEntity(entity.factors),
      alerts:
          entity.alerts.map((e) => IntegrityAlertModel.fromEntity(e)).toList(),
      recommendation: entity.recommendation,
      requiresRecollection: entity.requiresRecollection,
    );
  }
}

extension SampleIntegrityScoreModelX on SampleIntegrityScoreModel {
  SampleIntegrityScore toEntity() {
    return SampleIntegrityScore(
      overallScore: overallScore,
      level: IntegrityLevel.values.firstWhere((e) => e.name == level),
      calculatedAt: DateTime.parse(calculatedAt),
      factors: factors.toEntity(),
      alerts: alerts.map((e) => e.toEntity()).toList(),
      recommendation: recommendation,
      requiresRecollection: requiresRecollection,
    );
  }
}

@freezed
abstract class IntegrityFactorsModel with _$IntegrityFactorsModel {
  const factory IntegrityFactorsModel({
    required double transitDelayScore,
    required double temperatureComplianceScore,
    required double handoverScore,
    required double conditionScore,
    required double timelinessScore,
    int? transitDelayMinutes,
    double? maxTemperatureDeviation,
    int? numberOfHandovers,
    int? totalTransitTime,
  }) = _IntegrityFactorsModel;

  factory IntegrityFactorsModel.fromJson(Map<String, dynamic> json) =>
      _$IntegrityFactorsModelFromJson(json);

  static IntegrityFactorsModel fromEntity(IntegrityFactors entity) {
    return IntegrityFactorsModel(
      transitDelayScore: entity.transitDelayScore,
      temperatureComplianceScore: entity.temperatureComplianceScore,
      handoverScore: entity.handoverScore,
      conditionScore: entity.conditionScore,
      timelinessScore: entity.timelinessScore,
      transitDelayMinutes: entity.transitDelayMinutes,
      maxTemperatureDeviation: entity.maxTemperatureDeviation,
      numberOfHandovers: entity.numberOfHandovers,
      totalTransitTime: entity.totalTransitTime,
    );
  }
}

extension IntegrityFactorsModelX on IntegrityFactorsModel {
  IntegrityFactors toEntity() {
    return IntegrityFactors(
      transitDelayScore: transitDelayScore,
      temperatureComplianceScore: temperatureComplianceScore,
      handoverScore: handoverScore,
      conditionScore: conditionScore,
      timelinessScore: timelinessScore,
      transitDelayMinutes: transitDelayMinutes,
      maxTemperatureDeviation: maxTemperatureDeviation,
      numberOfHandovers: numberOfHandovers,
      totalTransitTime: totalTransitTime,
    );
  }
}

@freezed
abstract class IntegrityAlertModel with _$IntegrityAlertModel {
  const factory IntegrityAlertModel({
    required String severity,
    required String message,
    required String type,
    required String timestamp,
    Map<String, dynamic>? metadata,
  }) = _IntegrityAlertModel;

  factory IntegrityAlertModel.fromJson(Map<String, dynamic> json) =>
      _$IntegrityAlertModelFromJson(json);

  static IntegrityAlertModel fromEntity(IntegrityAlert entity) {
    return IntegrityAlertModel(
      severity: entity.severity.name,
      message: entity.message,
      type: entity.type.name,
      timestamp: entity.timestamp.toIso8601String(),
      metadata: entity.metadata,
    );
  }
}

extension IntegrityAlertModelX on IntegrityAlertModel {
  IntegrityAlert toEntity() {
    return IntegrityAlert(
      severity: AlertSeverity.values.firstWhere((e) => e.name == severity),
      message: message,
      type: AlertType.values.firstWhere((e) => e.name == type),
      timestamp: DateTime.parse(timestamp),
      metadata: metadata,
    );
  }
}
