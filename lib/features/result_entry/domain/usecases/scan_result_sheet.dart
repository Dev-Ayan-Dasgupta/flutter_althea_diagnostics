import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../entities/lab_result.dart';
import '../repositories/lab_result_repository.dart';

part 'scan_result_sheet.freezed.dart';

class ScanResultSheet
    implements UseCase<List<ParameterResult>, ScanResultSheetParams> {
  final LabResultRepository repository;

  ScanResultSheet(this.repository);

  @override
  Future<Either<Failure, List<ParameterResult>>> call(
    ScanResultSheetParams params,
  ) async {
    return await repository.scanResultSheet(
      imagePath: params.imagePath,
      testId: params.testId,
    );
  }
}

@freezed
abstract class ScanResultSheetParams with _$ScanResultSheetParams {
  const factory ScanResultSheetParams({
    required String imagePath,
    required String testId,
  }) = _ScanResultSheetParams;
}
