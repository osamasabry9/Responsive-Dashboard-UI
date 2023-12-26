import 'package:flutter/material.dart';

import 'custom_item_list_widget.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: CustomItemListWidget(),
      ),
    );
  }
}
