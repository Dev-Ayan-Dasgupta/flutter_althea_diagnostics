import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/domain/usecase.dart';
import '../../../../core/errors/failures.dart';
import '../domain/entities/biometric_verification.dart';
import '../domain/entities/sample_event.dart';
import '../domain/repositories/sample_repository.dart';

part 'verify_biometric_handshake.freezed.dart';

class VerifyBiometricHandshake
    implements UseCase<BiometricVerification, BiometricHandshakeParams> {
  final SampleRepository repository;

  VerifyBiometricHandshake(this.repository);

  @override
  Future<Either<Failure, BiometricVerification>> call(
    BiometricHandshakeParams params,
  ) async {
    return await repository.verifyBiometricHandshake(
      sampleId: params.sampleId,
      patientDeviceId: params.patientDeviceId,
      phlebotomistDeviceId: params.phlebotomistDeviceId,
      proximityDistance: params.proximityDistance,
      signalStrength: params.signalStrength,
      location: params.location,
    );
  }
}

@freezed
abstract class BiometricHandshakeParams with _$BiometricHandshakeParams {
  const factory BiometricHandshakeParams({
    required String sampleId,
    required String patientDeviceId,
    required String phlebotomistDeviceId,
    required double proximityDistance,
    required int signalStrength,
    required GeoLocation location,
  }) = _BiometricHandshakeParams;
}
