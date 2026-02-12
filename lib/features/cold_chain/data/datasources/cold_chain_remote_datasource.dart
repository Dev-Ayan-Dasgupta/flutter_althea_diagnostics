import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/graphql_client.dart';
import '../graphql/cold_chain_queries.dart';
import '../models/cold_chain_data_model.dart';

abstract class ColdChainRemoteDataSource {
  Future<TelemetryReadingModel> logTemperature({
    required String sampleId,
    required double temperature,
    double? humidity,
    required Map<String, dynamic> location,
  });

  Future<void> ingestTelemetryData({
    required String sampleId,
    required List<Map<String, dynamic>> readings,
    required String deviceId,
  });

  Future<ColdChainDataModel> getColdChainData(String sampleId);
  Future<ColdChainDataModel> startMonitoring({
    required String sampleId,
    String? smartBagId,
    bool isManualLogging,
  });
  Future<ColdChainDataModel> stopMonitoring(String sampleId);
  Stream<TelemetryReadingModel> watchTelemetry(String sampleId);
  Stream<ColdChainComplianceModel> watchCompliance(String sampleId);
}

class ColdChainRemoteDataSourceImpl implements ColdChainRemoteDataSource {
  final GraphQLService graphqlService;

  ColdChainRemoteDataSourceImpl({required this.graphqlService});

  @override
  Future<TelemetryReadingModel> logTemperature({
    required String sampleId,
    required double temperature,
    double? humidity,
    required Map<String, dynamic> location,
  }) async {
    try {
      final result = await graphqlService.mutate(
        ColdChainQueries.logTemperature,
        variables: {
          'sampleId': sampleId,
          'temperature': temperature,
          'humidity': humidity,
          'location': location,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to log temperature',
        );
      }

      return TelemetryReadingModel.fromJson(
        result.data?['logTemperature'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to log temperature: ${e.toString()}');
    }
  }

  @override
  Future<void> ingestTelemetryData({
    required String sampleId,
    required List<Map<String, dynamic>> readings,
    required String deviceId,
  }) async {
    try {
      final result = await graphqlService.mutate(
        ColdChainQueries.ingestTelemetry,
        variables: {
          'sampleId': sampleId,
          'readings': readings,
          'deviceId': deviceId,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to ingest telemetry',
        );
      }
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to ingest telemetry: ${e.toString()}');
    }
  }

  @override
  Future<ColdChainDataModel> getColdChainData(String sampleId) async {
    try {
      final result = await graphqlService.query(
        ColdChainQueries.getColdChainData,
        variables: {'sampleId': sampleId},
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to get cold chain data',
        );
      }

      return ColdChainDataModel.fromJson(
        result.data?['coldChainData'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to get cold chain data: ${e.toString()}');
    }
  }

  @override
  Future<ColdChainDataModel> startMonitoring({
    required String sampleId,
    String? smartBagId,
    bool isManualLogging = false,
  }) async {
    try {
      final result = await graphqlService.mutate(
        ColdChainQueries.startMonitoring,
        variables: {
          'sampleId': sampleId,
          'smartBagId': smartBagId,
          'isManualLogging': isManualLogging,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to start monitoring',
        );
      }

      return ColdChainDataModel.fromJson(
        result.data?['startMonitoring'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to start monitoring: ${e.toString()}');
    }
  }

  @override
  Future<ColdChainDataModel> stopMonitoring(String sampleId) async {
    try {
      final result = await graphqlService.mutate(
        ColdChainQueries.stopMonitoring,
        variables: {'sampleId': sampleId},
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to stop monitoring',
        );
      }

      return ColdChainDataModel.fromJson(
        result.data?['stopMonitoring'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to stop monitoring: ${e.toString()}');
    }
  }

  @override
  Stream<TelemetryReadingModel> watchTelemetry(String sampleId) {
    return graphqlService.subscribe(
      ColdChainQueries.watchTelemetry,
      variables: {'sampleId': sampleId},
    ).map((result) {
      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to watch telemetry',
        );
      }
      return TelemetryReadingModel.fromJson(
        result.data?['telemetryUpdated'] as Map<String, dynamic>,
      );
    });
  }

  @override
  Stream<ColdChainComplianceModel> watchCompliance(String sampleId) {
    return graphqlService.subscribe(
      ColdChainQueries.watchCompliance,
      variables: {'sampleId': sampleId},
    ).map((result) {
      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to watch compliance',
        );
      }
      return ColdChainComplianceModel.fromJson(
        result.data?['complianceUpdated'] as Map<String, dynamic>,
      );
    });
  }
}
