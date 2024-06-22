import 'dart:ui';

import 'package:flutter/material.dart';

import 'common/custom_background_container.dart';
import 'my_card/my_card.dart';
import 'my_transaction/transction_history.dart';

class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          MyCard(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TrasnctionHistory(),
        ],
      ),
    ));
  }
}
