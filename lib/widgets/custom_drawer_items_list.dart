
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_drawer_item_widget.dart';

class CustomDrawerItemsListView extends StatelessWidget {
  const CustomDrawerItemsListView({super.key});
  static const List<CustomDrawerItemWidget> customDrawerItemModel =  [
    CustomDrawerItemWidget(
      title: "D a s h b o a r d",
      icon: FontAwesomeIcons.house,
    ),
    CustomDrawerItemWidget(
      title: "S e t t i n g s",
      icon: FontAwesomeIcons.gear,
    ),
    CustomDrawerItemWidget(
      title: "A b o u t",
      icon: FontAwesomeIcons.addressCard,
    ),
    CustomDrawerItemWidget(
      title: "L o g o u t",
      icon: FontAwesomeIcons.rightFromBracket,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: customDrawerItemModel.length,
      itemBuilder: (context, index) => customDrawerItemModel[index],
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}