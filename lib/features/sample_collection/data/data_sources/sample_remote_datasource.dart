import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/graphql_client.dart';
import '../graphql/sample_queries.dart';
import '../graphql/sample_mutations.dart';
import '../models/sample_model.dart';

abstract class SampleRemoteDataSource {
  Future<List<SampleModel>> getSamples({
    String? status,
    DateTime? startDate,
    DateTime? endDate,
    required int page,
    required int limit,
  });

  Future<SampleModel> getSampleById(String sampleId);

  Future<SampleModel> getSampleByVialId(String vialId);

  Future<SampleModel> updateSampleStatus({
    required String sampleId,
    required Map<String, dynamic> status,
    String? notes,
  });

  Future<SampleEventModel> addChainOfCustodyEvent({
    required String sampleId,
    required String eventType,
    required Map<String, dynamic> location,
    Map<String, dynamic>? metadata,
    String? notes,
  });

  Future<SampleModel> updateSampleCondition({
    required String sampleId,
    required Map<String, dynamic> condition,
  });

  Future<BiometricVerificationModel> verifyBiometricHandshake({
    required String sampleId,
    required String patientDeviceId,
    required String phlebotomistDeviceId,
    required double proximityDistance,
    required int signalStrength,
    required Map<String, dynamic> location,
  });

  Future<SampleModel> scanBarcode({
    required String vialId,
    required String phlebotomistId,
    required Map<String, dynamic> location,
  });

  Future<SampleModel> markAsCollected({
    required String sampleId,
    required DateTime collectionTime,
    required Map<String, dynamic> location,
    List<String>? imageUrls,
    String? notes,
  });

  Future<SampleModel> markAsReachedLab({
    required String sampleId,
    required DateTime arrivalTime,
    required Map<String, dynamic> location,
  });

  Future<SampleModel> rejectSample({
    required String sampleId,
    required String reason,
    required bool requiresRecollection,
    List<String>? imageUrls,
  });

  Future<List<String>> uploadSampleImages({
    required String sampleId,
    required List<String> imagePaths,
  });

  Stream<SampleModel> watchSample(String sampleId);

  Stream<List<SampleModel>> watchSamples({String? status});
}

class SampleRemoteDataSourceImpl implements SampleRemoteDataSource {
  final GraphQLService graphqlService;

  SampleRemoteDataSourceImpl({required this.graphqlService});

  @override
  Future<List<SampleModel>> getSamples({
    String? status,
    DateTime? startDate,
    DateTime? endDate,
    required int page,
    required int limit,
  }) async {
    try {
      final result = await graphqlService.query(
        SampleQueries.getSamples,
        variables: {
          'status': status,
          'startDate': startDate?.toIso8601String(),
          'endDate': endDate?.toIso8601String(),
          'page': page,
          'limit': limit,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to fetch samples',
        );
      }

      final samples = (result.data?['samples']['edges'] as List)
          .map((edge) =>
              SampleModel.fromJson(edge['node'] as Map<String, dynamic>))
          .toList();

      return samples;
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to fetch samples: ${e.toString()}');
    }
  }

  @override
  Future<SampleModel> getSampleById(String sampleId) async {
    try {
      final result = await graphqlService.query(
        SampleQueries.getSampleById,
        variables: {'id': sampleId},
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to fetch sample',
        );
      }

      return SampleModel.fromJson(
          result.data?['sample'] as Map<String, dynamic>);
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to fetch sample: ${e.toString()}');
    }
  }

  @override
  Future<SampleModel> getSampleByVialId(String vialId) async {
    try {
      final result = await graphqlService.query(
        SampleQueries.getSampleByVialId,
        variables: {'vialId': vialId},
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to fetch sample by vial ID',
        );
      }

      return SampleModel.fromJson(
        result.data?['sampleByVialId'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException(
          'Failed to fetch sample by vial ID: ${e.toString()}');
    }
  }

  @override
  Future<SampleModel> updateSampleStatus({
    required String sampleId,
    required Map<String, dynamic> status,
    String? notes,
  }) async {
    try {
      final result = await graphqlService.mutate(
        SampleMutations.updateSampleStatus,
        variables: {
          'sampleId': sampleId,
          'status': status,
          'notes': notes,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to update sample status',
        );
      }

      return SampleModel.fromJson(
        result.data?['updateSampleStatus'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to update sample status: ${e.toString()}');
    }
  }

  @override
  Future<SampleEventModel> addChainOfCustodyEvent({
    required String sampleId,
    required String eventType,
    required Map<String, dynamic> location,
    Map<String, dynamic>? metadata,
    String? notes,
  }) async {
    try {
      final result = await graphqlService.mutate(
        SampleMutations.addChainOfCustodyEvent,
        variables: {
          'sampleId': sampleId,
          'eventType': eventType,
          'location': location,
          'metadata': metadata,
          'notes': notes,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to add chain of custody event',
        );
      }

      return SampleEventModel.fromJson(
        result.data?['addChainOfCustodyEvent'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException(
          'Failed to add chain of custody event: ${e.toString()}');
    }
  }

  @override
  Future<SampleModel> updateSampleCondition({
    required String sampleId,
    required Map<String, dynamic> condition,
  }) async {
    try {
      final result = await graphqlService.mutate(
        SampleMutations.updateSampleCondition,
        variables: {
          'sampleId': sampleId,
          'condition': condition,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to update sample condition',
        );
      }

      return SampleModel.fromJson(
        result.data?['updateSampleCondition'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException(
          'Failed to update sample condition: ${e.toString()}');
    }
  }

  @override
  Future<BiometricVerificationModel> verifyBiometricHandshake({
    required String sampleId,
    required String patientDeviceId,
    required String phlebotomistDeviceId,
    required double proximityDistance,
    required int signalStrength,
    required Map<String, dynamic> location,
  }) async {
    try {
      final result = await graphqlService.mutate(
        SampleMutations.verifyBiometricHandshake,
        variables: {
          'sampleId': sampleId,
          'patientDeviceId': patientDeviceId,
          'phlebotomistDeviceId': phlebotomistDeviceId,
          'proximityDistance': proximityDistance,
          'signalStrength': signalStrength,
          'location': location,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to verify biometric handshake',
        );
      }

      return BiometricVerificationModel.fromJson(
        result.data?['verifyBiometricHandshake'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException(
          'Failed to verify biometric handshake: ${e.toString()}');
    }
  }

  @override
  Future<SampleModel> scanBarcode({
    required String vialId,
    required String phlebotomistId,
    required Map<String, dynamic> location,
  }) async {
    try {
      final result = await graphqlService.mutate(
        SampleMutations.scanBarcode,
        variables: {
          'vialId': vialId,
          'phlebotomistId': phlebotomistId,
          'location': location,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to scan barcode',
        );
      }

      return SampleModel.fromJson(
        result.data?['scanBarcode'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to scan barcode: ${e.toString()}');
    }
  }

  @override
  Future<SampleModel> markAsCollected({
    required String sampleId,
    required DateTime collectionTime,
    required Map<String, dynamic> location,
    List<String>? imageUrls,
    String? notes,
  }) async {
    try {
      final result = await graphqlService.mutate(
        SampleMutations.markAsCollected,
        variables: {
          'sampleId': sampleId,
          'collectionTime': collectionTime.toIso8601String(),
          'location': location,
          'imageUrls': imageUrls,
          'notes': notes,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to mark sample as collected',
        );
      }

      return SampleModel.fromJson(
        result.data?['markAsCollected'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException(
          'Failed to mark sample as collected: ${e.toString()}');
    }
  }

  @override
  Future<SampleModel> markAsReachedLab({
    required String sampleId,
    required DateTime arrivalTime,
    required Map<String, dynamic> location,
  }) async {
    try {
      final result = await graphqlService.mutate(
        SampleMutations.markAsReachedLab,
        variables: {
          'sampleId': sampleId,
          'arrivalTime': arrivalTime.toIso8601String(),
          'location': location,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to mark sample as reached lab',
        );
      }

      return SampleModel.fromJson(
        result.data?['markAsReachedLab'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException(
          'Failed to mark sample as reached lab: ${e.toString()}');
    }
  }

  @override
  Future<SampleModel> rejectSample({
    required String sampleId,
    required String reason,
    required bool requiresRecollection,
    List<String>? imageUrls,
  }) async {
    try {
      final result = await graphqlService.mutate(
        SampleMutations.rejectSample,
        variables: {
          'sampleId': sampleId,
          'reason': reason,
          'requiresRecollection': requiresRecollection,
          'imageUrls': imageUrls,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to reject sample',
        );
      }

      return SampleModel.fromJson(
        result.data?['rejectSample'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to reject sample: ${e.toString()}');
    }
  }

  @override
  Future<List<String>> uploadSampleImages({
    required String sampleId,
    required List<String> imagePaths,
  }) async {
    try {
      // Note: File upload with GraphQL requires multipart request
      // This is a simplified version - actual implementation would use http.MultipartRequest
      final result = await graphqlService.mutate(
        SampleMutations.uploadSampleImages,
        variables: {
          'sampleId': sampleId,
          'images': imagePaths,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to upload sample images',
        );
      }

      return (result.data?['uploadSampleImages']['urls'] as List)
          .cast<String>();
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to upload sample images: ${e.toString()}');
    }
  }

  @override
  Stream<SampleModel> watchSample(String sampleId) {
    return graphqlService.subscribe(
      SampleQueries.watchSample,
      variables: {'sampleId': sampleId},
    ).map((result) {
      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to watch sample',
        );
      }
      return SampleModel.fromJson(
        result.data?['sampleUpdated'] as Map<String, dynamic>,
      );
    });
  }

  @override
  Stream<List<SampleModel>> watchSamples({String? status}) {
    return graphqlService.subscribe(
      SampleQueries.watchSamples,
      variables: {'status': status},
    ).map((result) {
      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to watch samples',
        );
      }
      return (result.data?['samplesUpdated'] as List)
          .map((sample) => SampleModel.fromJson(sample as Map<String, dynamic>))
          .toList();
    });
  }
}
