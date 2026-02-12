import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/graphql_client.dart';
import '../graphql/integrity_queries.dart';
import '../models/sample_integrity_score_model.dart';
import '../models/pre_analytical_risk_model.dart';

abstract class SampleIntegrityRemoteDataSource {
  Future<SampleIntegrityScoreModel> calculateIntegrityScore(String sampleId);
  Future<SampleIntegrityScoreModel> getIntegrityScore(String sampleId);
  Future<PreAnalyticalRiskModel> assessPreAnalyticalRisk({
    required String sampleId,
    required Map<String, dynamic> collectionData,
  });
  Stream<SampleIntegrityScoreModel> watchIntegrityScore(String sampleId);
}

class SampleIntegrityRemoteDataSourceImpl
    implements SampleIntegrityRemoteDataSource {
  final GraphQLService graphqlService;

  SampleIntegrityRemoteDataSourceImpl({required this.graphqlService});

  @override
  Future<SampleIntegrityScoreModel> calculateIntegrityScore(
    String sampleId,
  ) async {
    try {
      final result = await graphqlService.mutate(
        IntegrityQueries.calculateIntegrityScore,
        variables: {'sampleId': sampleId},
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to calculate integrity score',
        );
      }

      return SampleIntegrityScoreModel.fromJson(
        result.data?['calculateIntegrityScore'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException(
        'Failed to calculate integrity score: ${e.toString()}',
      );
    }
  }

  @override
  Future<SampleIntegrityScoreModel> getIntegrityScore(String sampleId) async {
    try {
      final result = await graphqlService.query(
        IntegrityQueries.getIntegrityScore,
        variables: {'sampleId': sampleId},
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to get integrity score',
        );
      }

      return SampleIntegrityScoreModel.fromJson(
        result.data?['integrityScore'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to get integrity score: ${e.toString()}');
    }
  }

  @override
  Future<PreAnalyticalRiskModel> assessPreAnalyticalRisk({
    required String sampleId,
    required Map<String, dynamic> collectionData,
  }) async {
    try {
      final result = await graphqlService.mutate(
        IntegrityQueries.assessPreAnalyticalRisk,
        variables: {
          'sampleId': sampleId,
          'collectionData': collectionData,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to assess pre-analytical risk',
        );
      }

      return PreAnalyticalRiskModel.fromJson(
        result.data?['assessPreAnalyticalRisk'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException(
        'Failed to assess pre-analytical risk: ${e.toString()}',
      );
    }
  }

  @override
  Stream<SampleIntegrityScoreModel> watchIntegrityScore(String sampleId) {
    return graphqlService.subscribe(
      IntegrityQueries.watchIntegrityScore,
      variables: {'sampleId': sampleId},
    ).map((result) {
      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to watch integrity score',
        );
      }
      return SampleIntegrityScoreModel.fromJson(
        result.data?['integrityScoreUpdated'] as Map<String, dynamic>,
      );
    });
  }
}
