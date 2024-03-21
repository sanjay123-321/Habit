import 'package:flutter/material.dart';
import 'package:habit/modules/home/home_screen.dart';
import 'package:habit/modules/menu/menu_screen.dart';
import 'package:habit/modules/splash_screen.dart/splash_screen.dart';

import '../modules/add_habit/add_habit_screen.dart';

class RouteNames {
  static const String splashScreen = '/';
  static const String homeScreen = '/homeScreen';
  static const String menuScreen = '/menuScreen';
  static const String addHabitScreen = '/addHabitScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => SplashScreen());
      case RouteNames.homeScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => HomeScreen());
      case RouteNames.menuScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => const MenuScreen());
      case RouteNames.addHabitScreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => CreateHabit());

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
