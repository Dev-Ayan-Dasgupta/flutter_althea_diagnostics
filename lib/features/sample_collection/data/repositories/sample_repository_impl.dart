import 'dart:async';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/biometric_verification.dart';
import '../../domain/entities/sample.dart';
import '../../domain/entities/sample_event.dart';
import '../../domain/repositories/sample_repository.dart';
import '../datasources/sample_local_datasource.dart';
import '../datasources/sample_remote_datasource.dart';
import '../models/sample_model.dart';

class SampleRepositoryImpl implements SampleRepository {
  final SampleRemoteDataSource remoteDataSource;
  final SampleLocalDataSource localDataSource;

  SampleRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<Sample>>> getSamples({
    SampleStatus? status,
    DateTime? startDate,
    DateTime? endDate,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final samples = await remoteDataSource.getSamples(
        status: status?.toString(),
        startDate: startDate,
        endDate: endDate,
        page: page,
        limit: limit,
      );

      await localDataSource.cacheSamples(samples);

      return Right(samples.map((model) => model.toEntity()).toList());
    } on ServerException catch (e) {
      try {
        final cachedSamples = await localDataSource.getCachedSamples();
        if (cachedSamples.isNotEmpty) {
          return Right(cachedSamples.map((model) => model.toEntity()).toList());
        }
      } catch (_) {}

      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      try {
        final cachedSamples = await localDataSource.getCachedSamples();
        if (cachedSamples.isNotEmpty) {
          return Right(cachedSamples.map((model) => model.toEntity()).toList());
        }
      } catch (_) {}

      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Sample>> getSampleById(String sampleId) async {
    try {
      final sample = await remoteDataSource.getSampleById(sampleId);
      await localDataSource.cacheSample(sample);
      return Right(sample.toEntity());
    } on ServerException catch (e) {
      try {
        final cachedSample = await localDataSource.getCachedSampleById(
          sampleId,
        );
        if (cachedSample != null) {
          return Right(cachedSample.toEntity());
        }
      } catch (_) {}

      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      try {
        final cachedSample = await localDataSource.getCachedSampleById(
          sampleId,
        );
        if (cachedSample != null) {
          return Right(cachedSample.toEntity());
        }
      } catch (_) {}

      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Sample>> getSampleByVialId(String vialId) async {
    try {
      final sample = await remoteDataSource.getSampleByVialId(vialId);
      await localDataSource.cacheSample(sample);
      return Right(sample.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Sample>> updateSampleStatus({
    required String sampleId,
    required SampleStatus status,
    String? notes,
  }) async {
    try {
      // Use the public static method
      final statusJson = SampleModel.statusToJson(status);
      final sample = await remoteDataSource.updateSampleStatus(
        sampleId: sampleId,
        status: statusJson,
        notes: notes,
      );
      await localDataSource.cacheSample(sample);
      return Right(sample.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SampleEvent>> addChainOfCustodyEvent({
    required String sampleId,
    required SampleEventType eventType,
    required GeoLocation location,
    EventMetadata? metadata,
    String? notes,
  }) async {
    try {
      final locationJson = GeoLocationModel.fromEntity(location).toJson();
      final metadataJson = metadata != null
          ? EventMetadataModel.fromEntity(metadata).toJson()
          : null;

      final event = await remoteDataSource.addChainOfCustodyEvent(
        sampleId: sampleId,
        eventType: eventType.name,
        location: locationJson,
        metadata: metadataJson,
        notes: notes,
      );

      return Right(event.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SampleEvent>>> getChainOfCustody(
    String sampleId,
  ) async {
    try {
      final sample = await remoteDataSource.getSampleById(sampleId);
      return Right(
        sample.chainOfCustody.map((event) => event.toEntity()).toList(),
      );
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Sample>> updateSampleCondition({
    required String sampleId,
    required SampleCondition condition,
  }) async {
    try {
      final conditionJson = SampleConditionModel.fromEntity(condition).toJson();
      final sample = await remoteDataSource.updateSampleCondition(
        sampleId: sampleId,
        condition: conditionJson,
      );
      await localDataSource.cacheSample(sample);
      return Right(sample.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, BiometricVerification>> verifyBiometricHandshake({
    required String sampleId,
    required String patientDeviceId,
    required String phlebotomistDeviceId,
    required double proximityDistance,
    required int signalStrength,
    required GeoLocation location,
  }) async {
    try {
      final locationJson = GeoLocationModel.fromEntity(location).toJson();
      final verification = await remoteDataSource.verifyBiometricHandshake(
        sampleId: sampleId,
        patientDeviceId: patientDeviceId,
        phlebotomistDeviceId: phlebotomistDeviceId,
        proximityDistance: proximityDistance,
        signalStrength: signalStrength,
        location: locationJson,
      );
      return Right(verification.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.ble(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Sample>> scanBarcode({
    required String vialId,
    required String phlebotomistId,
    required GeoLocation location,
  }) async {
    try {
      final locationJson = GeoLocationModel.fromEntity(location).toJson();
      final sample = await remoteDataSource.scanBarcode(
        vialId: vialId,
        phlebotomistId: phlebotomistId,
        location: locationJson,
      );
      await localDataSource.cacheSample(sample);
      return Right(sample.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Sample>> markAsCollected({
    required String sampleId,
    required DateTime collectionTime,
    required GeoLocation location,
    List<String>? imageUrls,
    String? notes,
  }) async {
    try {
      final locationJson = GeoLocationModel.fromEntity(location).toJson();
      final sample = await remoteDataSource.markAsCollected(
        sampleId: sampleId,
        collectionTime: collectionTime,
        location: locationJson,
        imageUrls: imageUrls,
        notes: notes,
      );
      await localDataSource.cacheSample(sample);
      return Right(sample.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Sample>> markAsReachedLab({
    required String sampleId,
    required DateTime arrivalTime,
    required GeoLocation location,
  }) async {
    try {
      final locationJson = GeoLocationModel.fromEntity(location).toJson();
      final sample = await remoteDataSource.markAsReachedLab(
        sampleId: sampleId,
        arrivalTime: arrivalTime,
        location: locationJson,
      );
      await localDataSource.cacheSample(sample);
      return Right(sample.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Sample>> rejectSample({
    required String sampleId,
    required String reason,
    required bool requiresRecollection,
    List<String>? imageUrls,
  }) async {
    try {
      final sample = await remoteDataSource.rejectSample(
        sampleId: sampleId,
        reason: reason,
        requiresRecollection: requiresRecollection,
        imageUrls: imageUrls,
      );
      await localDataSource.cacheSample(sample);
      return Right(sample.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<String>>> uploadSampleImages({
    required String sampleId,
    required List<String> imagePaths,
  }) async {
    try {
      final urls = await remoteDataSource.uploadSampleImages(
        sampleId: sampleId,
        imagePaths: imagePaths,
      );
      return Right(urls);
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Stream<Either<Failure, Sample>> watchSample(String sampleId) {
    return remoteDataSource
        .watchSample(sampleId)
        .transform(
          StreamTransformer.fromHandlers(
            handleData: (data, sink) {
              sink.add(Right(data.toEntity()));
            },
            handleError: (error, stackTrace, sink) {
              if (error is ServerException) {
                sink.add(Left(Failure.server(message: error.message)));
              } else if (error is NetworkException) {
                sink.add(Left(Failure.network(message: error.message)));
              } else {
                sink.add(Left(Failure.unknown(message: error.toString())));
              }
            },
          ),
        );
  }

  @override
  Stream<Either<Failure, List<Sample>>> watchSamples({SampleStatus? status}) {
    return remoteDataSource
        .watchSamples(status: status?.toString())
        .transform(
          StreamTransformer.fromHandlers(
            handleData: (data, sink) {
              sink.add(Right(data.map((model) => model.toEntity()).toList()));
            },
            handleError: (error, stackTrace, sink) {
              if (error is ServerException) {
                sink.add(Left(Failure.server(message: error.message)));
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
