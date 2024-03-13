import "package:flutter/material.dart";
import "package:habit/core/router_name.dart";
import "package:habit/utils/k_images.dart";
import "package:habit/utils/my_theme.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: KStrings.appName,
      theme: MyTheme.theme(context),
      //theme: MyTheme.theme(context),
      onGenerateRoute: RouteNames.generateRoute,
      initialRoute: RouteNames.splashScreen,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child!,
        );
      },
    );
  }
}
