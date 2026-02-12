import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/errors/failures.dart';
import '../entities/lab_result.dart';

part 'lab_result_repository.freezed.dart';
part 'lab_result_repository.g.dart';

abstract class LabResultRepository {
  /// Create new lab result
  Future<Either<Failure, LabResult>> createLabResult({
    required String sampleId,
    required String orderId,
  });

  /// Get lab result by ID
  Future<Either<Failure, LabResult>> getLabResultById(String resultId);

  /// Get lab result by sample ID
  Future<Either<Failure, LabResult>> getLabResultBySampleId(String sampleId);

  /// Update test result parameters
  Future<Either<Failure, LabResult>> updateTestResults({
    required String resultId,
    required List<TestResult> testResults,
  });

  /// Update single parameter result
  Future<Either<Failure, LabResult>> updateParameterResult({
    required String resultId,
    required String testId,
    required String parameterId,
    required ResultValue value,
    String? notes,
  });

  /// Double-entry verification for critical values
  Future<Either<Failure, LabResult>> verifyParameterValue({
    required String resultId,
    required String testId,
    required String parameterId,
    required ResultValue verifiedValue,
  });

  /// Add clinical interpretation
  Future<Either<Failure, LabResult>> addClinicalInterpretation({
    required String resultId,
    required String interpretation,
    required String pathologistId,
  });

  /// Sign off result (Pathologist)
  Future<Either<Failure, LabResult>> signOffResult({
    required String resultId,
    required String pathologistId,
    required String digitalSignature,
  });

  /// Generate PDF report
  Future<Either<Failure, String>> generatePdfReport(String resultId);

  /// Push result to ABHA
  Future<Either<Failure, void>> pushToAbha({
    required String resultId,
    required String patientAbhaId,
  });

  /// Get historical results for parameter (for sparkline)
  Future<Either<Failure, List<double>>> getParameterHistory({
    required String patientAbhaId,
    required String parameterLoincCode,
    int limit = 5,
  });

  /// OCR scan result entry
  Future<Either<Failure, List<ParameterResult>>> scanResultSheet({
    required String imagePath,
    required String testId,
  });

  /// Validate result values
  Future<Either<Failure, Map<String, ValidationIssue>>> validateResults({
    required String resultId,
  });

  /// Stream result updates
  Stream<Either<Failure, LabResult>> watchLabResult(String resultId);
}

@freezed
abstract class ValidationIssue with _$ValidationIssue {
  const factory ValidationIssue({
    required String field,
    required String message,
    required ValidationSeverity severity,
  }) = _ValidationIssue;

  factory ValidationIssue.fromJson(Map<String, dynamic> json) =>
      _$ValidationIssueFromJson(json);
}

enum ValidationSeverity {
  error,
  warning,
  info,
}
