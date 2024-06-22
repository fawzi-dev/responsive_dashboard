import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/scroll_behavior.dart';
import 'expenses/all_expenses.dart';
import 'quick_invoice/quick_invoice.dart';

class QuickInvoiceAllExpenses extends StatelessWidget {
  const QuickInvoiceAllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.width < 800 ? 0 : 32,
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: ScrollConfiguration(
          behavior: scrollBehavior,
          child: const SingleChildScrollView(
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
    );
  }
}
