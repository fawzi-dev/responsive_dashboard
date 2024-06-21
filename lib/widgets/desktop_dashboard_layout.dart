import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'common/custom_background_container.dart';
import 'expenses/all_expenses.dart';
import 'drawer/custom_drawer.dart';
import 'quick_invoice/quick_invoice.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomDrawer(),
        ),
        const Gap(32),
        const Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(
                child: AllExpenses(),
              ),
              Gap(24),
              Expanded(
                child: QuickInvoice(),
              ),
            ],
          ),
        ),
        const Gap(32),
        Expanded(
          flex: 2,
          child: CustomBackgroundContainer(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
            ),
          ),
        )
      ],
    );
  }
}
