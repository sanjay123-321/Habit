import 'package:flutter/material.dart';
import 'package:habit/utils/language_string.dart';
import 'package:habit/widgets/capitalize_words.dart';
import 'package:ionicons/ionicons.dart';

import '../../../core/router_name.dart';
import '../../../utils/constants.dart';

class HomeSliverAppbar extends StatelessWidget {
  const HomeSliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: themeBlackColor,
      leading: IconButton(
        onPressed: () {
          Navigator.pushNamed(context, RouteNames.menuScreen);
        },
        icon: const Icon(Ionicons.grid_outline),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Ionicons.add),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Ionicons.stats_chart_outline),
        )
      ],
      expandedHeight: 150.0,
      flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return FlexibleSpaceBar(
            title: AnimatedOpacity(
              opacity: constraints.biggest.height > kToolbarHeight ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 100),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  Language.appName.capitalizeByWord(),
                  style: const TextStyle(
                    color: whiteColor,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      pinned: true,
      floating: false,
    );
  }
}
