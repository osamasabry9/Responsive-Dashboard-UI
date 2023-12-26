import 'package:flutter/material.dart';
import 'layout_tablet._view.dart';

import '../widgets/custom_desktop_widget.dart';
import '../widgets/custom_drawer.dart';

class LayoutDesktopView extends StatelessWidget {
  const LayoutDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: LayoutTabletView(),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: CustomDesktopWidget(),
          ),
        ),
      ],
    );
  }
}
