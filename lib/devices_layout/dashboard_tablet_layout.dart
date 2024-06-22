import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import '../utils/scroll_behavior.dart';
import '../widgets/drawer/custom_drawer.dart';
import '../widgets/income/income_section.dart';
import '../widgets/my_cards_and_transction_history_section.dart';
import '../widgets/quick_invoice_all_expenses.dart';

class TabletDashboardLayout extends StatelessWidget {
  const TabletDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomDrawer(),
        ),
        const Gap(32),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ScrollConfiguration(
                behavior: scrollBehavior,
                child: const SingleChildScrollView(
                  child: Column(
                    children: [
                      QuickInvoiceAllExpenses(),
                      MyCardsAndTransctionHistorySection(),
                      Gap(24),
                      IncomeSection()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const Gap(32),
      ],
    );
  }
}
