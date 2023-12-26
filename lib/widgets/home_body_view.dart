import 'package:flutter/material.dart';
import '../views/layout_desktop_view.dart';

import '../views/layout_mobile_view.dart';
import '../views/layout_tablet._view.dart';
import 'adaptive_layout.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: AdaptiveLayout(
        mobileLayout: (context) => const LayoutMobileView(),
        tabletLayout: (context) => const LayoutTabletView(),
        desktopLayout: (context) => const LayoutDesktopView(),
      ),
    );
  }
}
