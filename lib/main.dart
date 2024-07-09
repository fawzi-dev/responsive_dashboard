import 'package:flutter/material.dart';
import 'views/dashboard_responsive.dart';
import 'utils/size_config.dart';

void main() {
  runApp(
    const ResponsiveDashboard(),
  );
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardResponsive(),
    );
  }
}
