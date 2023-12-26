import 'package:flutter/material.dart';

class CustomDrawerItemWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomDrawerItemWidget({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            title.toUpperCase(),
          ),
        ),
      ),
    );
  }
}
