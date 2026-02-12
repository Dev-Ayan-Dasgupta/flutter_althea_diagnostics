import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/biometric_verification.dart';
import '../entities/sample.dart';
import '../entities/sample_event.dart';

abstract class SampleRepository {
  /// Get all samples for the lab partner
  Future<Either<Failure, List<Sample>>> getSamples({
    SampleStatus? status,
    DateTime? startDate,
    DateTime? endDate,
    int page = 1,
    int limit = 20,
  });

  /// Get sample by ID
  Future<Either<Failure, Sample>> getSampleById(String sampleId);

  /// Get sample by vial barcode
  Future<Either<Failure, Sample>> getSampleByVialId(String vialId);

  /// Update sample status
  Future<Either<Failure, Sample>> updateSampleStatus({
    required String sampleId,
    required SampleStatus status,
    String? notes,
  });

  /// Add event to chain of custody
  Future<Either<Failure, SampleEvent>> addChainOfCustodyEvent({
    required String sampleId,
    required SampleEventType eventType,
    required GeoLocation location,
    EventMetadata? metadata,
    String? notes,
  });

  /// Get chain of custody for a sample
  Future<Either<Failure, List<SampleEvent>>> getChainOfCustody(String sampleId);

  /// Update sample condition
  Future<Either<Failure, Sample>> updateSampleCondition({
    required String sampleId,
    required SampleCondition condition,
  });

  /// Verify biometric handshake
  Future<Either<Failure, BiometricVerification>> verifyBiometricHandshake({
    required String sampleId,
    required String patientDeviceId,
    required String phlebotomistDeviceId,
    required double proximityDistance,
    required int signalStrength,
    required GeoLocation location,
  });

  /// Scan and verify barcode
  Future<Either<Failure, Sample>> scanBarcode({
    required String vialId,
    required String phlebotomistId,
    required GeoLocation location,
  });

  /// Mark sample as collected
  Future<Either<Failure, Sample>> markAsCollected({
    required String sampleId,
    required DateTime collectionTime,
    required GeoLocation location,
    List<String>? imageUrls,
    String? notes,
  });

  /// Mark sample as reached lab
  Future<Either<Failure, Sample>> markAsReachedLab({
    required String sampleId,
    required DateTime arrivalTime,
    required GeoLocation location,
  });

  /// Reject sample
  Future<Either<Failure, Sample>> rejectSample({
    required String sampleId,
    required String reason,
    required bool requiresRecollection,
    List<String>? imageUrls,
  });

  /// Upload sample images
  Future<Either<Failure, List<String>>> uploadSampleImages({
    required String sampleId,
    required List<String> imagePaths,
  });

  /// Stream real-time sample updates
  Stream<Either<Failure, Sample>> watchSample(String sampleId);

  /// Stream all samples with filters
  Stream<Either<Failure, List<Sample>>> watchSamples({
    SampleStatus? status,
  });
}
