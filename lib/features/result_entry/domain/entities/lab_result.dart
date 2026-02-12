import 'package:freezed_annotation/freezed_annotation.dart';

part 'lab_result.freezed.dart';
part 'lab_result.g.dart';

@freezed
abstract class LabResult with _$LabResult {
  const factory LabResult({
    required String id,
    required String sampleId,
    required String patientAbhaId,
    required String orderId,
    required List<TestResult> testResults,
    required ResultStatus status,
    String? pathologistId,
    String? pathologistName,
    String? clinicalInterpretation,
    String? digitalSignature,
    DateTime? signedOffAt,
    required DateTime createdAt,
    DateTime? updatedAt,
    String? pdfUrl,
    bool? pushedToAbha,
    DateTime? abhaPushTime,
  }) = _LabResult;

  factory LabResult.fromJson(Map<String, dynamic> json) =>
      _$LabResultFromJson(json);
}

enum ResultStatus {
  pending,
  inProgress,
  pendingReview,
  reviewed,
  signedOff,
  dispatched,
}

@freezed
abstract class TestResult with _$TestResult {
  const factory TestResult({
    required String testId,
    required String testName,
    required String loincCode, // LOINC standard code
    required List<ParameterResult> parameters,
    String? methodology,
    String? specimenType,
    DateTime? analyzedAt,
  }) = _TestResult;

  factory TestResult.fromJson(Map<String, dynamic> json) =>
      _$TestResultFromJson(json);
}

@freezed
abstract class ParameterResult with _$ParameterResult {
  const factory ParameterResult({
    required String parameterId,
    required String parameterName,
    required String loincCode,
    required ResultValue value,
    required String unit,
    required ReferenceRange referenceRange,
    required ResultFlag flag,
    String? notes,
    List<double>? historicalValues, // For sparkline
    bool? requiresDoubleEntry,
    String? verifiedValue,
    bool? isVerified,
  }) = _ParameterResult;

  factory ParameterResult.fromJson(Map<String, dynamic> json) =>
      _$ParameterResultFromJson(json);
}

@freezed
abstract class ResultValue with _$ResultValue {
  const factory ResultValue.numeric({required double value}) =
      NumericResultValue;
  const factory ResultValue.text({required String value}) = TextResultValue;
  const factory ResultValue.range({
    required double min,
    required double max,
  }) = RangeResultValue;
  const factory ResultValue.qualitative({
    required String value,
    List<String>? options,
  }) = QualitativeResultValue;

  factory ResultValue.fromJson(Map<String, dynamic> json) =>
      _$ResultValueFromJson(json);
}

@freezed
abstract class ReferenceRange with _$ReferenceRange {
  const factory ReferenceRange({
    double? min,
    double? max,
    String? textRange,
    required String ageGroup,
    required String gender,
    String? condition, // e.g., "fasting", "non-fasting"
  }) = _ReferenceRange;

  factory ReferenceRange.fromJson(Map<String, dynamic> json) =>
      _$ReferenceRangeFromJson(json);
}

enum ResultFlag {
  normal,
  borderlineHigh,
  borderlineLow,
  high,
  low,
  critical,
  abnormal,
}
