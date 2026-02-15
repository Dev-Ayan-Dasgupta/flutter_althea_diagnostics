import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../features/auth/presentation/providers/auth_providers.dart';
import '../../../features/auth/presentation/screens/login_screen.dart';
import '../../../features/auth/presentation/screens/otp_verification_screen.dart';
import '../../../features/cold_chain/presentation/screens/cold_chain_log_screen.dart';
import '../../../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../../../features/notifications/presentation/screens/notifications_screen.dart';
import '../../../features/onboarding/presentation/screens/export.dart';
import '../../../features/sample_collection/presentation/screens/export.dart';
import '../../../features/sample_integrity/presentation/screens/integrity_dashboard_screen.dart';
import '../../../features/cold_chain/presentation/screens/cold_chain_monitor_screen.dart';
import '../../../features/result_entry/presentation/screens/result_entry_screen.dart';
import '../../presentation/screens/error_screen.dart';
import '../../presentation/screens/profile_screen.dart';
import '../../presentation/screens/settings_screen.dart';
import '../../utils/responsive_helper.dart';
import 'app_shell.dart';

// Route Names
class AppRoutes {
  AppRoutes._();

  // Auth Routes
  static const String login = '/login';
  static const String otpVerification = '/otp-verification';

  // Dashboard
  static const String dashboard = '/';
  static const String labPulse = '/lab-pulse';

  // Sample Collection
  static const String samples = '/samples';
  static const String sampleDetail = '/samples/:id';
  static const String scanBarcode = '/scan-barcode';
  static const String manualBarcodeEntry = '/manual-barcode-entry';
  static const String collectSample = '/collect-sample/:id';

  // Sample Integrity
  static const String integrityDashboard = '/integrity';
  static const String integrityDetail = '/integrity/:id';

  // Cold Chain
  static const String coldChainMonitor = '/cold-chain/:id';
  static const String coldChainLog = '/cold-chain/:id/log';

  // Result Entry
  static const String resultEntry = '/results/entry/:sampleId';
  static const String resultReview = '/results/review/:resultId';

  // Settings
  static const String settings = '/settings';
  static const String profile = '/profile';

  // Notifications
  static const String notifications = '/notifications';

  // Onboarding
  static const String onboarding = '/onboarding';
  static const String permissions = '/permissions';
}

// Router Provider
final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    initialLocation: AppRoutes.login,
    // debugLogDiagnostics: true,
    redirect: (context, state) async {
      // Check authentication and onboarding status
      final isAuthenticated = authState.value != null;
      final currentPath = state.matchedLocation;

      // Check if onboarding is completed
      final prefs = await SharedPreferences.getInstance();
      final onboardingCompleted =
          prefs.getBool('onboarding_completed') ?? false;

      // If not completed onboarding and not on onboarding routes
      if (!onboardingCompleted &&
          currentPath != AppRoutes.onboarding &&
          currentPath != AppRoutes.permissions) {
        return AppRoutes.onboarding;
      }

      // If onboarding completed but not authenticated
      if (onboardingCompleted && !isAuthenticated) {
        // Allow access to login and OTP screens
        if (currentPath == AppRoutes.login ||
            currentPath == AppRoutes.otpVerification) {
          return null; // Stay on current route
        }
        return AppRoutes.login; // Redirect to login
      }

      // If authenticated and trying to access auth screens
      if (isAuthenticated &&
          (currentPath == AppRoutes.login ||
              currentPath == AppRoutes.otpVerification ||
              currentPath == AppRoutes.onboarding ||
              currentPath == AppRoutes.permissions)) {
        return AppRoutes.dashboard;
      }

      return null; // No redirect needed
    },
    routes: [
      // Onboarding Routes
      GoRoute(
        path: AppRoutes.onboarding,
        name: 'onboarding',
        pageBuilder: (context, state) => _buildPageWithTransition(
          context: context,
          state: state,
          child: const OnboardingScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.permissions,
        name: 'permissions',
        pageBuilder: (context, state) => _buildPageWithTransition(
          context: context,
          state: state,
          child: const PermissionsScreen(),
        ),
      ),
      // Auth Routes
      GoRoute(
        path: AppRoutes.login,
        name: 'login',
        pageBuilder: (context, state) => _buildPageWithTransition(
          context: context,
          state: state,
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.otpVerification,
        name: 'otp-verification',
        pageBuilder: (context, state) {
          final phoneNumber = state.uri.queryParameters['phone'] ?? '';
          return _buildPageWithTransition(
            context: context,
            state: state,
            child: OtpVerificationScreen(phoneNumber: phoneNumber),
          );
        },
      ),

      // Main App Shell with Bottom Navigation
      ShellRoute(
        builder: (context, state, child) {
          return AppShell(child: child);
        },
        routes: [
          // Dashboard
          GoRoute(
            path: AppRoutes.dashboard,
            name: 'dashboard',
            pageBuilder: (context, state) =>
                NoTransitionPage(child: const DashboardScreen()),
          ),

          // Samples List
          GoRoute(
            path: AppRoutes.samples,
            name: 'samples',
            pageBuilder: (context, state) =>
                NoTransitionPage(child: const SamplesListScreen()),
            routes: [
              // Sample Detail
              GoRoute(
                path: ':id',
                name: 'sample-detail',
                pageBuilder: (context, state) {
                  final sampleId = state.pathParameters['id']!;
                  return _buildPageWithTransition(
                    context: context,
                    state: state,
                    child: SampleDetailScreen(sampleId: sampleId),
                  );
                },
              ),
            ],
          ),

          // Integrity Dashboard
          GoRoute(
            path: AppRoutes.integrityDashboard,
            name: 'integrity-dashboard',
            pageBuilder: (context, state) =>
                NoTransitionPage(child: const IntegrityDashboardScreen()),
          ),

          // Settings
          GoRoute(
            path: AppRoutes.settings,
            name: 'settings',
            pageBuilder: (context, state) =>
                NoTransitionPage(child: const SettingsScreen()),
          ),
        ],
      ),

      // Full Screen Routes (Outside Shell)

      // Barcode Scanner
      GoRoute(
        path: AppRoutes.scanBarcode,
        name: 'scan-barcode',
        pageBuilder: (context, state) => _buildPageWithTransition(
          context: context,
          state: state,
          child: const BarcodeScannerScreen(),
          fullscreenDialog: true,
        ),
      ),

      // Manual Barcode Entry
      GoRoute(
        path: '/manual-barcode-entry',
        name: 'manual-barcode-entry',
        pageBuilder: (context, state) => _buildPageWithTransition(
          context: context,
          state: state,
          child: const ManualBarcodeEntryScreen(),
          fullscreenDialog: true,
        ),
      ),

      // Sample Collection
      GoRoute(
        path: AppRoutes.collectSample,
        name: 'collect-sample',
        pageBuilder: (context, state) {
          final sampleId = state.pathParameters['id']!;
          return _buildPageWithTransition(
            context: context,
            state: state,
            child: SampleCollectionScreen(sampleId: sampleId),
          );
        },
      ),

      // Cold Chain Monitor
      GoRoute(
        path: AppRoutes.coldChainMonitor,
        name: 'cold-chain-monitor',
        pageBuilder: (context, state) {
          final sampleId = state.pathParameters['id']!;
          return _buildPageWithTransition(
            context: context,
            state: state,
            child: ColdChainMonitorScreen(sampleId: sampleId),
          );
        },
        routes: [
          GoRoute(
            path: 'log',
            name: 'cold-chain-log',
            pageBuilder: (context, state) {
              final sampleId = state.pathParameters['id']!;
              return _buildPageWithTransition(
                context: context,
                state: state,
                child: ColdChainLogScreen(sampleId: sampleId),
                fullscreenDialog: true,
              );
            },
          ),
        ],
      ),

      // Result Entry
      GoRoute(
        path: AppRoutes.resultEntry,
        name: 'result-entry',
        pageBuilder: (context, state) {
          final sampleId = state.pathParameters['sampleId']!;
          return _buildPageWithTransition(
            context: context,
            state: state,
            child: ResultEntryScreen(sampleId: sampleId),
          );
        },
      ),

      // Profile
      GoRoute(
        path: AppRoutes.profile,
        name: 'profile',
        pageBuilder: (context, state) => _buildPageWithTransition(
          context: context,
          state: state,
          child: const ProfileScreen(),
        ),
      ),

      // Add to routes list
      GoRoute(
        path: AppRoutes.notifications,
        name: 'notifications',
        pageBuilder: (context, state) => _buildPageWithTransition(
          context: context,
          state: state,
          child: const NotificationsScreen(),
        ),
      ),
    ],

    // Error Handling
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: ErrorScreen(error: state.error),
    ),
  );
});

// Page Transition Helper
Page _buildPageWithTransition({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  bool fullscreenDialog = false,
}) {
  final deviceType = ResponsiveHelper.getDeviceType(context);

  // No transition for desktop/tablet
  if (deviceType != DeviceType.mobile) {
    return NoTransitionPage(child: child);
  }

  // Slide transition for mobile
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOutCubic;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
    fullscreenDialog: fullscreenDialog,
  );
}
