import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'all_expenses_header.dart';
import 'all_expenses_item.dart';
import 'all_expenses_item_listview.dart';
import '../common/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpensesHeader(),
          Gap(16),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
