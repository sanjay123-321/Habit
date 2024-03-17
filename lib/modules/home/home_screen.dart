import 'package:flutter/material.dart';
import 'package:habit/utils/constants.dart';

import 'component/sliver_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeBlackColor,
      body: CustomScrollView(
        slivers: <Widget>[
          const HomeSliverAppbar(),
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
