import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'core/network/graphql_client.dart';
import 'core/providers/theme_provider.dart';
import 'core/config/theme/app_theme.dart';

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

    return MaterialApp(
      title: 'AltheaCare Diagnostics',
      debugShowCheckedModeBanner: false,

      // Theme
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,

      // TODO: Add Go Router here
      home: const Scaffold(
        body: Center(
          child: Text('AltheaCare Diagnostic Partner App'),
        ),
      ),
    );
  }
}
