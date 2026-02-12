import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../constants/api_constants.dart';

class GraphQLService {
  static GraphQLService? _instance;
  static GraphQLService get instance => _instance ??= GraphQLService._();

  GraphQLService._();

  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  GraphQLClient? _client;
  ValueNotifier<GraphQLClient>? _clientNotifier;

  /// Initialize GraphQL client
  Future<void> initialize() async {
    final HttpLink httpLink = HttpLink(
      ApiConstants.graphqlUrl,
    );

    final AuthLink authLink = AuthLink(
      getToken: () async {
        final token = await _secureStorage.read(key: 'access_token');
        return token != null ? 'Bearer $token' : '';
      },
    );

    final WebSocketLink websocketLink = WebSocketLink(
      ApiConstants.graphqlWsUrl,
      config: SocketClientConfig(
        autoReconnect: true,
        inactivityTimeout: const Duration(seconds: 30),
        initialPayload: () async {
          final token = await _secureStorage.read(key: 'access_token');
          return {
            'headers': {
              'Authorization': token != null ? 'Bearer $token' : '',
            },
          };
        },
      ),
    );

    final Link link = Link.split(
      (request) => request.isSubscription,
      websocketLink,
      authLink.concat(httpLink),
    );

    _client = GraphQLClient(
      cache: GraphQLCache(
        store: HiveStore(),
      ),
      link: link,
      defaultPolicies: DefaultPolicies(
        query: Policies(
          fetch: FetchPolicy.networkOnly,
          error: ErrorPolicy.all,
          cacheReread: CacheRereadPolicy.mergeOptimistic,
        ),
        mutate: Policies(
          fetch: FetchPolicy.networkOnly,
          error: ErrorPolicy.all,
        ),
        subscribe: Policies(
          fetch: FetchPolicy.networkOnly,
          error: ErrorPolicy.all,
        ),
      ),
    );

    _clientNotifier = ValueNotifier(_client!);
  }

  /// Get GraphQL client
  GraphQLClient get client {
    if (_client == null) {
      throw Exception(
          'GraphQL client not initialized. Call initialize() first.');
    }
    return _client!;
  }

  /// Get client notifier for GraphQLProvider
  ValueNotifier<GraphQLClient> get clientNotifier {
    if (_clientNotifier == null) {
      throw Exception(
          'GraphQL client not initialized. Call initialize() first.');
    }
    return _clientNotifier!;
  }

  /// Execute query
  Future<QueryResult> query(
    String query, {
    Map<String, dynamic>? variables,
    FetchPolicy? fetchPolicy,
  }) async {
    final result = await client.query(
      QueryOptions(
        document: gql(query),
        variables: variables ?? {},
        fetchPolicy: fetchPolicy ?? FetchPolicy.networkOnly,
      ),
    );

    return result;
  }

  /// Execute mutation
  Future<QueryResult> mutate(
    String mutation, {
    Map<String, dynamic>? variables,
  }) async {
    final result = await client.mutate(
      MutationOptions(
        document: gql(mutation),
        variables: variables ?? {},
      ),
    );

    return result;
  }

  /// Subscribe to updates
  Stream<QueryResult> subscribe(
    String subscription, {
    Map<String, dynamic>? variables,
  }) {
    return client.subscribe(
      SubscriptionOptions(
        document: gql(subscription),
        variables: variables ?? {},
      ),
    );
  }

  /// Dispose client
  void dispose() {
    _client = null;
    _clientNotifier = null;
  }
}
