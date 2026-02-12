import 'dart:async';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../sample_collection/data/models/sample_model.dart';
import '../../../sample_collection/domain/entities/sample_event.dart';
import '../../domain/entities/cold_chain_data.dart';
import '../../domain/repositories/cold_chain_repository.dart';
import '../datasources/cold_chain_remote_datasource.dart';
import '../models/cold_chain_data_model.dart';

class ColdChainRepositoryImpl implements ColdChainRepository {
  final ColdChainRemoteDataSource remoteDataSource;

  ColdChainRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, TelemetryReading>> logTemperature({
    required String sampleId,
    required double temperature,
    double? humidity,
    required GeoLocation location,
  }) async {
    try {
      final locationJson = GeoLocationModel.fromEntity(location).toJson();
      final reading = await remoteDataSource.logTemperature(
        sampleId: sampleId,
        temperature: temperature,
        humidity: humidity,
        location: locationJson,
      );
      return Right(reading.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.coldChain(
        message: e.message,
        temperature: temperature,
      ));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> ingestTelemetryData({
    required String sampleId,
    required List<TelemetryReading> readings,
    required String deviceId,
  }) async {
    try {
      final readingsJson = readings
          .map((r) => {
                'timestamp': r.timestamp.toIso8601String(),
                'temperature': r.temperature,
                'humidity': r.humidity,
                'shockDetected': r.shockDetected,
                'tiltDetected': r.tiltDetected,
                'lidOpenDetected': r.lidOpenDetected,
                'batteryLevel': r.batteryLevel,
                'deviceId': r.deviceId,
              })
          .toList();

      await remoteDataSource.ingestTelemetryData(
        sampleId: sampleId,
        readings: readingsJson,
        deviceId: deviceId,
      );
      return const Right(null);
    } on ServerException catch (e) {
      return Left(Failure.coldChain(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, ColdChainData>> getColdChainData(
    String sampleId,
  ) async {
    try {
      final data = await remoteDataSource.getColdChainData(sampleId);
      return Right(data.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.coldChain(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, ColdChainCompliance>> getComplianceReport(
    String sampleId,
  ) async {
    try {
      final data = await remoteDataSource.getColdChainData(sampleId);
      return Right(data.compliance.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.coldChain(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<TelemetryReading>>> getTemperatureHistory({
    required String sampleId,
    DateTime? startTime,
    DateTime? endTime,
  }) async {
    try {
      final data = await remoteDataSource.getColdChainData(sampleId);
      var readings = data.readings.map((r) => r.toEntity()).toList();

      if (startTime != null) {
        readings =
            readings.where((r) => r.timestamp.isAfter(startTime)).toList();
      }
      if (endTime != null) {
        readings =
            readings.where((r) => r.timestamp.isBefore(endTime)).toList();
      }

      return Right(readings);
    } on ServerException catch (e) {
      return Left(Failure.coldChain(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<TemperatureBreach>>> getTemperatureBreaches(
    String sampleId,
  ) async {
    try {
      final data = await remoteDataSource.getColdChainData(sampleId);
      return Right(data.compliance.breaches.map((b) => b.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(Failure.coldChain(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, ColdChainData>> startMonitoring({
    required String sampleId,
    String? smartBagId,
    bool isManualLogging = false,
  }) async {
    try {
      final data = await remoteDataSource.startMonitoring(
        sampleId: sampleId,
        smartBagId: smartBagId,
        isManualLogging: isManualLogging,
      );
      return Right(data.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.coldChain(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, ColdChainData>> stopMonitoring(String sampleId) async {
    try {
      final data = await remoteDataSource.stopMonitoring(sampleId);
      return Right(data.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.coldChain(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> checkCompliance(String sampleId) async {
    try {
      final data = await remoteDataSource.getColdChainData(sampleId);
      return Right(data.compliance.compliancePercentage >= 95.0);
    } on ServerException catch (e) {
      return Left(Failure.coldChain(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Stream<Either<Failure, TelemetryReading>> watchTelemetry(String sampleId) {
    return remoteDataSource.watchTelemetry(sampleId).transform(
          StreamTransformer.fromHandlers(
            handleData: (data, sink) {
              sink.add(Right(data.toEntity()));
            },
            handleError: (error, stackTrace, sink) {
              if (error is ServerException) {
                sink.add(Left(Failure.coldChain(message: error.message)));
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
  Stream<Either<Failure, ColdChainCompliance>> watchCompliance(
      String sampleId) {
    return remoteDataSource.watchCompliance(sampleId).transform(
          StreamTransformer.fromHandlers(
            handleData: (data, sink) {
              sink.add(Right(data.toEntity()));
            },
            handleError: (error, stackTrace, sink) {
              if (error is ServerException) {
                sink.add(Left(Failure.coldChain(message: error.message)));
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
