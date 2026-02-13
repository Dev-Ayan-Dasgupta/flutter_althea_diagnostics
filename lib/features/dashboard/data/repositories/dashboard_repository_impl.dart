import 'dart:async';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../sample_collection/data/models/sample_model.dart';
import '../../../sample_collection/domain/entities/sample_event.dart';
import '../../domain/entities/lab_pulse.dart';
import '../../domain/entities/phlebotomist.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../datasources/dashboard_remote_datasource.dart';
import '../models/lab_pulse_model.dart';
import '../models/phlebotomist_model.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteDataSource remoteDataSource;

  DashboardRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, LabPulse>> getLabPulse() async {
    try {
      final pulse = await remoteDataSource.getLabPulse();
      return Right(pulse.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Phlebotomist>>> getPhlebotomists({
    PhlebotomistStatus? status,
  }) async {
    try {
      final phlebotomists = await remoteDataSource.getPhlebotomists(
        status: status?.name,
      );
      return Right(phlebotomists.map((p) => p.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Phlebotomist>> getPhlebotomistById(String id) async {
    try {
      final phlebotomist = await remoteDataSource.getPhlebotomistById(id);
      return Right(phlebotomist.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Phlebotomist>> updatePhlebotomistLocation({
    required String phlebotomistId,
    required GeoLocation location,
  }) async {
    try {
      final locationJson = GeoLocationModel.fromEntity(location).toJson();
      final phlebotomist = await remoteDataSource.updatePhlebotomistLocation(
        phlebotomistId: phlebotomistId,
        location: locationJson,
      );
      return Right(phlebotomist.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Phlebotomist>> updatePhlebotomistStatus({
    required String phlebotomistId,
    required PhlebotomistStatus status,
  }) async {
    try {
      final phlebotomist = await remoteDataSource.updatePhlebotomistStatus(
        phlebotomistId: phlebotomistId,
        status: status.name,
      );
      return Right(phlebotomist.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> assignPhlebotomist({
    required String sampleId,
    required String phlebotomistId,
  }) async {
    try {
      await remoteDataSource.assignPhlebotomist(
        sampleId: sampleId,
        phlebotomistId: phlebotomistId,
      );
      return const Right(null);
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Phlebotomist>> autoAssignPhlebotomist({
    required String sampleId,
    required GeoLocation patientLocation,
    bool isPriority = false,
  }) async {
    try {
      final locationJson = GeoLocationModel.fromEntity(
        patientLocation,
      ).toJson();
      final phlebotomist = await remoteDataSource.autoAssignPhlebotomist(
        sampleId: sampleId,
        patientLocation: locationJson,
        isPriority: isPriority,
      );
      return Right(phlebotomist.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<TatAlert>>> getTatAlerts({
    TatSeverity? severity,
  }) async {
    try {
      final pulse = await remoteDataSource.getLabPulse();
      var alerts = pulse.tatAlerts.map((a) => a.toEntity()).toList();

      if (severity != null) {
        alerts = alerts.where((a) => a.severity == severity).toList();
      }

      return Right(alerts);
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, LabCapacity>> getLabCapacity() async {
    try {
      final pulse = await remoteDataSource.getLabPulse();
      return Right(pulse.capacity.toEntity());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SampleTrendData>>> getSampleTrends({
    required DateTime startDate,
    required DateTime endDate,
    String? interval,
  }) async {
    try {
      final pulse = await remoteDataSource.getLabPulse();
      return Right(pulse.trends.map((t) => t.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(Failure.server(message: e.message, statusCode: e.statusCode));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Stream<Either<Failure, LabPulse>> watchLabPulse() {
    return remoteDataSource.watchLabPulse().transform(
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
  Stream<Either<Failure, List<Phlebotomist>>> watchPhlebotomists() {
    return remoteDataSource.watchPhlebotomists().transform(
      StreamTransformer.fromHandlers(
        handleData: (data, sink) {
          sink.add(Right(data.map((p) => p.toEntity()).toList()));
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
  Stream<Either<Failure, List<TatAlert>>> watchTatAlerts() {
    return watchLabPulse().map((result) {
      return result.fold(
        (failure) => Left(failure),
        (pulse) => Right(pulse.tatAlerts),
      );
    });
  }
}
