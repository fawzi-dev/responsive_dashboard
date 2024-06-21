import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'all_expenses.dart';
import 'custom_drawer.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Gap(32),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Expanded(
                child: AllExpenses(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
