import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.server({
    required String message,
    int? statusCode,
  }) = ServerFailure;

  const factory Failure.network({
    required String message,
  }) = NetworkFailure;

  const factory Failure.authentication({
    required String message,
  }) = AuthenticationFailure;

  const factory Failure.validation({
    required String message,
    Map<String, String>? fieldErrors,
  }) = ValidationFailure;

  const factory Failure.sampleIntegrity({
    required String message,
    required String sampleId,
    double? integrityScore,
  }) = SampleIntegrityFailure;

  const factory Failure.coldChain({
    required String message,
    double? temperature,
    DateTime? timestamp,
  }) = ColdChainFailure;

  const factory Failure.ble({
    required String message,
    String? deviceId,
  }) = BleFailure;

  const factory Failure.cache({
    required String message,
  }) = CacheFailure;

  const factory Failure.permission({
    required String message,
    required String permission,
  }) = PermissionFailure;

  const factory Failure.unknown({
    required String message,
  }) = UnknownFailure;
}
