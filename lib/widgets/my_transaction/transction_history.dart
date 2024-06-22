import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_styles.dart';
import 'transction_history_list_view.dart';

class TrasnctionHistory extends StatelessWidget {
  const TrasnctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TansctionHistoryHeader(),
        const Gap(20),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xFFAAAAAA)),
        ),
        const Gap(16),
        const TransctionHistoryListView(),
      ],
    );
  }
}

class TansctionHistoryHeader extends StatelessWidget {
  const TansctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            'Transaction History',
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        Flexible(
          child: Text(
            'See all',
            style: AppStyles.styleMedium16(context).copyWith(
              color: const Color(0xFF4EB7F2),
            ),
          ),
        )
      ],
    );
  }
}
