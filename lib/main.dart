import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'core/network/graphql_client.dart';
import 'core/presentation/widgets/export.dart';
import 'core/providers/theme_provider.dart';
import 'core/config/routes/app_router.dart';
import 'core/services/connectivity_service.dart';
import 'core/services/local_notification_service.dart';
import 'core/sync/services/sync_queue_service.dart';
import 'core/sync/services/background_sync_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();
  await initHiveForFlutter(); // For GraphQL cache

  // Initialize Services
  await GraphQLService.instance.initialize();
  await ConnectivityService().initialize();
  await LocalNotificationService().initialize();
  await SyncQueueService().initialize();

  // TODO: Initialize background sync with data sources
  // await BackgroundSyncService().initialize(
  //   sampleDataSource: sampleDataSource,
  //   coldChainDataSource: coldChainDataSource,
  // );

  runApp(const ProviderScope(child: DiagnosticPartnerApp()));
}

class DiagnosticPartnerApp extends ConsumerWidget {
  const DiagnosticPartnerApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final router = ref.watch(routerProvider);
    final connectionStatus = ref.watch(connectionStatusProvider);
    final syncProgress = ref.watch(syncProgressProvider);
    final queueSize = ref.watch(syncQueueSizeProvider);

    return MaterialApp.router(
      title: 'AltheaCare Diagnostics',
      debugShowCheckedModeBanner: false,

      // Theme
      theme: ref.watch(lightThemeProvider),
      darkTheme: ref.watch(darkThemeProvider),
      themeMode: themeMode,

      // Router
      routerConfig: router,

      // Global Offline Indicator
      builder: (context, child) {
        return Stack(
          children: [
            child ?? const SizedBox.shrink(),
            // Show offline indicator at top
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SafeArea(
                child: Column(
                  children: [
                    if (!(connectionStatus.value ?? true) ||
                        (queueSize.value ?? 0) > 0)
                      OfflineIndicator(
                        isOnline: connectionStatus.value ?? false,
                        pendingSyncCount: queueSize.value ?? 0,
                      ),
                    if (syncProgress.value != null)
                      SyncStatusBanner(
                        progress: syncProgress.value!,
                        onRetry: () {
                          ref.read(backgroundSyncServiceProvider).syncNow();
                        },
                      ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
