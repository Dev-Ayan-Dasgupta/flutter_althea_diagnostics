import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/graphql_client.dart';
import '../graphql/dashboard_queries.dart';
import '../graphql/dashboard_mutations.dart';
import '../models/lab_pulse_model.dart';
import '../models/phlebotomist_model.dart';

abstract class DashboardRemoteDataSource {
  Future<LabPulseModel> getLabPulse();
  Future<List<PhlebotomistModel>> getPhlebotomists({String? status});
  Future<PhlebotomistModel> getPhlebotomistById(String id);
  Future<PhlebotomistModel> updatePhlebotomistLocation({
    required String phlebotomistId,
    required Map<String, dynamic> location,
  });
  Future<PhlebotomistModel> updatePhlebotomistStatus({
    required String phlebotomistId,
    required String status,
  });
  Future<void> assignPhlebotomist({
    required String sampleId,
    required String phlebotomistId,
  });
  Future<PhlebotomistModel> autoAssignPhlebotomist({
    required String sampleId,
    required Map<String, dynamic> patientLocation,
    bool isPriority,
  });
  Stream<LabPulseModel> watchLabPulse();
  Stream<List<PhlebotomistModel>> watchPhlebotomists();
}

class DashboardRemoteDataSourceImpl implements DashboardRemoteDataSource {
  final GraphQLService graphqlService;

  DashboardRemoteDataSourceImpl({required this.graphqlService});

  @override
  Future<LabPulseModel> getLabPulse() async {
    try {
      final result = await graphqlService.query(DashboardQueries.getLabPulse);

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to fetch lab pulse',
        );
      }

      return LabPulseModel.fromJson(
        result.data?['labPulse'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to fetch lab pulse: ${e.toString()}');
    }
  }

  @override
  Future<List<PhlebotomistModel>> getPhlebotomists({String? status}) async {
    try {
      final result = await graphqlService.query(
        DashboardQueries.getPhlebotomists,
        variables: {'status': status},
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to fetch phlebotomists',
        );
      }

      return (result.data?['phlebotomists'] as List)
          .map(
            (json) => PhlebotomistModel.fromJson(json as Map<String, dynamic>),
          )
          .toList();
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to fetch phlebotomists: ${e.toString()}');
    }
  }

  @override
  Future<PhlebotomistModel> getPhlebotomistById(String id) async {
    try {
      final result = await graphqlService.query(
        DashboardQueries.getPhlebotomistById,
        variables: {'id': id},
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to fetch phlebotomist',
        );
      }

      return PhlebotomistModel.fromJson(
        result.data?['phlebotomist'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to fetch phlebotomist: ${e.toString()}');
    }
  }

  @override
  Future<PhlebotomistModel> updatePhlebotomistLocation({
    required String phlebotomistId,
    required Map<String, dynamic> location,
  }) async {
    try {
      final result = await graphqlService.mutate(
        DashboardMutations.updatePhlebotomistLocation,
        variables: {'phlebotomistId': phlebotomistId, 'location': location},
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to update phlebotomist location',
        );
      }

      return PhlebotomistModel.fromJson(
        result.data?['updatePhlebotomistLocation'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException(
        'Failed to update phlebotomist location: ${e.toString()}',
      );
    }
  }

  @override
  Future<PhlebotomistModel> updatePhlebotomistStatus({
    required String phlebotomistId,
    required String status,
  }) async {
    try {
      final result = await graphqlService.mutate(
        DashboardMutations.updatePhlebotomistStatus,
        variables: {'phlebotomistId': phlebotomistId, 'status': status},
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to update phlebotomist status',
        );
      }

      return PhlebotomistModel.fromJson(
        result.data?['updatePhlebotomistStatus'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException(
        'Failed to update phlebotomist status: ${e.toString()}',
      );
    }
  }

  @override
  Future<void> assignPhlebotomist({
    required String sampleId,
    required String phlebotomistId,
  }) async {
    try {
      final result = await graphqlService.mutate(
        DashboardMutations.assignPhlebotomist,
        variables: {'sampleId': sampleId, 'phlebotomistId': phlebotomistId},
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to assign phlebotomist',
        );
      }
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException('Failed to assign phlebotomist: ${e.toString()}');
    }
  }

  @override
  Future<PhlebotomistModel> autoAssignPhlebotomist({
    required String sampleId,
    required Map<String, dynamic> patientLocation,
    bool isPriority = false,
  }) async {
    try {
      final result = await graphqlService.mutate(
        DashboardMutations.autoAssignPhlebotomist,
        variables: {
          'sampleId': sampleId,
          'patientLocation': patientLocation,
          'isPriority': isPriority,
        },
      );

      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to auto-assign phlebotomist',
        );
      }

      return PhlebotomistModel.fromJson(
        result.data?['autoAssignPhlebotomist'] as Map<String, dynamic>,
      );
    } catch (e) {
      if (e is ServerException) rethrow;
      throw ServerException(
        'Failed to auto-assign phlebotomist: ${e.toString()}',
      );
    }
  }

  @override
  Stream<LabPulseModel> watchLabPulse() {
    return graphqlService.subscribe(DashboardQueries.watchLabPulse).map((
      result,
    ) {
      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to watch lab pulse',
        );
      }
      return LabPulseModel.fromJson(
        result.data?['labPulseUpdated'] as Map<String, dynamic>,
      );
    });
  }

  @override
  Stream<List<PhlebotomistModel>> watchPhlebotomists() {
    return graphqlService.subscribe(DashboardQueries.watchPhlebotomists).map((
      result,
    ) {
      if (result.hasException) {
        throw ServerException(
          result.exception?.graphqlErrors.first.message ??
              'Failed to watch phlebotomists',
        );
      }
      return (result.data?['phlebotomistsUpdated'] as List)
          .map(
            (json) => PhlebotomistModel.fromJson(json as Map<String, dynamic>),
          )
          .toList();
    });
  }
}
