import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../sample_collection/domain/entities/sample.dart';
import '../../../sample_integrity/domain/entities/sample_integrity_score.dart';

part 'sample_filter.freezed.dart';

@freezed
abstract class SampleFilter with _$SampleFilter {
  const factory SampleFilter({
    String? searchQuery,
    SampleStatus? status,
    DateTime? startDate,
    DateTime? endDate,
    IntegrityLevel? integrityLevel,
    String? phlebotomistId,
    String? labId,
    bool? hasTatBreach,
    bool? hasColdChainBreach,
    double? minIntegrityScore,
    double? maxIntegrityScore,
    List<String>? testIds,
  }) = _SampleFilter;

  factory SampleFilter.empty() => const SampleFilter();
}

extension SampleFilterX on SampleFilter {
  bool get isEmpty =>
      searchQuery == null &&
      status == null &&
      startDate == null &&
      endDate == null &&
      integrityLevel == null &&
      phlebotomistId == null &&
      labId == null &&
      hasTatBreach == null &&
      hasColdChainBreach == null &&
      minIntegrityScore == null &&
      maxIntegrityScore == null &&
      (testIds == null || testIds!.isEmpty);

  int get activeFilterCount {
    int count = 0;
    if (searchQuery != null && searchQuery!.isNotEmpty) count++;
    if (status != null) count++;
    if (startDate != null || endDate != null) count++;
    if (integrityLevel != null) count++;
    if (phlebotomistId != null) count++;
    if (labId != null) count++;
    if (hasTatBreach == true) count++;
    if (hasColdChainBreach == true) count++;
    if (minIntegrityScore != null || maxIntegrityScore != null) count++;
    if (testIds != null && testIds!.isNotEmpty) count++;
    return count;
  }
}
