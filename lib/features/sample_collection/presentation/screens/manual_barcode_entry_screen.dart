import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/export.dart';
import '../../../../core/utils/navigation_extensions.dart';

class ManualBarcodeEntryScreen extends ConsumerStatefulWidget {
  const ManualBarcodeEntryScreen({super.key});

  @override
  ConsumerState<ManualBarcodeEntryScreen> createState() =>
      _ManualBarcodeEntryScreenState();
}

class _ManualBarcodeEntryScreenState
    extends ConsumerState<ManualBarcodeEntryScreen> {
  final _barcodeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isProcessing = false;

  @override
  void dispose() {
    _barcodeController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isProcessing = true);

    try {
      // Navigate to sample detail with the entered barcode
      context.goToSampleDetail(_barcodeController.text.trim());
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to process barcode: ${e.toString()}'),
            backgroundColor: AppColors.critical,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isProcessing = false);
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
                        const SizedBox(height: AppDimensions.spacing32),
                        // Icon
                        Center(
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              gradient: AppGradients.primaryButton,
                              shape: BoxShape.circle,
                              boxShadow: AppShadows.primary,
                            ),
                            child: const Icon(
                              Icons.edit,
                              size: 60,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: AppDimensions.spacing32),
                        // Title
                        Center(
                          child: GradientText(
                            'Manual Entry',
                            style: AppTextStyles.h2.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                            gradient: AppGradients.primaryText,
                          ),
                        ),
                        const SizedBox(height: AppDimensions.spacing8),
                        Text(
                          'Enter the barcode manually if scanning fails',
                          style: AppTextStyles.bodyMedium.copyWith(
                            color: AppColors.textSecondary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: AppDimensions.spacing48),
                        // Input
                        AppCard(
                          child: Column(
                            children: [
                              AppInputField(
                                label: 'Vial Barcode',
                                hint: 'Enter vial ID or barcode',
                                controller: _barcodeController,
                                prefixIcon: const Icon(Icons.qr_code),
                                autofocus: true,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: AppDimensions.spacing32),
                        // Submit Button
                        AppButton(
                          text: 'Submit',
                          onPressed: _isProcessing ? null : _submit,
                          isLoading: _isProcessing,
                          fullWidth: true,
                          size: AppButtonSize.large,
                          icon: const Icon(Icons.check_circle),
                        ),
                        const SizedBox(height: AppDimensions.spacing16),
                        // Scan Instead
                        AppButton(
                          text: 'Scan Barcode Instead',
                          onPressed: () {
                            context.goBack();
                            context.goToScanBarcode();
                          },
                          type: AppButtonType.outline,
                          fullWidth: true,
                          icon: const Icon(Icons.qr_code_scanner),
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
}
