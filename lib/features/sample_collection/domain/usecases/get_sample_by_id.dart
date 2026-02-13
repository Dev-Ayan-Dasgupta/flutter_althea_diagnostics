import 'package:dartz/dartz.dart';
import '../../../../../core/domain/usecase.dart';
import '../../../../../core/errors/failures.dart';
import '../entities/sample.dart';
import '../repositories/sample_repository.dart';

class GetSampleById implements UseCase<Sample, String> {
  final SampleRepository repository;

  GetSampleById(this.repository);

  @override
  Future<Either<Failure, Sample>> call(String sampleId) async {
    return await repository.getSampleById(sampleId);
  }
}
