import 'package:flutter/material.dart';
import 'package:habit/utils/constants.dart';
import 'package:habit/widgets/capitalize_words.dart';
import 'package:ionicons/ionicons.dart';

import '../../../core/router_name.dart';
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
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.addHabitScreen);
          },
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
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
            color: themeBlackColor,
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: TabBar(
              isScrollable: true,
              tabs: [
                _buildTab('Today'),
                _buildTab('Weekly'),
                _buildTab('Overall'),
              ],
              indicatorWeight: 8,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: themeBlackColor,
              unselectedLabelColor: Colors.grey,
              automaticIndicatorColorAdjustment: true,
              controller: widget.controller,
              labelColor: Colors.white,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.withOpacity(0.15),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTab(String text) {
    return Tab(
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(fontSize: 17.0),
        ),
      ),
    );
  }
}
