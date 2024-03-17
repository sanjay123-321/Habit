import 'package:flutter/material.dart';
import 'package:habit/utils/constants.dart';
import 'package:habit/utils/k_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('AppBar Title'),
            expandedHeight: 200.0,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return FlexibleSpaceBar(
                  title: AnimatedOpacity(
                    opacity:
                        constraints.biggest.height > kToolbarHeight ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 300),
                    child: Text('Scroll down to see the animation'),
                  ),
                );
              },
            ),
            pinned: true,
            floating: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    'Item $index',
                    style: TextStyle(color: whiteColor),
                  ),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
