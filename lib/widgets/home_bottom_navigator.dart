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
        backgroundColor: Colors.blueGrey[800],
        enableFloatingNavBar: true,
        // enablePaddingAnimation: true,
        // margin: EdgeInsets.only(left: 10, right: 10),
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        dotIndicatorColor: Colors.transparent,
        unselectedItemColor: Colors.grey[300],
        splashBorderRadius: 30,
        onTap: _handleIndexChanged,
        items: [
          DotNavigationBarItem(
            icon: Icon(Icons.view_agenda_outlined),
            selectedColor: themeBlueColor,
          ),
          DotNavigationBarItem(
            icon: Icon(Ionicons.apps),
            selectedColor: themeBlueColor,
          ),
        ],
      ),
    );
  }
}

enum _SelectedTab { home, favorite }
