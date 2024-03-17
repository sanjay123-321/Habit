import 'package:flutter/material.dart';
import 'package:habit/utils/constants.dart';
import 'package:ionicons/ionicons.dart';

class HomeBottomNavigator extends StatelessWidget {
  const HomeBottomNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              margin: EdgeInsets.only(
                  bottom: 8.0), // Added margin below the container
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.view_agenda_outlined,
                      color: whiteColor,
                    ),
                    onPressed: () {
                      // Navigate to first screen
                    },
                  ),
                  const SizedBox(width: 20.0),
                  IconButton(
                    icon: const Icon(
                      Ionicons.apps,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Navigate to second screen
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
