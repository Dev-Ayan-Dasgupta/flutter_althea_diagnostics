import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/domain/usecase.dart';
import '../../../../../core/errors/failures.dart';
import '../entities/sample.dart';
import '../repositories/sample_repository.dart';

part 'get_samples.freezed.dart';

class GetSamples implements UseCase<List<Sample>, GetSamplesParams> {
  final SampleRepository repository;

  GetSamples(this.repository);

  @override
  Future<Either<Failure, List<Sample>>> call(GetSamplesParams params) async {
    return await repository.getSamples(
      status: params.status,
      startDate: params.startDate,
      endDate: params.endDate,
      page: params.page,
      limit: params.limit,
    );
  }
}

@freezed
abstract class GetSamplesParams with _$GetSamplesParams {
  const factory GetSamplesParams({
    SampleStatus? status,
    DateTime? startDate,
    DateTime? endDate,
    @Default(1) int page,
    @Default(20) int limit,
  }) = _GetSamplesParams;
}
