import 'package:flutter_riverpod/legacy.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSettings {
  final bool notificationsEnabled;
  final bool soundEnabled;
  final bool vibrationEnabled;
  final bool orderAlertsEnabled;
  final bool autoAcceptOrders;
  final double orderRadius; // in km
  final bool syncOnWifiOnly;

  AppSettings({
    this.notificationsEnabled = true,
    this.soundEnabled = true,
    this.vibrationEnabled = true,
    this.orderAlertsEnabled = true,
    this.autoAcceptOrders = false,
    this.orderRadius = 5.0,
    this.syncOnWifiOnly = false,
  });

  AppSettings copyWith({
    bool? notificationsEnabled,
    bool? soundEnabled,
    bool? vibrationEnabled,
    bool? orderAlertsEnabled,
    bool? autoAcceptOrders,
    double? orderRadius,
    bool? syncOnWifiOnly,
  }) {
    return AppSettings(
      notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
      soundEnabled: soundEnabled ?? this.soundEnabled,
      vibrationEnabled: vibrationEnabled ?? this.vibrationEnabled,
      orderAlertsEnabled: orderAlertsEnabled ?? this.orderAlertsEnabled,
      autoAcceptOrders: autoAcceptOrders ?? this.autoAcceptOrders,
      orderRadius: orderRadius ?? this.orderRadius,
      syncOnWifiOnly: syncOnWifiOnly ?? this.syncOnWifiOnly,
    );
  }
}

class AppSettingsNotifier extends StateNotifier<AppSettings> {
  AppSettingsNotifier() : super(AppSettings()) {
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    state = AppSettings(
      notificationsEnabled: prefs.getBool('notifications_enabled') ?? true,
      soundEnabled: prefs.getBool('sound_enabled') ?? true,
      vibrationEnabled: prefs.getBool('vibration_enabled') ?? true,
      orderAlertsEnabled: prefs.getBool('order_alerts_enabled') ?? true,
      autoAcceptOrders: prefs.getBool('auto_accept_orders') ?? false,
      orderRadius: prefs.getDouble('order_radius') ?? 5.0,
      syncOnWifiOnly: prefs.getBool('sync_wifi_only') ?? false,
    );
  }

  Future<void> setNotificationsEnabled(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('notifications_enabled', value);
    state = state.copyWith(notificationsEnabled: value);
  }

  Future<void> setSoundEnabled(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('sound_enabled', value);
    state = state.copyWith(soundEnabled: value);
  }

  Future<void> setVibrationEnabled(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('vibration_enabled', value);
    state = state.copyWith(vibrationEnabled: value);
  }

  Future<void> setOrderAlertsEnabled(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('order_alerts_enabled', value);
    state = state.copyWith(orderAlertsEnabled: value);
  }

  Future<void> setAutoAcceptOrders(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('auto_accept_orders', value);
    state = state.copyWith(autoAcceptOrders: value);
  }

  Future<void> setOrderRadius(double value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('order_radius', value);
    state = state.copyWith(orderRadius: value);
  }

  Future<void> setSyncOnWifiOnly(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('sync_wifi_only', value);
    state = state.copyWith(syncOnWifiOnly: value);
  }
}

final appSettingsProvider =
    StateNotifierProvider<AppSettingsNotifier, AppSettings>((ref) {
      return AppSettingsNotifier();
    });
