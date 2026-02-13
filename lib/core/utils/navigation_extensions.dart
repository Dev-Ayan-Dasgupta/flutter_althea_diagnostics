import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../config/routes/app_router.dart';

extension NavigationExtensions on BuildContext {
  // Sample Navigation
  void goToSampleDetail(String sampleId) {
    go(AppRoutes.sampleDetail.replaceFirst(':id', sampleId));
  }

  void goToCollectSample(String sampleId) {
    push(AppRoutes.collectSample.replaceFirst(':id', sampleId));
  }

  void goToScanBarcode() {
    push(AppRoutes.scanBarcode);
  }

  void goToManualBarcodeEntry() {
    push(AppRoutes.manualBarcodeEntry);
  }

  void goToNotifications() {
    push(AppRoutes.notifications);
  }

  // Cold Chain Navigation
  void goToColdChainMonitor(String sampleId) {
    push(AppRoutes.coldChainMonitor.replaceFirst(':id', sampleId));
  }

  void goToColdChainLog(String sampleId) {
    push(AppRoutes.coldChainLog.replaceFirst(':id', sampleId));
  }

  // Result Entry Navigation
  void goToResultEntry(String sampleId) {
    push(AppRoutes.resultEntry.replaceFirst(':sampleId', sampleId));
  }

  // Integrity Navigation
  void goToIntegrityDetail(String sampleId) {
    push(AppRoutes.integrityDetail.replaceFirst(':id', sampleId));
  }

  // Profile & Settings
  void goToProfile() {
    push(AppRoutes.profile);
  }

  void goToSettings() {
    go(AppRoutes.settings);
  }

  // Auth Navigation
  void goToLogin() {
    go(AppRoutes.login);
  }

  void goToOtpVerification(String phoneNumber) {
    push('${AppRoutes.otpVerification}?phone=$phoneNumber');
  }

  // Dashboard
  void goToDashboard() {
    go(AppRoutes.dashboard);
  }

  // Generic navigation helpers
  void goBack() {
    if (canPop()) {
      pop();
    } else {
      go(AppRoutes.dashboard);
    }
  }

  void goBackWithResult<T>(T result) {
    pop(result);
  }

  // Show dialogs with navigation context
  Future<T?> showAppDialog<T>({
    required Widget child,
    bool barrierDismissible = true,
  }) {
    return showDialog<T>(
      context: this,
      barrierDismissible: barrierDismissible,
      builder: (context) => child,
    );
  }

  // Show bottom sheet
  Future<T?> showAppBottomSheet<T>({
    required Widget child,
    bool isDismissible = true,
    bool enableDrag = true,
  }) {
    return showModalBottomSheet<T>(
      context: this,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => child,
    );
  }
}
