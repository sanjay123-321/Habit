import 'package:appbar_animated/appbar_animated.dart';
import 'package:flutter/material.dart';
import 'package:habit/core/router_name.dart';
import 'package:habit/utils/constants.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [
    // First Page
    Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'First Page',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    ),
    // Second Page
    Container(
      color: Colors.green,
      child: Center(
        child: Text(
          'Second Page',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldLayoutBuilder(
        backgroundColorAppBar:
            const ColorBuilder(Colors.transparent, blackColor),
        textColorAppBar: const ColorBuilder(Colors.white),
        appBarBuilder: _appBar,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'Welcome to My App',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: PageController(initialPage: _currentPageIndex),
                    onPageChanged: (index) {
                      setState(() {
                        _currentPageIndex = index;
                      });
                    },
                    children: _pages,
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: 50,
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.home),
                      onPressed: () {
                        setState(() {
                          _currentPageIndex = 0;
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {
                        setState(() {
                          _currentPageIndex = 1;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AppBar _appBar(BuildContext context, ColorAnimated colorAnimated) {
  return AppBar(
    backgroundColor: colorAnimated.background,
    elevation: 0,
    title: Text(
      "Habit",
      style: TextStyle(
        color: colorAnimated.color,
      ),
    ),
    leading: IconButton(
      color: colorAnimated.color,
      onPressed: () {},
      icon: Icon(Ionicons.grid_outline),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.favorite,
          color: colorAnimated.color,
        ),
      ),
    ],
  );
}


// AppBar(
//           title: Text(''),
//           leading: IconButton(
//             icon: const Icon(Ionicons.grid_outline),
//             onPressed: () {
//               Navigator.pushNamed(context, RouteNames.menuScreen);
//             },
//           ),
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Ionicons.add),
//             ),
//             IconButton(
//               icon: Icon(
//                 Ionicons.stats_chart,
//                 size: 25,
//               ),
//               onPressed: () {},
//             ),
//           ], required Color backgroundColor,
//         ),