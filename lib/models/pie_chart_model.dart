// Separate the Chart Data Model
import 'dart:ui';

class PieChartSectionModel {
  final String title;
  final Color color;
  final double value;

  PieChartSectionModel({
    required this.title,
    required this.color,
    required this.value,
  });
}
