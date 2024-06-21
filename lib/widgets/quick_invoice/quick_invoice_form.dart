import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/border_style_enum.dart';
import 'custom_button.dart';
import 'text_field_with_label.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFieldWithLabelabel(
                label: 'Customer Name',
                hintText: 'Type customer name',
              ),
            ),
            Gap(16),
            Expanded(
              child: TextFieldWithLabelabel(
                label: 'Customer Email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        Gap(24),
        Row(
          children: [
            Expanded(
              child: TextFieldWithLabelabel(
                label: 'Item Name',
                hintText: 'Type item name',
              ),
            ),
            Gap(16),
            Expanded(
              child: TextFieldWithLabelabel(
                label: 'Item Amount',
                hintText: 'Type item amount',
              ),
            ),
          ],
        ),
        Gap(24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                buttonLabel: 'Add more details',
                customButtonStyle: CustomButtonStyle.outline,
              ),
            ),
            Gap(12),
            Expanded(
              child: CustomButton(
                buttonLabel: 'Send Money',
                customButtonStyle: CustomButtonStyle.filled,
              ),
            ),
          ],
        )
      ],
    );
  }
}
