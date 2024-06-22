import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/size_config.dart';
import '../common/custom_background_container.dart';
import 'detailed_income_chart.dart';
import 'income_chart.dart';
import 'income_details.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return CustomBackgroundContainer(
        child: Column(
      children: [
        const IncomeSectionHeader(),
        const Gap(20),
        Row(
          children: [
            Expanded(
              child: width >= SizeConfig.desktop && width < 1650
                  ? const DetailedIncomeChart()
                  : const IncomeChart(),
            ),
            width >= SizeConfig.desktop && width < 1650
                ? const SizedBox()
                : const Expanded(
                    flex: 2,
                    child: IncomeDetails(),
                  )
          ],
        )
      ],
    ));
  }
}
