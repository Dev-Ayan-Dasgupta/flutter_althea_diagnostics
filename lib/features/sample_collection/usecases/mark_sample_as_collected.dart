import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../domain/entities/sample.dart';
import '../domain/entities/sample_event.dart';
import '../domain/repositories/sample_repository.dart';

part 'mark_sample_as_collected.freezed.dart';

class MarkSampleAsCollected
    implements UseCase<Sample, MarkSampleAsCollectedParams> {
  final SampleRepository repository;

  MarkSampleAsCollected(this.repository);

  @override
  Future<Either<Failure, Sample>> call(
    MarkSampleAsCollectedParams params,
  ) async {
    return await repository.markAsCollected(
      sampleId: params.sampleId,
      collectionTime: params.collectionTime,
      location: params.location,
      imageUrls: params.imageUrls,
      notes: params.notes,
    );
  }
}

@freezed
abstract class MarkSampleAsCollectedParams with _$MarkSampleAsCollectedParams {
  const factory MarkSampleAsCollectedParams({
    required String sampleId,
    required DateTime collectionTime,
    required GeoLocation location,
    List<String>? imageUrls,
    String? notes,
  }) = _MarkSampleAsCollectedParams;
}
