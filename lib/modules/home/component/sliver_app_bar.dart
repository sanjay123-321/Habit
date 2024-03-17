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
      expandedHeight: 150.0,

      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero,
        centerTitle: true,
        title: SizedBox(
          height: 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                Language.appName.capitalizeByWord(),
                textAlign: TextAlign.center,
                style: const TextStyle(color: whiteColor),
              ),
            ],
          ),
        ),
        // background: Image.asset("assets/earth.png", fit: BoxFit.cover),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // Adjust the height as needed
        child: Container(
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
      // bottomOpacity: 1.0,
      elevation: 0.0,
    );
  }
}
