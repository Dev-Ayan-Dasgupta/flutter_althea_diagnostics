import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../../sample_collection/domain/entities/sample_event.dart';
import '../entities/lab_pulse.dart';
import '../entities/phlebotomist.dart';

abstract class DashboardRepository {
  /// Get lab pulse data
  Future<Either<Failure, LabPulse>> getLabPulse();

  /// Get all phlebotomists
  Future<Either<Failure, List<Phlebotomist>>> getPhlebotomists({
    PhlebotomistStatus? status,
  });

  /// Get phlebotomist by ID
  Future<Either<Failure, Phlebotomist>> getPhlebotomistById(String id);

  /// Update phlebotomist location
  Future<Either<Failure, Phlebotomist>> updatePhlebotomistLocation({
    required String phlebotomistId,
    required GeoLocation location,
  });

  /// Update phlebotomist status
  Future<Either<Failure, Phlebotomist>> updatePhlebotomistStatus({
    required String phlebotomistId,
    required PhlebotomistStatus status,
  });

  /// Assign phlebotomist to sample
  Future<Either<Failure, void>> assignPhlebotomist({
    required String sampleId,
    required String phlebotomistId,
  });

  /// Auto-assign nearest available phlebotomist
  Future<Either<Failure, Phlebotomist>> autoAssignPhlebotomist({
    required String sampleId,
    required GeoLocation patientLocation,
    bool isPriority = false,
  });

  /// Get TAT alerts
  Future<Either<Failure, List<TatAlert>>> getTatAlerts({
    TatSeverity? severity,
  });

  /// Get lab capacity
  Future<Either<Failure, LabCapacity>> getLabCapacity();

  /// Get sample trends
  Future<Either<Failure, List<SampleTrendData>>> getSampleTrends({
    required DateTime startDate,
    required DateTime endDate,
    String? interval, // hourly, daily
  });

  /// Stream lab pulse updates
  Stream<Either<Failure, LabPulse>> watchLabPulse();

  /// Stream phlebotomist locations
  Stream<Either<Failure, List<Phlebotomist>>> watchPhlebotomists();

  /// Stream TAT alerts
  Stream<Either<Failure, List<TatAlert>>> watchTatAlerts();
}
