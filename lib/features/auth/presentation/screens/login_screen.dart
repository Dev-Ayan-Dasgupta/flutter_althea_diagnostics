import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_animations.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/export.dart';
import '../../../../core/utils/responsive_helper.dart';
import '../../../../core/utils/navigation_extensions.dart';
import '../providers/auth_providers.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen>
    with TickerProviderStateMixin {
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();

  bool _isEmailLogin = true;
  bool _obscurePassword = true;

  late AnimationController _fadeController;
  late AnimationController _slideController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _fadeController = AnimationController(
      vsync: this,
      duration: AppAnimations.slow,
    );

    _slideController = AnimationController(
      vsync: this,
      duration: AppAnimations.medium,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _fadeController, curve: AppAnimations.curve),
    );

    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.1), end: Offset.zero).animate(
          CurvedAnimation(parent: _slideController, curve: AppAnimations.curve),
        );

    _fadeController.forward();
    _slideController.forward();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _phoneController.dispose();
    _fadeController.dispose();
    _slideController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void _handleLogin() async {
    // Unfocus text fields
    FocusManager.instance.primaryFocus?.unfocus();

    if (_isEmailLogin) {
      // Validate inputs
      if (_emailController.text.trim().isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Please enter your email'),
            backgroundColor: AppColors.errorRed,
            behavior: SnackBarBehavior.floating,
          ),
        );
        return;
      }

      if (_passwordController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Please enter your password'),
            backgroundColor: AppColors.errorRed,
            behavior: SnackBarBehavior.floating,
          ),
        );
        return;
      }

      // Attempt login
      await ref
          .read(authProvider.notifier)
          .login(
            email: _emailController.text.trim(),
            password: _passwordController.text,
          );
    } else {
      // Navigate to OTP screen
      if (_phoneController.text.trim().isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Please enter your phone number'),
            backgroundColor: AppColors.errorRed,
            behavior: SnackBarBehavior.floating,
          ),
        );
        return;
      }

      if (mounted) {
        context.goToOtpVerification(_phoneController.text.trim());
      }
    }
  }

  void _toggleLoginMode() {
    setState(() {
      _isEmailLogin = !_isEmailLogin;
    });
    _slideController.reset();
    _slideController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    final deviceType = ResponsiveHelper.getDeviceType(context);
    final isLoading = authState.isLoading;

    // Listen for auth state changes to navigate after successful login
    ref.listen(authProvider, (previous, next) {
      // Navigate to dashboard on successful authentication
      if (next.hasValue && next.value != null) {
        context.goToDashboard();
      }
      // Show error message on failure
      else if (next.hasError && mounted) {
        log('Login failed: ${next.error}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login failed: ${next.error}'),
            backgroundColor: AppColors.errorRed,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
            ),
          ),
        );
      }
    });

    return GestureDetector(
      onTap: () {
        // Unfocus when tapping outside text fields
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: AppGradients.darkBackground,
          ),
          child: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(
                  deviceType == DeviceType.mobile
                      ? AppDimensions.spacing24
                      : AppDimensions.spacing48,
                ),
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: deviceType == DeviceType.mobile
                            ? double.infinity
                            : AppDimensions.maxContentWidthMobile,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Logo Section
                          _buildLogoSection(),

                          const SizedBox(height: AppDimensions.spacing64),

                          // Login Form Card
                          _buildLoginCard(isLoading),

                          const SizedBox(height: AppDimensions.spacing24),

                          // Toggle Login Mode
                          _buildToggleButton(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogoSection() {
    return Column(
      children: [
        // Logo with gradient glow
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: AppGradients.primaryButton,
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withValues(alpha: 0.5),
                blurRadius: 30,
                spreadRadius: 5,
              ),
            ],
          ),
          child: const Icon(
            Icons.medical_services_rounded,
            size: 50,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: AppDimensions.spacing24),

        // App Name with Gradient
        GradientText(
          'AltheaCare',
          style: AppTextStyles.h1.copyWith(
            fontSize: 40,
            fontWeight: FontWeight.w800,
          ),
          gradient: AppGradients.primaryText,
        ),

        const SizedBox(height: AppDimensions.spacing8),

        Text(
          'Diagnostic Partner Portal',
          style: AppTextStyles.bodyLarge.copyWith(
            color: AppColors.textSecondary,
            letterSpacing: 1.5,
          ),
        ),
      ],
    );
  }

  Widget _buildLoginCard(bool isLoading) {
    return AppCard(
      padding: EdgeInsets.all(
        ResponsiveHelper.isMobile(context)
            ? AppDimensions.spacing24
            : AppDimensions.spacing32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Title
          Text(
            _isEmailLogin ? 'Sign In' : 'OTP Login',
            style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w700),
          ),

          Text(
            _isEmailLogin
                ? 'Enter your credentials to continue'
                : 'We\'ll send you a verification code',
            style: AppTextStyles.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),

          const SizedBox(height: AppDimensions.spacing32),

          // Input Fields
          AnimatedSwitcher(
            duration: AppAnimations.medium,
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
              );
            },
            child: _isEmailLogin
                ? _buildEmailLoginFields()
                : _buildPhoneLoginFields(),
          ),

          const SizedBox(height: AppDimensions.spacing32),

          // Login Button
          AppButton(
            text: _isEmailLogin ? 'Sign In' : 'Send OTP',
            onPressed: isLoading ? null : _handleLogin,
            isLoading: isLoading,
            fullWidth: true,
            size: AppButtonSize.large,
            icon: Icon(
              _isEmailLogin ? Icons.login : Icons.sms_outlined,
              size: AppDimensions.iconMedium,
            ),
          ),

          if (_isEmailLogin) ...[
            const SizedBox(height: AppDimensions.spacing16),

            // Forgot Password
            AppButton(
              text: 'Forgot Password?',
              onPressed: () {
                // TODO: Implement forgot password
              },
              type: AppButtonType.text,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildEmailLoginFields() {
    return Column(
      key: const ValueKey('email-login'),
      children: [
        AppInputField(
          label: 'Email Address',
          hint: 'Enter your email',
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          prefixIcon: const Icon(Icons.email_outlined),
        ),

        const SizedBox(height: AppDimensions.spacing16),

        AppInputField(
          label: 'Password',
          hint: 'Enter your password',
          controller: _passwordController,
          obscureText: _obscurePassword,
          prefixIcon: const Icon(Icons.lock_outlined),
          suffixIcon: IconButton(
            icon: Icon(
              _obscurePassword
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
            ),
            onPressed: () {
              setState(() {
                _obscurePassword = !_obscurePassword;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPhoneLoginFields() {
    return AppInputField(
      key: const ValueKey('phone-login'),
      label: 'Phone Number',
      hint: 'Enter your phone number',
      controller: _phoneController,
      keyboardType: TextInputType.phone,
      prefixIcon: const Icon(Icons.phone_outlined),
    );
  }

  Widget _buildToggleButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _isEmailLogin ? 'Prefer OTP login?' : 'Have a password?',
          style: AppTextStyles.bodyMedium.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
        const SizedBox(width: AppDimensions.spacing8),
        AppButton(
          text: _isEmailLogin ? 'Use OTP' : 'Use Password',
          onPressed: _toggleLoginMode,
          type: AppButtonType.text,
        ),
      ],
    );
  }
}
