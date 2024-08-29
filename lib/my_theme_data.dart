import 'package:flutter/material.dart';
import 'package:islamiapp/appcolores.dart';

class MyThemeData {
  static final ThemeData Lightmood = ThemeData(
      canvasColor: Appcolores.primarylightColor,
      primaryColor: Appcolores.primarylightColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:
          AppBarTheme(backgroundColor: Colors.transparent, centerTitle: true),
      textTheme: TextTheme(
          bodyLarge: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Appcolores.blackColor),
          bodyMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Appcolores.blackColor),
          bodySmall: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Appcolores.blackColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Appcolores.blackColor,
          showUnselectedLabels: true),
  iconTheme: IconThemeData(
    color: Appcolores.blackColor
  ));
  static final ThemeData darktmood = ThemeData(
      canvasColor: Appcolores.primaryDarkColor,
      primaryColor: Appcolores.primaryDarkColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:
      AppBarTheme(backgroundColor: Colors.transparent, centerTitle: true),
      textTheme: TextTheme(
          bodyLarge: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Appcolores.whiteColor),
          bodyMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Appcolores.yellowColor),

          bodySmall: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Appcolores.yellowColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Appcolores.yellowColor,
          backgroundColor: Appcolores.primaryDarkColor,
          showUnselectedLabels: true),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Appcolores.primaryDarkColor),
      iconTheme: IconThemeData(
          color: Appcolores.whiteColor
      ));
}
