import 'package:flutter/material.dart';
import 'package:habit/modules/home/component/sliver_app_bar.dart';
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
      body: CustomScrollView(
        slivers: <Widget>[
          CustomAppBar(
            controller: controller,
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: controller,
              children: <Widget>[
                Center(child: Text("Tab one")),
                Center(child: Text("Tab two")),
                Center(child: Text("Tab three")),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: HomeBottomNavigator(),
    );
  }
}
