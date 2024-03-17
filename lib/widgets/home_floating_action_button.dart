import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeNavigator extends StatelessWidget {
  const HomeNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.view_stream_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.view_compact_outlined),
          )
        ],
      ),
    );
  }
}
