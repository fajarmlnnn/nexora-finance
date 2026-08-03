import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    super.key,
    required this.userName,
    this.onNotificationTap,
    this.onProfileTap,
  });

  final String userName;
  final VoidCallback? onNotificationTap;
  final VoidCallback? onProfileTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppInsets.page,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _greeting(),
                  style: AppTypography.bodyMedium.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  userName,
                  style: AppTypography.headlineLarge.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),

          IconButton(
            onPressed: onNotificationTap,
            icon: const Icon(Icons.notifications_outlined),
          ),

          const SizedBox(width: AppSpacing.sm),

          InkWell(
            borderRadius: BorderRadius.circular(999),
            onTap: onProfileTap,
            child: CircleAvatar(
              radius: 22,
              backgroundColor: AppColors.primary,
              child: Text(
                userName.substring(0, 1).toUpperCase(),
                style: AppTypography.titleMedium.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _greeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return 'Good Morning';
    }

    if (hour < 15) {
      return 'Good Afternoon';
    }

    if (hour < 18) {
      return 'Good Evening';
    }

    return 'Good Night';
  }
}