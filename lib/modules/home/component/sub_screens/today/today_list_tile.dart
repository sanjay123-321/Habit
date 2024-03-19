import 'package:flutter/material.dart';
import 'package:habit/utils/constants.dart';

class TodayListTile extends StatelessWidget {
  TodayListTile({required this.bgColor, required this.title, super.key});
  Color bgColor;
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 7),
      child: Container(
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(color: whiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
