import 'dart:ui';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'my_card_item.dart';

import 'custom_dot_indicator.dart';

class MyCardPageView extends StatefulWidget {
  const MyCardPageView({super.key});

  @override
  _MyCardPageViewState createState() => _MyCardPageViewState();
}

class _MyCardPageViewState extends State<MyCardPageView> {
  int activeCardIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {PointerDeviceKind.mouse},
        // platform: TargetPlatform.windows,
      ),
      child: Column(
        children: [
          ExpandablePageView(
            allowImplicitScrolling: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (value) {
              setState(() {
                activeCardIndex = value;
              });
            },
            children: List.generate(
              3,
              (index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: MyCardItem(),
                );
              },
            ),
          ),
          const Gap(18),
          Row(
            children: List.generate(
              3,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: CustomDotIndicator(
                    isActive: activeCardIndex == index,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
