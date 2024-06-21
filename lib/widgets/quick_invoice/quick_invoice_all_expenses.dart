import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../expenses/all_expenses.dart';
import 'quick_invoice.dart';

class QuickInvoiceAllExpenses extends StatelessWidget {
  const QuickInvoiceAllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32),
      child: Align(
        alignment: Alignment.topCenter,
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
    );
  }
}
