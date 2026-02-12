import 'dart:async';

import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/sample_integrity_score.dart';
import '../../domain/entities/pre_analytical_risk.dart';
import '../../domain/repositories/sample_integrity_repository.dart';
import '../datasources/sample_integrity_remote_datasource.dart';
import '../models/pre_analytical_risk_model.dart';
import '../models/sample_integrity_score_model.dart';

class SampleIntegrityRepositoryImpl implements SampleIntegrityRepository {
  final SampleIntegrityRemoteDataSource remoteDataSource;

  SampleIntegrityRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, SampleIntegrityScore>> calculateIntegrityScore(
    String sampleId,
  ) async {
    try {
      final score = await remoteDataSource.calculateIntegrityScore(sampleId);
      return Right(score.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.sampleIntegrity(
        message: e.message,
        sampleId: sampleId,
      ));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SampleIntegrityScore>> getIntegrityScore(
    String sampleId,
  ) async {
    try {
      final score = await remoteDataSource.getIntegrityScore(sampleId);
      return Right(score.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.sampleIntegrity(
        message: e.message,
        sampleId: sampleId,
      ));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SampleIntegrityScore>>> getIntegrityHistory({
    required String sampleId,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return const Left(Failure.server(message: 'Not implemented yet'));
  }

  @override
  Future<Either<Failure, PreAnalyticalRiskAssessment>> assessPreAnalyticalRisk({
    required String sampleId,
    required Map<String, dynamic> collectionData,
  }) async {
    try {
      final risk = await remoteDataSource.assessPreAnalyticalRisk(
        sampleId: sampleId,
        collectionData: collectionData,
      );
      return Right(risk.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.sampleIntegrity(
        message: e.message,
        sampleId: sampleId,
      ));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, PreAnalyticalRiskAssessment>> getPreAnalyticalRisk(
    String sampleId,
  ) async {
    return const Left(Failure.server(message: 'Not implemented yet'));
  }

  @override
  Future<Either<Failure, void>> addIntegrityAlert({
    required String sampleId,
    required AlertSeverity severity,
    required String message,
    required AlertType type,
    Map<String, dynamic>? metadata,
  }) async {
    return const Left(Failure.server(message: 'Not implemented yet'));
  }

  @override
  Future<Either<Failure, List<IntegrityAlert>>> getIntegrityAlerts({
    required String sampleId,
    AlertSeverity? severity,
  }) async {
    return const Left(Failure.server(message: 'Not implemented yet'));
  }

  @override
  Stream<Either<Failure, SampleIntegrityScore>> watchIntegrityScore(
    String sampleId,
  ) {
    return remoteDataSource.watchIntegrityScore(sampleId).transform(
          StreamTransformer.fromHandlers(
            handleData: (data, sink) {
              sink.add(Right(data.toEntity()));
            },
            handleError: (error, stackTrace, sink) {
              if (error is ServerException) {
                sink.add(Left(Failure.sampleIntegrity(
                  message: error.message,
                  sampleId: sampleId,
                )));
              } else if (error is NetworkException) {
                sink.add(Left(Failure.network(message: error.message)));
              } else {
                sink.add(Left(Failure.unknown(message: error.toString())));
              }
            },
          ),
        );
  }
}
