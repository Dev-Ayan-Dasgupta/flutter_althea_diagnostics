import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_animations.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/presentation/widgets/app_card.dart';
import '../../../../core/utils/responsive_helper.dart';
import '../../../../core/utils/navigation_extensions.dart';
import '../providers/auth_providers.dart';

class OtpVerificationScreen extends ConsumerStatefulWidget {
  final String phoneNumber;

  const OtpVerificationScreen({super.key, required this.phoneNumber});

  @override
  ConsumerState<OtpVerificationScreen> createState() =>
      _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends ConsumerState<OtpVerificationScreen>
    with TickerProviderStateMixin {
  final List<TextEditingController> _controllers = List.generate(
    6,
    (_) => TextEditingController(),
  );
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());

  int _resendTimer = 60;
  Timer? _timer;

  late AnimationController _pulseController;
  late Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    _startResendTimer();

    _pulseController = AnimationController(
      vsync: this,
      duration: AppAnimations.verySlow,
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(begin: 0.95, end: 1.05).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    _timer?.cancel();
    _pulseController.dispose();
    super.dispose();
  }

  void _startResendTimer() {
    _timer?.cancel();
    setState(() => _resendTimer = 60);

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_resendTimer > 0) {
        setState(() => _resendTimer--);
      } else {
        timer.cancel();
      }
    });
  }

  void _handleOtpChange(int index, String value) {
    if (value.isNotEmpty && index < 5) {
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }

    // Auto-submit when all digits are entered
    if (index == 5 && value.isNotEmpty) {
      _verifyOtp();
    }
  }

  void _verifyOtp() {
    final otp = _controllers.map((c) => c.text).join();
    if (otp.length == 6) {
      ref
          .read(authProvider.notifier)
          .loginWithOtp(phoneNumber: widget.phoneNumber, otp: otp);
    }
  }

  void _resendOtp() async {
    if (_resendTimer == 0) {
      // TODO: Implement resend OTP
      _startResendTimer();

      // Show feedback
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('OTP sent successfully!'),
          backgroundColor: AppColors.success,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    final isLoading = authState.isLoading;
    final deviceType = ResponsiveHelper.getDeviceType(context);

    // Listen for auth state changes to navigate after successful OTP verification
    ref.listen(authProvider, (previous, next) {
      // Navigate to dashboard on successful authentication
      if (next.hasValue && next.value != null) {
        context.goToDashboard();
      }
      // Show error message on failure
      else if (next.hasError && mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('OTP verification failed: ${next.error}'),
            backgroundColor: AppColors.error,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
            ),
          ),
        );
      }
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: Column(
            children: [
              // App Bar
              Padding(
                padding: const EdgeInsets.all(AppDimensions.spacing16),
                child: Row(
                  children: [
                    AppButton(
                      text: 'Back',
                      onPressed: () => Navigator.pop(context),
                      type: AppButtonType.text,
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ],
                ),
              ),

              // Content
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(
                      deviceType == DeviceType.mobile
                          ? AppDimensions.spacing24
                          : AppDimensions.spacing48,
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: deviceType == DeviceType.mobile
                            ? double.infinity
                            : AppDimensions.maxContentWidthMobile,
                      ),
                      child: Column(
                        children: [
                          // Phone Icon with Pulse Animation
                          ScaleTransition(
                            scale: _pulseAnimation,
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: AppGradients.secondaryButton,
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.secondary.withValues(
                                      alpha: 0.5,
                                    ),
                                    blurRadius: 30,
                                    spreadRadius: 5,
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.sms_outlined,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          const SizedBox(height: AppDimensions.spacing32),

                          // Title
                          Text(
                            'Enter Verification Code',
                            style: AppTextStyles.h2.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                          const SizedBox(height: AppDimensions.spacing8),

                          Text(
                            'We sent a code to ${widget.phoneNumber}',
                            style: AppTextStyles.bodyMedium.copyWith(
                              color: AppColors.textSecondary,
                            ),
                            textAlign: TextAlign.center,
                          ),

                          const SizedBox(height: AppDimensions.spacing48),

                          // OTP Input Card
                          AppCard(
                            padding: EdgeInsets.symmetric(
                              horizontal: deviceType == DeviceType.mobile
                                  ? AppDimensions.spacing16
                                  : AppDimensions.spacing32,
                              vertical: deviceType == DeviceType.mobile
                                  ? AppDimensions.spacing24
                                  : AppDimensions.spacing48,
                            ),
                            child: Column(
                              children: [
                                // OTP Input Fields
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: List.generate(
                                    6,
                                    (index) => _buildOtpDigit(index),
                                  ),
                                ),

                                const SizedBox(height: AppDimensions.spacing32),

                                // Verify Button
                                AppButton(
                                  text: 'Verify OTP',
                                  onPressed: isLoading ? null : _verifyOtp,
                                  isLoading: isLoading,
                                  fullWidth: true,
                                  size: AppButtonSize.large,
                                  icon: const Icon(
                                    Icons.check_circle_outline,
                                    size: AppDimensions.iconMedium,
                                  ),
                                ),

                                const SizedBox(height: AppDimensions.spacing16),

                                // Resend Timer
                                _buildResendSection(),
                              ],
                            ),
                          ),
                        ],
                      ),
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

  Widget _buildOtpDigit(int index) {
    return Container(
      width: ResponsiveHelper.isMobile(context) ? 48 : 80,
      height: ResponsiveHelper.isMobile(context) ? 48 : 80,
      decoration: BoxDecoration(
        gradient: AppGradients.surfaceDark,
        borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        boxShadow: _focusNodes[index].hasFocus
            ? [
                BoxShadow(
                  color: AppColors.primary.withValues(alpha: 0.3),
                  blurRadius: 15,
                  spreadRadius: 2,
                ),
              ]
            : [],
      ),
      child: TextField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.w700),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: const InputDecoration(
          border: InputBorder.none,
          counterText: '',
        ),
        onChanged: (value) => _handleOtpChange(index, value),
      ),
    );
  }

  Widget _buildResendSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _resendTimer > 0
              ? 'Resend code in ${_resendTimer}s'
              : 'Didn\'t receive code?',
          style: AppTextStyles.bodyMedium.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
        if (_resendTimer == 0) ...[
          const SizedBox(width: AppDimensions.spacing8),
          AppButton(
            text: 'Resend',
            onPressed: _resendOtp,
            type: AppButtonType.text,
          ),
        ],
      ],
    );
  }
}
