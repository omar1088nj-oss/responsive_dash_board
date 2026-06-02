import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        customMobile: (context) => SizedBox(),
        custpmTablit: (context) => SizedBox(),
        customDesctop: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
// create-dashboard-desktop-layout