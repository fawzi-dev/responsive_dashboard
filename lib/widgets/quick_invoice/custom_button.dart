import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import '../../utils/border_style_enum.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.customButtonStyle, required this.buttonLabel});

  final String buttonLabel;
  final CustomButtonStyle customButtonStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          overlayColor: const Color.fromARGB(255, 168, 219, 247),
          backgroundColor: customButtonStyle == CustomButtonStyle.filled
              ? const Color(0xFF4DB7F2)
              : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            side: customButtonStyle == CustomButtonStyle.filled
                ? BorderSide.none
                : const BorderSide(
                    color: Color(0xFF4DB7F2),
                  ),
          ),
        ),
        onPressed: () {},
        child: Text(
          buttonLabel,
          style: AppStyles.styleSemiBold16(context).copyWith(
            color: customButtonStyle == CustomButtonStyle.filled
                ? Colors.white
                : const Color(0xFF4DB7F2),
          ),
        ),
      ),
    );
  }
}
