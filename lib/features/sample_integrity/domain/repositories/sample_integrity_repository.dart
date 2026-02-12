import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/sample_integrity_score.dart';
import '../entities/pre_analytical_risk.dart';

abstract class SampleIntegrityRepository {
  /// Calculate integrity score for a sample
  Future<Either<Failure, SampleIntegrityScore>> calculateIntegrityScore(
    String sampleId,
  );

  /// Get integrity score by sample ID
  Future<Either<Failure, SampleIntegrityScore>> getIntegrityScore(
    String sampleId,
  );

  /// Get integrity history for a sample
  Future<Either<Failure, List<SampleIntegrityScore>>> getIntegrityHistory({
    required String sampleId,
    DateTime? startDate,
    DateTime? endDate,
  });

  /// Assess pre-analytical risk
  Future<Either<Failure, PreAnalyticalRiskAssessment>> assessPreAnalyticalRisk({
    required String sampleId,
    required Map<String, dynamic> collectionData,
  });

  /// Get pre-analytical risk assessment
  Future<Either<Failure, PreAnalyticalRiskAssessment>> getPreAnalyticalRisk(
    String sampleId,
  );

  /// Add integrity alert
  Future<Either<Failure, void>> addIntegrityAlert({
    required String sampleId,
    required AlertSeverity severity,
    required String message,
    required AlertType type,
    Map<String, dynamic>? metadata,
  });

  /// Get integrity alerts for a sample
  Future<Either<Failure, List<IntegrityAlert>>> getIntegrityAlerts({
    required String sampleId,
    AlertSeverity? severity,
  });

  /// Stream integrity score updates
  Stream<Either<Failure, SampleIntegrityScore>> watchIntegrityScore(
    String sampleId,
  );
}
