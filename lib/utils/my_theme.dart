import 'package:flutter/material.dart';

import 'constants.dart';

class MyTheme {
  static final borderRadius = BorderRadius.circular(0);
  static Color dynamicColor = themeBlackColor;

//Utils.dynamicPrimaryColor(context)

  static theme(BuildContext context) => ThemeData(
        brightness: Brightness.light,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: themeBlackColor,
        // bottomSheetTheme: const BottomSheetThemeData(backgroundColor: primaryColor),
        // colorScheme:
        //     ColorScheme.light(secondary: Utils.dynamicPrimaryColor(context)),
        colorScheme: ColorScheme.light(secondary: primaryColor),
        appBarTheme: const AppBarTheme(
          backgroundColor: themeBlackColor,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: whiteColor, fontSize: 20, fontWeight: FontWeight.bold),
          iconTheme: IconThemeData(color: whiteColor),
          elevation: 0,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: whiteColor),
          titleMedium: TextStyle(color: whiteColor),
          titleSmall: TextStyle(color: whiteColor),
          // bodyLarge: TextStyle(color: whiteColor),
          bodySmall: TextStyle(fontSize: 12, height: 1.83, color: whiteColor),
          bodyLarge: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 1.375,
              color: whiteColor),
          bodyMedium:
              TextStyle(fontSize: 14, height: 1.5714, color: whiteColor),
          labelLarge: TextStyle(
              fontSize: 16,
              height: 2,
              fontWeight: FontWeight.w600,
              color: whiteColor),
          // titleLarge: const TextStyle(
          //     fontSize: 16, height: 2, fontWeight: FontWeight.w600),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 64),
            backgroundColor: dynamicColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 3,
          backgroundColor: const Color(0x00ffffff),
          selectedLabelStyle: TextStyle(color: dynamicColor, fontSize: 14.0),
          unselectedLabelStyle:
              const TextStyle(color: whiteColor, fontSize: 12.0),
          selectedItemColor: dynamicColor,
          unselectedItemColor: whiteColor,
          showUnselectedLabels: true,
        ),
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          hintStyle: TextStyle(color: grayColor),
          labelStyle: TextStyle(color: grayColor, fontSize: 16),
          border: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: const BorderSide(color: borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(color: dynamicColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: const BorderSide(color: borderColor),
          ),
          fillColor: inputFieldBgColor,
          filled: true,
          focusColor: inputFieldBgColor,
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: whiteColor,
          selectionColor: whiteColor,
          selectionHandleColor: whiteColor,
        ),
      );
}
