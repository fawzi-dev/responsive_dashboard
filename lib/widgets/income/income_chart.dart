import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeChartIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          if (mounted) {
            setState(() {
              activeChartIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            });
          }
        },
      ),
      sections: [
        PieChartSectionData(
          color: const Color(0xFFE2DECD),
          radius: activeChartIndex == 0 ? 25 : 20,
          value: 22,
          showTitle: false,
        ),
        PieChartSectionData(
          color: const Color(0xFF064060),
          radius: activeChartIndex == 1 ? 25 : 20,
          value: 20,
          showTitle: false,
        ),
        PieChartSectionData(
          color: const Color(0xFF4DB7F2),
          radius: activeChartIndex == 2 ? 25 : 20,
          value: 25,
          showTitle: false,
        ),
        PieChartSectionData(
          color: const Color(0xFF208BC7),
          radius: activeChartIndex == 3 ? 25 : 20,
          value: 40,
          showTitle: false,
        ),
      ],
    );
  }
}
