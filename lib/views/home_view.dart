import 'package:flutter/material.dart';

import '../widgets/home_body_view.dart';
import '../widgets/custom_drawer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xffDBDBDB),
      drawer: const CustomDrawer(),
      appBar: buildAppBar(context),
      body: const HomeBodyView(),
    );
  }

  AppBar? buildAppBar(BuildContext context) {
    return MediaQuery.sizeOf(context).width - 32 < 900
        ? AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: const Icon(
                Icons.menu_outlined,
                color: Colors.white,
              ),
              onPressed: () => _scaffoldKey.currentState!.openDrawer(),
            ),
          )
        : null;
  }
}
