import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_spacing.dart';
import '../../../../app/theme/app_typography.dart';
import '../../../../core/utils/currency_formatter.dart';
import '../../../../core/widgets/app_card.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({
    super.key,
    required this.totalBalance,
    required this.income,
    required this.expense,
    this.isBalanceHidden = false,
    this.onToggleVisibility,
  });

  final num totalBalance;
  final num income;
  final num expense;

  final bool isBalanceHidden;
  final VoidCallback? onToggleVisibility;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      margin: AppInsets.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Balance',
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.textSecondary,
            ),
          ),

          const SizedBox(height: AppSpacing.sm),

          Text(
            isBalanceHidden
                ? '••••••••'
                : CurrencyFormatter.format(totalBalance),
            style: AppTypography.balanceLarge.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),

          const SizedBox(height: AppSpacing.xxl),

          Row(
            children: [
              Expanded(
                child: _InfoItem(
                  icon: Icons.arrow_downward,
                  iconColor: AppColors.success,
                  title: 'Income',
                  value: isBalanceHidden
                      ? '••••••'
                      : CurrencyFormatter.format(income),
                ),
              ),

              Expanded(
                child: _InfoItem(
                  icon: Icons.arrow_upward,
                  iconColor: AppColors.danger,
                  title: 'Expense',
                  value: isBalanceHidden
                      ? '••••••'
                      : CurrencyFormatter.format(expense),
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.lg),

          Center(
            child: TextButton.icon(
              onPressed: onToggleVisibility,
              icon: Icon(
                isBalanceHidden
                    ? Icons.visibility
                    : Icons.visibility_off,
                size: 18,
              ),
              label: Text(
                isBalanceHidden
                    ? 'Show Balance'
                    : 'Hide Balance',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  const _InfoItem({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 18,
          backgroundColor: iconColor.withValues(alpha: 0.12),
          child: Icon(
            icon,
            color: iconColor,
            size: 18,
          ),
        ),
        const SizedBox(width: AppSpacing.sm),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: AppSpacing.xxs),
              Text(
                value,
                style: AppTypography.balanceSmall.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}