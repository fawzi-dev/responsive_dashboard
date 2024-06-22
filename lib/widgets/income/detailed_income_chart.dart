import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../models/pie_chart_model.dart';
import '../../utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeChartIndex = -1;

  // Chart data configuration
  final List<PieChartSectionModel> sectionsData = [
    PieChartSectionModel(
        title: 'Others', color: const Color(0xFFE2DECD), value: 22),
    PieChartSectionModel(
        title: 'Product Royalties', color: const Color(0xFF064060), value: 20),
    PieChartSectionModel(
        title: 'Design product', color: const Color(0xFF4DB7F2), value: 25),
    PieChartSectionModel(
        title: 'Design service', color: const Color(0xFF208BC7), value: 40),
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 0.75,
      child: PieChart(
        getChartData(context),
      ),
    );
  }

  PieChartData getChartData(BuildContext context) {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (event, pieTouchResponse) {
          if (mounted) {
            setState(() {
              activeChartIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            });
          }
        },
      ),
      sections: List.generate(sectionsData.length, (i) {
        final section = sectionsData[i];
        final isActive = i == activeChartIndex;
        return PieChartSectionData(
          titlePositionPercentageOffset: isActive
              ? section.title == sectionsData[2].title
                  ? 2.3
                  : 1.5
              : null,
          color: section.color,
          title: isActive ? section.title : section.value.toString(),
          radius: isActive ? 45 : 40,
          value: section.value,
          titleStyle: AppStyles.styleSemiBold16(context).copyWith(
            color: isActive
                ? Colors.black
                : (i == 0 ? Colors.black : Colors.white),
          ),
        );
      }),
    );
  }
}
