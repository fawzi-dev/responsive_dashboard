import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_styles.dart';
import 'custom_text_field.dart';

class TextFieldWithLabelabel extends StatelessWidget {
  const TextFieldWithLabelabel(
      {super.key, required this.hintText, required this.label});

  final String hintText;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppStyles.styleMedium16(context),
        ),
        const Gap(12),
        CustomTextField(
          hintText: hintText,
        )
      ],
    );
  }
}
