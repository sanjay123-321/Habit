import 'package:flutter/material.dart';
import '../today/today_list_tile.dart';

class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(20, (index) {
          // Generate alternating background colors
          Color bgColor =
              index % 2 == 0 ? Colors.cyan.withOpacity(0.6) : Colors.cyan;
          // Generate alternating titles
          String title = index % 2 == 0 ? 'Title 1' : 'Title 2';
          return TodayListTile(
            bgColor: bgColor,
            title: title,
          );
        }),
      ),
    );
  }
}
