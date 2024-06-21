import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 60),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              width: 48,
              height: 48,
              decoration: const ShapeDecoration(
                color: Color(0xFFFAFAFA),
                shape: OvalBorder(),
              ),
              child: const Icon(
                Icons.add,
                color: Color(0XFF4eb7f2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
