import 'package:dartz/dartz.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../entities/cold_chain_data.dart';
import '../repositories/cold_chain_repository.dart';

class GetColdChainData implements UseCase<ColdChainData, String> {
  final ColdChainRepository repository;

  GetColdChainData(this.repository);

  @override
  Future<Either<Failure, ColdChainData>> call(String sampleId) async {
    return await repository.getColdChainData(sampleId);
  }
}
