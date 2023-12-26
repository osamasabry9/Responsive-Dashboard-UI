import 'package:flutter/material.dart';

import '../widgets/custom_sliver_grid.dart';
import '../widgets/custom_sliver_list_view.dart';

class LayoutMobileView extends StatelessWidget {
  const LayoutMobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 16),
        ),
        CustomSliverGrid(),
        CustomSliverListView()
      ],
    );
  }
}
