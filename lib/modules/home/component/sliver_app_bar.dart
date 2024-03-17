import 'package:flutter/material.dart';
import 'package:habit/utils/constants.dart';
import 'package:habit/widgets/capitalize_words.dart';
import 'package:ionicons/ionicons.dart';

import '../../../utils/language_string.dart';

class CustomAppBar extends StatefulWidget {
  final TabController controller;

  CustomAppBar({required this.controller, Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        icon: const Icon(Ionicons.grid_outline),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(Ionicons.add_outline),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Ionicons.stats_chart_outline),
          onPressed: () {},
        ),
      ],
      floating: false,
      pinned: true,
      expandedHeight: 160.0,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(
            //   height: 15,
            // ),
            Text(
              Language.appName.capitalizeByWord(),
              style: TextStyle(color: whiteColor),
            ),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(40.0), // Adjust the height as needed
        child: Container(
          color: themeBlackColor,
          child: TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
            controller: widget.controller,
          ),
        ),
      ),
    );
  }
}
