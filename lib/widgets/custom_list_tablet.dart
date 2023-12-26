import 'package:flutter/material.dart';
import 'custom_item.dart';

class CustomListTablet extends StatelessWidget {
  const CustomListTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.only(
              right: 16,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: CustomItem(),
            ),
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
