import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../domain/entities/order.dart';

class PatientAuthenticationSheet extends StatefulWidget {
  final CollectionOrder order;
  final VoidCallback onAuthenticated;

  const PatientAuthenticationSheet({
    super.key,
    required this.order,
    required this.onAuthenticated,
  });

  @override
  State<PatientAuthenticationSheet> createState() =>
      _PatientAuthenticationSheetState();
}

class _PatientAuthenticationSheetState extends State<PatientAuthenticationSheet>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? _qrController;
  String _otpCode = '';
  bool _isAuthenticating = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _qrController?.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _onQRViewCreated(QRViewController controller) {
    _qrController = controller;
    controller.scannedDataStream.listen((scanData) {
      _handleQRCode(scanData.code);
    });
  }

  Future<void> _handleQRCode(String? code) async {
    if (code == null) return;

    setState(() => _isAuthenticating = true);
    _qrController?.pauseCamera();

    // TODO: Verify QR code with backend
    await Future.delayed(const Duration(seconds: 1));

    if (mounted) {
      setState(() => _isAuthenticating = false);
      Navigator.pop(context);
      widget.onAuthenticated();
    }
  }

  Future<void> _verifyOTP() async {
    if (_otpCode.length != 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Please enter 6-digit OTP'),
          backgroundColor: AppColors.critical,
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }

    setState(() => _isAuthenticating = true);

    // TODO: Verify OTP with backend
    await Future.delayed(const Duration(seconds: 1));

    if (mounted) {
      setState(() => _isAuthenticating = false);
      Navigator.pop(context);
      widget.onAuthenticated();
    }
  }

  Future<void> _requestOTP() async {
    // TODO: Request OTP from backend
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('OTP sent to ${widget.order.patientPhone}'),
        backgroundColor: AppColors.success,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
        gradient: AppGradients.darkBackground,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppDimensions.radiusXLarge),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            // Handle
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.symmetric(
                vertical: AppDimensions.spacing12,
              ),
              decoration: BoxDecoration(
                color: AppColors.textSecondary,
                borderRadius: BorderRadius.circular(2),
              ),
            ),

            // Header
            Padding(
              padding: const EdgeInsets.all(AppDimensions.spacing16),
              child: Column(
                children: [
                  Text(
                    'Patient Authentication',
                    style: AppTextStyles.h4.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: AppDimensions.spacing8),
                  Text(
                    'Verify patient identity before proceeding',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Tabs
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: AppDimensions.spacing16,
              ),
              decoration: BoxDecoration(
                gradient: AppGradients.surfaceDark,
                borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  gradient: AppGradients.primaryButton,
                  borderRadius: BorderRadius.circular(
                    AppDimensions.radiusMedium,
                  ),
                ),
                dividerColor: Colors.transparent,
                labelStyle: AppTextStyles.bodyMedium.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                tabs: const [
                  Tab(icon: Icon(Icons.qr_code_scanner), text: 'Scan QR'),
                  Tab(icon: Icon(Icons.pin), text: 'Enter OTP'),
                ],
              ),
            ),

            // Tab Content
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [_buildQRTab(), _buildOTPTab()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQRTab() {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(AppDimensions.spacing24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppDimensions.radiusXLarge,
                    ),
                    border: Border.all(color: AppColors.primary, width: 3),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      AppDimensions.radiusXLarge,
                    ),
                    child: QRView(
                      key: qrKey,
                      onQRViewCreated: _onQRViewCreated,
                      overlay: QrScannerOverlayShape(
                        borderColor: AppColors.primary,
                        borderRadius: AppDimensions.radiusLarge,
                        borderLength: 30,
                        borderWidth: 10,
                        cutOutSize: 250,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: AppDimensions.spacing32),
                Text(
                  'Ask patient to show QR code from their app',
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                  textAlign: TextAlign.center,
                ),
                if (_isAuthenticating) ...[
                  const SizedBox(height: AppDimensions.spacing24),
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColors.primary,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOTPTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppDimensions.spacing24),
      child: Column(
        children: [
          const SizedBox(height: AppDimensions.spacing24),
          Icon(Icons.pin, size: 80, color: AppColors.primary),
          const SizedBox(height: AppDimensions.spacing32),
          Text(
            'Enter OTP from Patient',
            style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: AppDimensions.spacing8),
          Text(
            'Ask the patient for their 6-digit OTP',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppDimensions.spacing32),
          PinCodeTextField(
            appContext: context,
            length: 6,
            obscureText: false,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
              fieldHeight: 60,
              fieldWidth: 50,
              activeFillColor: AppColors.darkSurface,
              inactiveFillColor: AppColors.darkSurface,
              selectedFillColor: AppColors.darkSurfaceVariant,
              activeColor: AppColors.primary,
              inactiveColor: AppColors.darkSurfaceVariant,
              selectedColor: AppColors.primary,
            ),
            animationDuration: const Duration(milliseconds: 300),
            backgroundColor: Colors.transparent,
            enableActiveFill: true,
            keyboardType: TextInputType.number,
            onCompleted: (code) {
              setState(() => _otpCode = code);
            },
            onChanged: (value) {
              setState(() => _otpCode = value);
            },
          ),
          const SizedBox(height: AppDimensions.spacing32),
          AppButton(
            text: 'Verify OTP',
            onPressed: _isAuthenticating ? null : _verifyOTP,
            isLoading: _isAuthenticating,
            fullWidth: true,
            size: AppButtonSize.large,
            icon: const Icon(Icons.check_circle),
          ),
          const SizedBox(height: AppDimensions.spacing16),
          TextButton(
            onPressed: _requestOTP,
            child: Text(
              'Request New OTP',
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
