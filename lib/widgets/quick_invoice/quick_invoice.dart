import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../common/custom_background_container.dart';
import 'lastest_transaction.dart';
import 'quick_invoice_form.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            Gap(32),
            LatestTransaction(),
            Divider(
              height: 32,
              color: Color(0xffF1F1F1),
            ),
            QuickInvoiceForm()
          ],
        ),
      ),
    );
  }
}
