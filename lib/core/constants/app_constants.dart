class AppConstants {
  AppConstants._();

  // App Info
  static const String appName = 'AltheaCare Diagnostics';
  static const String appVersion = '1.0.0';

  // Timing Constants (in minutes)
  static const int criticalTatThreshold = 30; // For emergency tests
  static const int standardTatThreshold = 240; // 4 hours
  static const int coldChainLogInterval = 30; // Manual log every 30 min

  // Temperature Thresholds (Celsius)
  static const double coldChainMinTemp = 2.0;
  static const double coldChainMaxTemp = 8.0;
  static const double coldChainCriticalDeviation = 2.0;

  // BLE Biometric Handshake
  static const double bleProximityThreshold = 2.0; // meters
  static const int bleConnectionTimeout = 30; // seconds

  // Sample Integrity Scoring
  static const int integrityScoreHigh = 80;
  static const int integrityScoreMedium = 50;

  // Pagination
  static const int defaultPageSize = 20;

  // File Sizes
  static const int maxImageUploadSize = 5 * 1024 * 1024; // 5MB

  // FHIR/LOINC Standards
  static const String fhirVersion = '4.0.1';

  // Audit Trail
  static const int auditRetentionDays = 2555; // 7 years for medical records
}
