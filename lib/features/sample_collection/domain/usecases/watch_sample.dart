import 'package:dartz/dartz.dart';
import '../../../../../core/domain/usecase.dart';
import '../../../../../core/errors/failures.dart';
import '../entities/sample.dart';
import '../repositories/sample_repository.dart';

class WatchSample implements StreamUseCase<Sample, String> {
  final SampleRepository repository;

  WatchSample(this.repository);

  @override
  Stream<Either<Failure, Sample>> call(String sampleId) {
    return repository.watchSample(sampleId);
  }
}
