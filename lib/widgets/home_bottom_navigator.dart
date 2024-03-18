import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:habit/utils/constants.dart';
import 'package:ionicons/ionicons.dart';

class HomeBottomNavigator extends StatefulWidget {
  @override
  _HomeBottomNavigatorState createState() => _HomeBottomNavigatorState();
}

class _HomeBottomNavigatorState extends State<HomeBottomNavigator>
    with TickerProviderStateMixin {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  Widget build(BuildContext context) {
    return SizedBox(
      height: 151,
      child: DotNavigationBar(
        enableFloatingNavBar: true,
        enablePaddingAnimation: true,
        // margin: EdgeInsets.only(left: 10, right: 10),
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        dotIndicatorColor: Colors.white,
        unselectedItemColor: Colors.grey[300],
        splashBorderRadius: 30,
        onTap: _handleIndexChanged,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: Icon(Icons.home),
            selectedColor: Color(0xff73544C),
          ),

          /// Likes
          DotNavigationBarItem(
            icon: Icon(Icons.favorite),
            selectedColor: Color(0xff73544C),
          ),
        ],
      ),
    );
  }
}

enum _SelectedTab { home, favorite }
