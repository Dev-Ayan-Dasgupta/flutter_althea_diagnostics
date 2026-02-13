import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:vibration/vibration.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/scanner_overlay.dart';
import '../../../../core/presentation/widgets/scan_success_animation.dart';
import '../../../../core/utils/navigation_extensions.dart';
import 'package:geolocator/geolocator.dart';
import '../../../sample_collection/domain/entities/sample_event.dart';
import '../providers/sample_providers.dart';

class BarcodeScannerScreen extends ConsumerStatefulWidget {
  const BarcodeScannerScreen({super.key});

  @override
  ConsumerState<BarcodeScannerScreen> createState() =>
      _BarcodeScannerScreenState();
}

class _BarcodeScannerScreenState extends ConsumerState<BarcodeScannerScreen>
    with WidgetsBindingObserver {
  MobileScannerController? _controller;
  bool _isProcessing = false;
  bool _showSuccess = false;
  String? _scannedCode;
  bool _torchEnabled = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initializeScanner();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller?.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (_controller == null) return;

    switch (state) {
      case AppLifecycleState.resumed:
        _controller?.start();
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        _controller?.stop();
        break;
      case AppLifecycleState.hidden:
        break;
    }
  }

  void _initializeScanner() {
    _controller = MobileScannerController(
      detectionSpeed: DetectionSpeed.normal,
      facing: CameraFacing.back,
      torchEnabled: false,
    );
  }

  Future<void> _handleBarcode(BarcodeCapture capture) async {
    if (_isProcessing) return;

    final barcode = capture.barcodes.firstOrNull;
    if (barcode?.rawValue == null) return;

    setState(() {
      _isProcessing = true;
      _scannedCode = barcode!.rawValue;
    });

    // Haptic feedback
    if (await Vibration.hasVibrator()) {
      Vibration.vibrate(duration: 100);
    }

    // Stop scanner
    _controller?.stop();

    // Show success animation
    setState(() => _showSuccess = true);
  }

  Future<void> _processScanResult() async {
    if (_scannedCode == null) return;

    try {
      // Get current location
      final position = await Geolocator.getCurrentPosition();
      final location = GeoLocation(
        latitude: position.latitude,
        longitude: position.longitude,
        accuracy: position.accuracy,
        timestamp: DateTime.now(),
      );

      // TODO: Get current user ID from auth provider
      const phlebotomistId = 'current-user-id';

      // Scan barcode
      await ref
          .read(sampleProvider(_scannedCode!).notifier)
          .scanBarcode(
            vialId: _scannedCode!,
            phlebotomistId: phlebotomistId,
            location: location,
          );

      if (mounted) {
        // Navigate to sample detail
        context.goToSampleDetail(_scannedCode!);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to process barcode: ${e.toString()}'),
            backgroundColor: AppColors.critical,
            behavior: SnackBarBehavior.floating,
          ),
        );
        // Restart scanner
        setState(() {
          _showSuccess = false;
          _isProcessing = false;
        });
        _controller?.start();
      }
    }
  }

  void _toggleTorch() {
    setState(() => _torchEnabled = !_torchEnabled);
    _controller?.toggleTorch();
  }

  void _switchCamera() {
    _controller?.switchCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Camera View
          if (_controller != null)
            MobileScanner(controller: _controller, onDetect: _handleBarcode),

          // Overlay
          if (!_showSuccess)
            ScannerOverlay(
              message: 'Position the barcode within the frame',
              scanAreaSize: 250,
            ),

          // Success Animation
          if (_showSuccess)
            ScanSuccessAnimation(
              code: _scannedCode!,
              onComplete: _processScanResult,
            ),

          // Top Controls
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppDimensions.spacing16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildControlButton(
                        icon: Icons.close,
                        onTap: () => context.goBack(),
                      ),
                      _buildControlButton(
                        icon: _torchEnabled ? Icons.flash_on : Icons.flash_off,
                        onTap: _toggleTorch,
                      ),
                    ],
                  ),
                  const Spacer(),
                  // Bottom Instructions
                  if (!_showSuccess) ...[
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: AppDimensions.spacing32,
                      ),
                      padding: const EdgeInsets.all(AppDimensions.spacing20),
                      decoration: BoxDecoration(
                        gradient: AppGradients.surfaceDark,
                        borderRadius: BorderRadius.circular(
                          AppDimensions.radiusLarge,
                        ),
                        boxShadow: AppShadows.strong,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.qr_code_scanner,
                            size: 48,
                            color: AppColors.primary,
                          ),
                          const SizedBox(height: AppDimensions.spacing16),
                          Text(
                            'Scan Sample Barcode',
                            style: AppTextStyles.h4.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: AppDimensions.spacing8),
                          Text(
                            'Align the barcode within the frame to scan',
                            style: AppTextStyles.bodySmall.copyWith(
                              color: AppColors.textSecondary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: AppDimensions.spacing24),
                          Row(
                            children: [
                              Expanded(
                                child: AppButton(
                                  text: 'Manual Entry',
                                  onPressed: () {
                                    context.goBack();
                                    context.goToManualBarcodeEntry();
                                  },
                                  type: AppButtonType.outline,
                                  size: AppButtonSize.small,
                                  icon: const Icon(Icons.edit),
                                ),
                              ),
                              const SizedBox(width: AppDimensions.spacing12),
                              Expanded(
                                child: AppButton(
                                  text: 'Flip Camera',
                                  onPressed: _switchCamera,
                                  type: AppButtonType.outline,
                                  size: AppButtonSize.small,
                                  icon: const Icon(Icons.flip_camera_ios),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppDimensions.spacing12),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.5),
          shape: BoxShape.circle,
          boxShadow: AppShadows.soft,
        ),
        child: Icon(icon, color: Colors.white, size: AppDimensions.iconLarge),
      ),
    );
  }
}
