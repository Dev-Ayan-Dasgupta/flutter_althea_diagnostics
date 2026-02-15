class ServerException implements Exception {
  final String message;
  final int? statusCode;

  ServerException(this.message, [this.statusCode]);

  @override
  String toString() => 'ServerException: $message${statusCode != null ? ' (Status: $statusCode)' : ''}';
}

class NetworkException implements Exception {
  final String message;

  NetworkException(this.message);

  @override
  String toString() => 'NetworkException: $message';
}

class CacheException implements Exception {
  final String message;

  CacheException(this.message);

  @override
  String toString() => 'CacheException: $message';
}

class SampleIntegrityException implements Exception {
  final String message;
  final String sampleId;
  final double? integrityScore;

  SampleIntegrityException(this.message, this.sampleId, [this.integrityScore]);
}

class ColdChainException implements Exception {
  final String message;
  final double? temperature;
  final DateTime? timestamp;

  ColdChainException(this.message, [this.temperature, this.timestamp]);
}

class BleException implements Exception {
  final String message;
  final String? deviceId;

  BleException(this.message, [this.deviceId]);
}
