import 'package:dartz/dartz.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../entities/sample_integrity_score.dart';
import '../repositories/sample_integrity_repository.dart';

class GetIntegrityScore implements UseCase<SampleIntegrityScore, String> {
  final SampleIntegrityRepository repository;

  GetIntegrityScore(this.repository);

  @override
  Future<Either<Failure, SampleIntegrityScore>> call(String sampleId) async {
    return await repository.getIntegrityScore(sampleId);
  }
}
