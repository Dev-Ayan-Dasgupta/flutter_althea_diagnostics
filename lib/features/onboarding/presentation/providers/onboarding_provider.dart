import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_provider.g.dart';

@riverpod
class OnboardingStatus extends _$OnboardingStatus {
  @override
  Future<bool> build() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('onboarding_completed') ?? false;
  }

  Future<void> complete() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_completed', true);
    state = const AsyncData(true);
  }

  Future<void> reset() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_completed', false);
    state = const AsyncData(false);
  }
}
