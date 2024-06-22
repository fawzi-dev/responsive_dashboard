import 'package:flutter/material.dart';
import '../utils/size_config.dart';
import '../widgets/common/adaptive_layout.dart';
import '../devices_layout/dashboard_mobile_layout.dart';
import '../devices_layout/dashboard_tablet_layout.dart';
import '../devices_layout/desktop_dashboard_layout.dart';
import '../widgets/drawer/custom_drawer.dart';

class DashboardResponsive extends StatefulWidget {
  const DashboardResponsive({super.key});

  @override
  State<DashboardResponsive> createState() => _DashboardResponsiveState();
}

class _DashboardResponsiveState extends State<DashboardResponsive> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0XFFFAFAFA),
              leading: IconButton(
                onPressed: () {
                  drawerKey.currentState?.openDrawer();
                },
                icon: const Icon(Icons.menu),
                color: const Color(0xFFAAAAAA),
              ),
            )
          : null,
      drawer:
          SizeConfig.width < SizeConfig.tablet ? const CustomDrawer() : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileDashboardLayout(),
        tabletLayout: (context) => const TabletDashboardLayout(),
        desktopLayout: (context) => const DesktopDashboardLayout(),
      ),
    );
  }
}
