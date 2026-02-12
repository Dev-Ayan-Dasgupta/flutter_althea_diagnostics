import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'core/network/graphql_client.dart';
import 'core/providers/theme_provider.dart';
import 'core/config/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();
  await initHiveForFlutter(); // For GraphQL cache

  // Initialize GraphQL
  await GraphQLService.instance.initialize();

  runApp(
    const ProviderScope(
      child: DiagnosticPartnerApp(),
    ),
  );
}

class DiagnosticPartnerApp extends ConsumerWidget {
  const DiagnosticPartnerApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'AltheaCare Diagnostics',
      debugShowCheckedModeBanner: false,

      // Theme
      theme: ref.watch(lightThemeProvider),
      darkTheme: ref.watch(darkThemeProvider),
      themeMode: themeMode,

      // Router
      routerConfig: router,
    );
  }
}
