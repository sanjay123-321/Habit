import 'package:flutter/material.dart';
import 'package:habit/modules/home/component/sliver_app_bar.dart';
import 'package:habit/modules/home/component/sub_screens/today/today_screen.dart';
import 'package:habit/widgets/home_bottom_navigator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              CustomAppBar(
                controller: controller,
              ),
              SliverFillRemaining(
                child: TabBarView(
                  controller: controller,
                  children: <Widget>[
                    TodayScreen(),
                    Center(child: Text("Tab two")),
                    Center(child: Text("Tab three")),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 30,
            right: 30,
            bottom: 0,
            child: HomeBottomNavigator(),
          ),
        ],
      ),
    );
  }
}
