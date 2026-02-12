import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../utils/responsive_helper.dart';
import '../theme/app_colors.dart';
import 'app_router.dart';

class AppShell extends ConsumerStatefulWidget {
  final Widget child;

  const AppShell({super.key, required this.child});

  @override
  ConsumerState<AppShell> createState() => _AppShellState();
}

class _AppShellState extends ConsumerState<AppShell> {
  int _currentIndex = 0;

  final List<NavigationDestination> _mobileDestinations = [
    const NavigationDestination(
      icon: Icon(Icons.dashboard_outlined),
      selectedIcon: Icon(Icons.dashboard),
      label: 'Dashboard',
    ),
    const NavigationDestination(
      icon: Icon(Icons.science_outlined),
      selectedIcon: Icon(Icons.science),
      label: 'Samples',
    ),
    const NavigationDestination(
      icon: Icon(Icons.verified_outlined),
      selectedIcon: Icon(Icons.verified),
      label: 'Integrity',
    ),
    const NavigationDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: 'Settings',
    ),
  ];

  final List<NavigationRailDestination> _desktopDestinations = [
    const NavigationRailDestination(
      icon: Icon(Icons.dashboard_outlined),
      selectedIcon: Icon(Icons.dashboard),
      label: Text('Dashboard'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.science_outlined),
      selectedIcon: Icon(Icons.science),
      label: Text('Samples'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.verified_outlined),
      selectedIcon: Icon(Icons.verified),
      label: Text('Integrity'),
    ),
    const NavigationRailDestination(
      icon: Icon(Icons.settings_outlined),
      selectedIcon: Icon(Icons.settings),
      label: Text('Settings'),
    ),
  ];

  final List<String> _routes = [
    AppRoutes.dashboard,
    AppRoutes.samples,
    AppRoutes.integrityDashboard,
    AppRoutes.settings,
  ];

  void _onDestinationSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
    context.go(_routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    final deviceType = ResponsiveHelper.getDeviceType(context);

    // Update current index based on current route
    final currentLocation = GoRouterState.of(context).matchedLocation;
    for (int i = 0; i < _routes.length; i++) {
      if (currentLocation.startsWith(_routes[i])) {
        if (_currentIndex != i) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            setState(() {
              _currentIndex = i;
            });
          });
        }
        break;
      }
    }

    if (deviceType == DeviceType.mobile) {
      return Scaffold(
        body: widget.child,
        bottomNavigationBar: NavigationBar(
          selectedIndex: _currentIndex,
          onDestinationSelected: _onDestinationSelected,
          destinations: _mobileDestinations,
          backgroundColor: Theme.of(context).colorScheme.surface,
          indicatorColor: AppColors.primary.withValues(alpha: 0.2),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      );
    } else {
      return Scaffold(
        body: Row(
          children: [
            // Side Navigation Rail
            NavigationRail(
              selectedIndex: _currentIndex,
              onDestinationSelected: _onDestinationSelected,
              labelType: deviceType == DeviceType.tablet
                  ? NavigationRailLabelType.selected
                  : NavigationRailLabelType.all,
              destinations: _desktopDestinations,
              backgroundColor: Theme.of(context).colorScheme.surface,
              indicatorColor: AppColors.primary.withValues(alpha: 0.2),
              leading: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/logo.png', height: 40),
              ),
              trailing: Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: IconButton(
                      icon: const Icon(Icons.qr_code_scanner),
                      onPressed: () => context.push(AppRoutes.scanBarcode),
                      tooltip: 'Scan Barcode',
                    ),
                  ),
                ),
              ),
            ),
            const VerticalDivider(thickness: 1, width: 1),
            // Main Content
            Expanded(child: widget.child),
          ],
        ),
      );
    }
  }

  Widget? _buildFloatingActionButton(BuildContext context) {
    // Show FAB only on samples screen for mobile
    if (_currentIndex == 1) {
      return FloatingActionButton(
        onPressed: () => context.push(AppRoutes.scanBarcode),
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.qr_code_scanner),
      );
    }
    return null;
  }
}
