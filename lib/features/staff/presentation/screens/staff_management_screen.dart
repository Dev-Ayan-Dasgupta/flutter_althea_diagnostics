import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../../../core/config/design/app_dimensions.dart';
import '../../../../core/config/design/app_gradients.dart';
import '../../../../core/config/design/app_shadows.dart';
import '../../../../core/config/theme/app_text_styles.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/presentation/widgets/gradient_text.dart';
import '../../../../core/presentation/widgets/search_bar_custom.dart';
import '../../../../core/presentation/widgets/staff_card.dart';
import '../../../../core/presentation/widgets/empty_state.dart';
import '../../../../core/presentation/widgets/app_button.dart';
import '../../../../core/utils/navigation_extensions.dart';
import '../../../auth/domain/entities/user.dart';
import '../../domain/entities/staff.dart';
import '../widgets/staff_filter_sheet.dart';
import 'staff_detail_screen.dart';

// Mock providers - replace with actual implementation
final staffListProvider = StateProvider<List<StaffMember>>((ref) => []);
final staffFilterProvider = StateProvider<StaffFilters>(
  (ref) => const StaffFilters(),
);

class StaffManagementScreen extends ConsumerStatefulWidget {
  const StaffManagementScreen({super.key});

  @override
  ConsumerState<StaffManagementScreen> createState() =>
      _StaffManagementScreenState();
}

class _StaffManagementScreenState extends ConsumerState<StaffManagementScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _showFilterSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        child: StaffFilterSheet(
          initialFilters: ref.read(staffFilterProvider),
          onApply: (filters) {
            ref.read(staffFilterProvider.notifier).state = filters;
          },
        ),
      ),
    );
  }

  void _showInviteStaffDialog() {
    showDialog(
      context: context,
      builder: (context) => const InviteStaffDialog(),
    );
  }

  int _getActiveFilterCount() {
    final filter = ref.watch(staffFilterProvider);
    int count = 0;
    if (filter.role != null) count++;
    if (filter.status != null) count++;
    if (filter.isOnline != null) count++;
    return count;
  }

  @override
  Widget build(BuildContext context) {
    final staffList = ref.watch(staffListProvider);
    final filters = ref.watch(staffFilterProvider);
    final activeFilterCount = _getActiveFilterCount();

    // Apply filters
    final filteredStaff = _applyFilters(staffList, filters);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradients.darkBackground),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(context, activeFilterCount),
              Expanded(
                child: staffList.isEmpty
                    ? _buildEmptyState()
                    : _buildStaffList(filteredStaff),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showInviteStaffDialog,
        backgroundColor: AppColors.primary,
        icon: const Icon(Icons.person_add),
        label: const Text('Invite Staff'),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, int filterCount) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => context.goBack(),
                child: Container(
                  padding: const EdgeInsets.all(AppDimensions.spacing8),
                  decoration: BoxDecoration(
                    gradient: AppGradients.surfaceDark,
                    borderRadius: BorderRadius.circular(
                      AppDimensions.radiusMedium,
                    ),
                    boxShadow: AppShadows.soft,
                  ),
                  child: const Icon(Icons.arrow_back),
                ),
              ),
              const SizedBox(width: AppDimensions.spacing12),
              Expanded(
                child: GradientText(
                  'Staff Management',
                  style: AppTextStyles.h3.copyWith(fontWeight: FontWeight.w800),
                  gradient: AppGradients.primaryText,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacing16),
          SearchBarCustom(
            hint: 'Search staff...',
            controller: _searchController,
            onChanged: (query) {
              final currentFilter = ref.read(staffFilterProvider);
              ref.read(staffFilterProvider.notifier).state = currentFilter
                  .copyWith(searchQuery: query.isEmpty ? null : query);
            },
            onFilterTap: _showFilterSheet,
            filterCount: filterCount,
          ),
        ],
      ),
    );
  }

  Widget _buildStaffList(List<StaffMember> staff) {
    if (staff.isEmpty) {
      return const EmptyState(
        title: 'No Staff Found',
        message: 'Try adjusting your filters',
        icon: Icons.people_outline,
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(AppDimensions.spacing16),
      itemCount: staff.length,
      itemBuilder: (context, index) {
        return StaffCard(
          staff: staff[index],
          onTap: () {
            _showStaffDetails(staff[index]);
          },
        );
      },
    );
  }

  Widget _buildEmptyState() {
    return EmptyState(
      title: 'No Staff Members',
      message: 'Invite staff members to get started',
      icon: Icons.people_outline,
      action: AppButton(
        text: 'Invite Staff',
        onPressed: _showInviteStaffDialog,
        icon: const Icon(Icons.person_add),
      ),
    );
  }

  List<StaffMember> _applyFilters(
    List<StaffMember> staff,
    StaffFilters filters,
  ) {
    var filtered = staff;

    if (filters.searchQuery != null && filters.searchQuery!.isNotEmpty) {
      filtered = filtered.where((s) {
        final query = filters.searchQuery!.toLowerCase();
        return s.name.toLowerCase().contains(query) ||
            s.email.toLowerCase().contains(query) ||
            s.phoneNumber.toLowerCase().contains(query);
      }).toList();
    }

    if (filters.role != null) {
      filtered = filtered.where((s) => s.role == filters.role).toList();
    }

    if (filters.status != null) {
      filtered = filtered.where((s) => s.status == filters.status).toList();
    }

    if (filters.isOnline != null) {
      filtered = filtered.where((s) => s.isOnline == filters.isOnline).toList();
    }

    return filtered;
  }

  void _showStaffDetails(StaffMember staff) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StaffDetailScreen(staff: staff),
      ),
    );
  }
}

// Invite Staff Dialog
class InviteStaffDialog extends StatefulWidget {
  const InviteStaffDialog({super.key});

  @override
  State<InviteStaffDialog> createState() => _InviteStaffDialogState();
}

class _InviteStaffDialogState extends State<InviteStaffDialog> {
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  UserRole _selectedRole = UserRole.phlebotomist;

  @override
  void dispose() {
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.darkSurface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusLarge),
      ),
      title: Text(
        'Invite Staff Member',
        style: AppTextStyles.h4.copyWith(fontWeight: FontWeight.w700),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'staff@example.com',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppDimensions.radiusMedium,
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppDimensions.spacing16),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                hintText: '+91 98765 43210',
                prefixIcon: const Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppDimensions.radiusMedium,
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppDimensions.spacing16),
            DropdownButtonFormField<UserRole>(
              initialValue: _selectedRole,
              decoration: InputDecoration(
                labelText: 'Role',
                prefixIcon: const Icon(Icons.work),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    AppDimensions.radiusMedium,
                  ),
                ),
              ),
              items:
                  [
                    UserRole.phlebotomist,
                    UserRole.labTechnician,
                    UserRole.pathologist,
                  ].map((role) {
                    return DropdownMenuItem(
                      value: role,
                      child: Text(_getRoleLabel(role)),
                    );
                  }).toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() => _selectedRole = value);
                }
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Cancel',
            style: TextStyle(color: AppColors.textSecondary),
          ),
        ),
        TextButton(
          onPressed: () {
            // TODO: Send invitation
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Invitation sent successfully'),
                backgroundColor: AppColors.success,
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
          child: Text(
            'Send Invite',
            style: TextStyle(color: AppColors.primary),
          ),
        ),
      ],
    );
  }

  String _getRoleLabel(UserRole role) {
    switch (role) {
      case UserRole.phlebotomist:
        return 'Phlebotomist';
      case UserRole.labTechnician:
        return 'Lab Technician';
      case UserRole.pathologist:
        return 'Pathologist';
      default:
        return role.name;
    }
  }
}

// Staff Details Sheet
class StaffDetailsSheet extends StatelessWidget {
  final StaffMember staff;

  const StaffDetailsSheet({super.key, required this.staff});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppGradients.darkBackground,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppDimensions.radiusXLarge),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
            // Content
            Padding(
              padding: const EdgeInsets.all(AppDimensions.spacing24),
              child: Column(
                children: [
                  // Avatar
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: AppGradients.primaryButton,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        staff.name.substring(0, 1).toUpperCase(),
                        style: AppTextStyles.h1.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppDimensions.spacing16),
                  Text(
                    staff.name,
                    style: AppTextStyles.h3.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: AppDimensions.spacing4),
                  Text(
                    staff.email,
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: AppDimensions.spacing24),
                  // Actions
                  Row(
                    children: [
                      Expanded(
                        child: AppButton(
                          text: 'View Details',
                          onPressed: () {
                            // TODO: Navigate to full details
                          },
                          type: AppButtonType.outline,
                          icon: const Icon(Icons.visibility),
                        ),
                      ),
                      const SizedBox(width: AppDimensions.spacing12),
                      Expanded(
                        child: AppButton(
                          text: 'Contact',
                          onPressed: () {
                            // TODO: Contact staff
                          },
                          icon: const Icon(Icons.phone),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
