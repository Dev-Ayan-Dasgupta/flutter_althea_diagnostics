import 'package:flutter/material.dart';
import '../../config/design/app_dimensions.dart';
import '../../config/design/app_gradients.dart';
import '../../config/theme/app_text_styles.dart';
import '../../config/theme/app_colors.dart';
import '../../../features/auth/domain/entities/user.dart';
import 'app_card.dart';

class RoleSelector extends StatelessWidget {
  final ValueChanged<UserRole> onRoleSelected;

  const RoleSelector({super.key, required this.onRoleSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Select Your Role',
          style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppDimensions.spacing32),
        _buildRoleCard(
          role: UserRole.phlebotomist,
          title: 'Phlebotomist',
          description: 'Collect samples and track earnings',
          icon: Icons.medical_services,
          gradient: AppGradients.primaryButton,
        ),
        const SizedBox(height: AppDimensions.spacing16),
        _buildRoleCard(
          role: UserRole.labAdmin,
          title: 'Lab Admin',
          description: 'Manage staff and lab operations',
          icon: Icons.business,
          gradient: AppGradients.secondaryButton,
        ),
      ],
    );
  }

  Widget _buildRoleCard({
    required UserRole role,
    required String title,
    required String description,
    required IconData icon,
    required Gradient gradient,
  }) {
    return AppCard(
      onTap: () => onRoleSelected(role),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(AppDimensions.spacing16),
            decoration: BoxDecoration(
              gradient: gradient,
              borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: AppDimensions.iconLarge,
            ),
          ),
          const SizedBox(width: AppDimensions.spacing16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: AppDimensions.spacing4),
                Text(
                  description,
                  style: AppTextStyles.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios, color: AppColors.textSecondary),
        ],
      ),
    );
  }
}
