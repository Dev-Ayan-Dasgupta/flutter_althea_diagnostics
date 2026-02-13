import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import '../../../../core/config/design/export.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/export.dart';
import '../../../../core/utils/navigation_extensions.dart';
import '../../../sample_collection/domain/entities/sample_event.dart';
import '../providers/cold_chain_providers.dart';

class ColdChainLogScreen extends ConsumerStatefulWidget {
  final String sampleId;

  const ColdChainLogScreen({super.key, required this.sampleId});

  @override
  ConsumerState<ColdChainLogScreen> createState() => _ColdChainLogScreenState();
}

class _ColdChainLogScreenState extends ConsumerState<ColdChainLogScreen> {
  final _temperatureController = TextEditingController();
  final _humidityController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  void dispose() {
    _temperatureController.dispose();
    _humidityController.dispose();
    super.dispose();
  }

  Future<void> _logTemperature() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      // Get current location
      final position = await Geolocator.getCurrentPosition();
      final location = GeoLocation(
        latitude: position.latitude,
        longitude: position.longitude,
        accuracy: position.accuracy,
        timestamp: DateTime.now(),
      );

      await ref
          .read(coldChainProvider(widget.sampleId).notifier)
          .logTemperature(
            temperature: double.parse(_temperatureController.text),
            humidity: _humidityController.text.isNotEmpty
                ? double.parse(_humidityController.text)
                : null,
            location: location,
          );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Temperature logged successfully'),
            backgroundColor: AppColors.success,
            behavior: SnackBarBehavior.floating,
          ),
        );
        context.goBack();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to log temperature: ${e.toString()}'),
            backgroundColor: AppColors.critical,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: Column(
            children: [
              _buildAppBar(),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(AppDimensions.spacing24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Header
                        Center(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              gradient: AppGradients.secondaryButton,
                              shape: BoxShape.circle,
                              boxShadow: AppShadows.secondary,
                            ),
                            child: const Icon(
                              Icons.thermostat,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: AppDimensions.spacing24),
                        Center(
                          child: GradientText(
                            'Log Temperature',
                            style: AppTextStyles.h3.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                            gradient: AppGradients.primaryText,
                          ),
                        ),
                        const SizedBox(height: AppDimensions.spacing8),
                        Text(
                          'Manually record temperature reading',
                          style: AppTextStyles.bodyMedium.copyWith(
                            color: AppColors.textSecondary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: AppDimensions.spacing48),

                        // Temperature Input
                        AppCard(
                          child: Column(
                            children: [
                              AppInputField(
                                label: 'Temperature (°C)',
                                hint: 'e.g., 5.2',
                                controller: _temperatureController,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                      decimal: true,
                                    ),
                                prefixIcon: const Icon(Icons.thermostat),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                    RegExp(r'^\d*\.?\d{0,2}'),
                                  ),
                                ],
                                errorText: _validateTemperature(),
                              ),
                              const SizedBox(height: AppDimensions.spacing16),
                              AppInputField(
                                label: 'Humidity (%) - Optional',
                                hint: 'e.g., 65',
                                controller: _humidityController,
                                keyboardType: TextInputType.number,
                                prefixIcon: const Icon(Icons.water_drop),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: AppDimensions.spacing24),

                        // Guidelines
                        AppCard(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.info_outline,
                                    color: AppColors.textSecondary,
                                    size: 20,
                                  ),
                                  const SizedBox(width: AppDimensions.spacing8),
                                  Text(
                                    'Temperature Guidelines',
                                    style: AppTextStyles.bodyMedium.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: AppDimensions.spacing12),
                              _buildGuidelineRow(
                                'Acceptable Range',
                                '2°C - 8°C',
                                AppColors.success,
                              ),
                              _buildGuidelineRow(
                                'Warning',
                                '< 2°C or > 8°C',
                                AppColors.warning,
                              ),
                              _buildGuidelineRow(
                                'Critical',
                                '< 0°C or > 10°C',
                                AppColors.critical,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: AppDimensions.spacing32),

                        // Submit Button
                        AppButton(
                          text: 'Log Temperature',
                          onPressed: _isLoading ? null : _logTemperature,
                          isLoading: _isLoading,
                          fullWidth: true,
                          size: AppButtonSize.large,
                          icon: const Icon(Icons.check_circle),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => context.goBack(),
            child: Container(
              padding: const EdgeInsets.all(AppDimensions.spacing8),
              decoration: BoxDecoration(
                gradient: AppGradients.surfaceDark,
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
                boxShadow: AppShadows.soft,
              ),
              child: const Icon(Icons.close),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGuidelineRow(String label, String value, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppDimensions.spacing8),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: AppDimensions.spacing8),
          Text(
            label,
            style: AppTextStyles.bodySmall.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: AppTextStyles.bodySmall.copyWith(
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  String? _validateTemperature() {
    if (_temperatureController.text.isEmpty) return null;

    final temp = double.tryParse(_temperatureController.text);
    if (temp == null) return 'Invalid temperature';

    if (temp < -20 || temp > 50) {
      return 'Temperature out of valid range';
    }

    return null;
  }
}
