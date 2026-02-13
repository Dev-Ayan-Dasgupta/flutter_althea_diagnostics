import '../../features/auth/domain/entities/user.dart';

class AppPermissions {
  AppPermissions._();

  // Sample Management
  static const String viewSamples = 'view_samples';
  static const String collectSamples = 'collect_samples';
  static const String scanBarcodes = 'scan_barcodes';
  static const String updateSampleStatus = 'update_sample_status';

  // Wallet & Earnings
  static const String viewWallet = 'view_wallet';
  static const String requestWithdrawal = 'request_withdrawal';
  static const String viewEarnings = 'view_earnings';

  // Staff Management
  static const String viewStaff = 'view_staff';
  static const String inviteStaff = 'invite_staff';
  static const String removeStaff = 'remove_staff';
  static const String updateStaffStatus = 'update_staff_status';

  // Analytics & Reports
  static const String viewAnalytics = 'view_analytics';
  static const String exportReports = 'export_reports';
  static const String viewLabMetrics = 'view_lab_metrics';

  // Lab Management
  static const String manageLabSettings = 'manage_lab_settings';
  static const String viewLabFinancials = 'view_lab_financials';
  static const String approvePayouts = 'approve_payouts';

  // Results
  static const String enterResults = 'enter_results';
  static const String verifyResults = 'verify_results';
  static const String signOffResults = 'sign_off_results';

  // Get permissions by role
  static Set<String> getPermissionsForRole(UserRole role) {
    switch (role) {
      case UserRole.phlebotomist:
        return {
          viewSamples,
          collectSamples,
          scanBarcodes,
          updateSampleStatus,
          viewWallet,
          requestWithdrawal,
          viewEarnings,
        };

      case UserRole.labAdmin:
        return {
          viewSamples,
          viewStaff,
          inviteStaff,
          removeStaff,
          updateStaffStatus,
          viewAnalytics,
          exportReports,
          viewLabMetrics,
          manageLabSettings,
          viewLabFinancials,
          approvePayouts,
        };

      case UserRole.labTechnician:
        return {viewSamples, updateSampleStatus, enterResults};

      case UserRole.pathologist:
        return {viewSamples, enterResults, verifyResults, signOffResults};

      case UserRole.platformAdmin:
        return {
          // All permissions
          viewSamples,
          collectSamples,
          scanBarcodes,
          updateSampleStatus,
          viewStaff,
          inviteStaff,
          removeStaff,
          updateStaffStatus,
          viewAnalytics,
          exportReports,
          viewLabMetrics,
          manageLabSettings,
          viewLabFinancials,
          approvePayouts,
          enterResults,
          verifyResults,
          signOffResults,
        };
    }
  }
}
