import 'package:flutter/material.dart';
import '../widgets/common/adaptive_layout.dart';
import '../widgets/desktop_dashboard_layout.dart';

class DashboardResponsive extends StatelessWidget {
  const DashboardResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopDashboardLayout(),
      ),
    );
  }
}
