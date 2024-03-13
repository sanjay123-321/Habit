import 'dart:async';

import 'package:flutter/material.dart';
import 'package:habit/core/router_name.dart';
import 'package:habit/utils/constants.dart';
import 'package:habit/utils/k_images.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RouteNames.homeScreen);
      // Replace YourNextScreen() with the screen you want to navigate to after splash screen.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeBlackColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Kimages.habitLogo,
              width: 300,
              height: 300,
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              color: Colors.green,
            ), // Optional: Loading indicator
          ],
        ),
      ),
    );
  }
}
