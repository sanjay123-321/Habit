import 'package:flutter/material.dart';
import 'package:habit/modules/splash_screen.dart/splash_screen.dart';

class RouteNames {
  static const String onBoardingScreen = '/onBoardingScreen';
  static const String splashScreen = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => SplashScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
