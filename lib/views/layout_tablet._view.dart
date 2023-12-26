import 'package:flutter/material.dart';

import '../widgets/custom_list_tablet.dart';
import '../widgets/custom_sliver_list_view.dart';

class LayoutTabletView extends StatelessWidget {
  const LayoutTabletView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 16),
        ),
        CustomListTablet(),
        CustomSliverListView()
      ],
    );
  }
}
