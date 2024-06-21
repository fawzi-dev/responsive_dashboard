import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'common/custom_background_container.dart';
import 'expenses/all_expenses.dart';
import 'drawer/custom_drawer.dart';
import 'my_card/my_card.dart';
import 'my_card/my_card_item.dart';
import 'my_card/my_card_page_view.dart';
import 'quick_invoice/quick_invoice.dart';
import 'quick_invoice/quick_invoice_all_expenses.dart';

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
          flex: 3,
          child: QuickInvoiceAllExpenses(),
        ),
        const Gap(32),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: CustomBackgroundContainer(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: const Center(
                  child: MyCard(),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
