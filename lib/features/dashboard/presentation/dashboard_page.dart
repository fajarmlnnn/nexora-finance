import 'package:flutter/material.dart';

import '../../../app/theme/app_spacing.dart';
import '../../../app/theme/app_colors.dart';
import '../../../core/widgets/stat_card.dart';

import 'widgets/balance_card.dart';
import 'widgets/dashboard_header.dart';
import 'widgets/section_header.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: DashboardHeader(
                userName: 'Fajar',
              ),
            ),

            SliverToBoxAdapter(
              child: BalanceCard(
                totalBalance: 12500000,
                income: 8000000,
                expense: 3500000,
              ),
            ),

            SliverPadding(
              padding: AppInsets.horizontal,
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    Expanded(
                      child: StatCard(
                        title: 'Income',
                        value: 'Rp8.000.000',
                        icon: Icons.arrow_downward,
                        iconColor: AppColors.success,
                      ),
                    ),

                    const SizedBox(width: AppSpacing.md),

                    Expanded(
                      child: StatCard(
                        title: 'Expense',
                        value: 'Rp3.500.000',
                        icon: Icons.arrow_upward,
                        iconColor: AppColors.danger,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: AppSpacing.xxl),
            ),

            const SliverToBoxAdapter(
              child: SectionHeader(
                title: 'Recent Transaction',
                actionText: 'See All',
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: AppInsets.horizontal,
                child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Center(
                    child: Text(
                      'Transaction List Coming Soon',
                    ),
                  ),
                ),
              ),
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 120),
            ),
          ],
        ),
      ),
    );
  }
}