import 'package:flutter/material.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/design/app_shadows.dart';
import '../../config/design/app_animations.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';

class SearchBarCustom extends StatefulWidget {
  final String? hint;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onFilterTap;
  final VoidCallback? onScanTap;
  final int filterCount;
  final bool autofocus;

  const SearchBarCustom({
    super.key,
    this.hint,
    this.controller,
    this.onChanged,
    this.onFilterTap,
    this.onScanTap,
    this.filterCount = 0,
    this.autofocus = false,
  });

  @override
  State<SearchBarCustom> createState() => _SearchBarCustomState();
}

class _SearchBarCustomState extends State<SearchBarCustom> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return AnimatedContainer(
      duration: AppAnimations.medium,
      curve: AppAnimations.curve,
      decoration: BoxDecoration(
        gradient: isDark ? AppGradients.surfaceDark : AppGradients.surfaceLight,
        borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
        boxShadow: _isFocused
            ? [
                BoxShadow(
                  color: AppColors.primary.withValues(alpha: 0.3),
                  blurRadius: 20,
                  spreadRadius: 2,
                ),
              ]
            : AppShadows.soft,
      ),
      child: Row(
        children: [
          const SizedBox(width: AppDimensions.spacing16),
          Icon(
            Icons.search,
            color: _isFocused ? AppColors.primary : AppColors.textSecondary,
          ),
          const SizedBox(width: AppDimensions.spacing12),
          Expanded(
            child: TextField(
              controller: widget.controller,
              focusNode: _focusNode,
              autofocus: widget.autofocus,
              style: AppTextStyles.bodyLarge,
              decoration: InputDecoration(
                hintText: widget.hint ?? 'Search samples...',
                hintStyle: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textDisabled,
                ),
                border: InputBorder.none,
              ),
              onChanged: widget.onChanged,
            ),
          ),
          // Scan Button
          if (widget.onScanTap != null) ...[
            IconButton(
              icon: Icon(Icons.qr_code_scanner, color: AppColors.primary),
              onPressed: widget.onScanTap,
            ),
          ],
          // Filter Button
          if (widget.onFilterTap != null) ...[
            Stack(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.tune,
                    color: widget.filterCount > 0
                        ? AppColors.primary
                        : AppColors.textSecondary,
                  ),
                  onPressed: widget.onFilterTap,
                ),
                if (widget.filterCount > 0)
                  Positioned(
                    right: 8,
                    top: 8,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        gradient: AppGradients.critical,
                        shape: BoxShape.circle,
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 16,
                        minHeight: 16,
                      ),
                      child: Center(
                        child: Text(
                          widget.filterCount.toString(),
                          style: AppTextStyles.bodySmall.copyWith(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
          const SizedBox(width: AppDimensions.spacing8),
        ],
      ),
    );
  }
}
