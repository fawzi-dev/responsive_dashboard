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
    final devieSize = MediaQuery.of(context).size.height;

    print(devieSize);

    return Row(
      children: [
        const Expanded(
          child: CustomDrawer(),
        ),
        const Gap(32),
        const Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 32),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AllExpenses(),
                  Gap(24),
                  QuickInvoice(),
                ],
              ),
            ),
          ),
        ),
        const Gap(32),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: CustomBackgroundContainer(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
              ),
            ),
          ),
        )
      ],
    );
  }
}
