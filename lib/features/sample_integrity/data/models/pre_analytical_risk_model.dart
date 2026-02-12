import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/pre_analytical_risk.dart';

part 'pre_analytical_risk_model.freezed.dart';
part 'pre_analytical_risk_model.g.dart';

@freezed
abstract class PreAnalyticalRiskModel with _$PreAnalyticalRiskModel {
  const factory PreAnalyticalRiskModel({
    required double riskScore,
    required String riskLevel,
    required List<RiskFactorModel> factors,
    required String assessedAt,
    String? recommendation,
    bool? requiresRecollection,
    double? sampleViabilityProbability,
  }) = _PreAnalyticalRiskModel;

  factory PreAnalyticalRiskModel.fromJson(Map<String, dynamic> json) =>
      _$PreAnalyticalRiskModelFromJson(json);

  static PreAnalyticalRiskModel fromEntity(PreAnalyticalRiskAssessment entity) {
    return PreAnalyticalRiskModel(
      riskScore: entity.riskScore,
      riskLevel: entity.riskLevel.name,
      factors:
          entity.factors.map((e) => RiskFactorModel.fromEntity(e)).toList(),
      assessedAt: entity.assessedAt.toIso8601String(),
      recommendation: entity.recommendation,
      requiresRecollection: entity.requiresRecollection,
      sampleViabilityProbability: entity.sampleViabilityProbability,
    );
  }
}

extension PreAnalyticalRiskModelX on PreAnalyticalRiskModel {
  PreAnalyticalRiskAssessment toEntity() {
    return PreAnalyticalRiskAssessment(
      riskScore: riskScore,
      riskLevel: RiskLevel.values.firstWhere((e) => e.name == riskLevel),
      factors: factors.map((e) => e.toEntity()).toList(),
      assessedAt: DateTime.parse(assessedAt),
      recommendation: recommendation,
      requiresRecollection: requiresRecollection,
      sampleViabilityProbability: sampleViabilityProbability,
    );
  }
}

@freezed
abstract class RiskFactorModel with _$RiskFactorModel {
  const factory RiskFactorModel({
    required String type,
    required double impact,
    required String description,
    bool? detected,
    Map<String, dynamic>? metadata,
  }) = _RiskFactorModel;

  factory RiskFactorModel.fromJson(Map<String, dynamic> json) =>
      _$RiskFactorModelFromJson(json);

  static RiskFactorModel fromEntity(RiskFactor entity) {
    return RiskFactorModel(
      type: entity.type.name,
      impact: entity.impact,
      description: entity.description,
      detected: entity.detected,
      metadata: entity.metadata,
    );
  }
}

extension RiskFactorModelX on RiskFactorModel {
  RiskFactor toEntity() {
    return RiskFactor(
      type: RiskFactorType.values.firstWhere((e) => e.name == type),
      impact: impact,
      description: description,
      detected: detected,
      metadata: metadata,
    );
  }
}
