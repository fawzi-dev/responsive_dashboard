import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import '../utils/size_config.dart';
import '../widgets/drawer/custom_drawer.dart';
import '../widgets/income/income_section.dart';
import '../widgets/my_cards_and_transction_history_section.dart';
import '../widgets/quick_invoice_all_expenses.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Row(
      children: [
        Expanded(
          flex: MediaQuery.of(context).size.width < 1460 ? 2 : 1,
          child: const CustomDrawer(),
        ),
        const Gap(32),
        Expanded(
          flex: 5,
          child: Row(
            children: [
              const Expanded(
                flex: 2,
                child: QuickInvoiceAllExpenses(),
              ),
              const Gap(32),
              Expanded(
                flex: MediaQuery.of(context).size.width < 1370 ? 2 : 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: ScrollConfiguration(
                    behavior: const ScrollBehavior().copyWith(
                      scrollbars: false,
                      dragDevices: {
                        PointerDeviceKind.mouse,
                        PointerDeviceKind.touch
                      },
                    ),
                    child: const Align(
                      alignment: Alignment.topCenter,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            MyCardsAndTransctionHistorySection(),
                            Gap(24),
                            IncomeSection()
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const Gap(32),
      ],
    );
  }
}
