import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/views/widgets/Custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/adptive_layout.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_dashboard/views/widgets/desktop_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.int(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: SizeConfig.width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: const Color(0XFFFAFAFA),
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
                color: Colors.black,
              ),
            )
          : null,
      drawer:
          SizeConfig.width < SizeConfig.tablet ? const CustomDrawer() : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
