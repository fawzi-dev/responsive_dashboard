import 'package:flutter/material.dart';

import 'all_expenses_header.dart';
import 'all_expenses_item.dart';
import 'all_expenses_item_listview.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
