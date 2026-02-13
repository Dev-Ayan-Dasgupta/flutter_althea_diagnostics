import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/domain/usecase.dart';
import '../../../../../core/errors/failures.dart';
import '../entities/sample.dart';
import '../entities/sample_event.dart';
import '../repositories/sample_repository.dart';

part 'scan_barcode.freezed.dart';

class ScanBarcode implements UseCase<Sample, ScanBarcodeParams> {
  final SampleRepository repository;

  ScanBarcode(this.repository);

  @override
  Future<Either<Failure, Sample>> call(ScanBarcodeParams params) async {
    return await repository.scanBarcode(
      vialId: params.vialId,
      phlebotomistId: params.phlebotomistId,
      location: params.location,
    );
  }
}

@freezed
abstract class ScanBarcodeParams with _$ScanBarcodeParams {
  const factory ScanBarcodeParams({
    required String vialId,
    required String phlebotomistId,
    required GeoLocation location,
  }) = _ScanBarcodeParams;
}
