import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../network/graphql_client.dart';

// Core Providers

/// GraphQL Service Provider
final graphqlServiceProvider = Provider<GraphQLService>((ref) {
  return GraphQLService.instance;
});

/// Secure Storage Provider
final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return const FlutterSecureStorage();
});

/// Hive Provider (for local caching)
final hiveProvider = Provider<HiveInterface>((ref) {
  return Hive;
});
