import 'package:flutter/material.dart';
import 'package:news_app/utils/app_styles.dart';
import 'app_color.dart';

class MyThemeData {
  static final ThemeData darkTheme = ThemeData(
    drawerTheme: DrawerThemeData(backgroundColor: AppColor.DarkBlueColor),
    scaffoldBackgroundColor: AppColor.DarkBlueColor,
    primaryColor: AppColor.redColor,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: AppColor.redColor),
      centerTitle: true,
      titleTextStyle: AppStyles.bold20red,
      backgroundColor: AppColor.DarkBlueColor,
    ),
    textTheme: TextTheme(
      labelLarge: AppStyles.bold20red,
      labelMedium: AppStyles.w70020white,
      labelSmall: AppStyles.w50020white,

    ),
    iconTheme: IconThemeData(color: AppColor.redColor),
    cardTheme:  CardThemeData(
     shadowColor: Colors.red,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.red, width: .8),
        borderRadius: BorderRadius.circular(22),
      ),


    )
  );
  static final ThemeData lightTheme = ThemeData(
    drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.black,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      titleTextStyle: AppStyles.bold20black,
      backgroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      labelLarge: AppStyles.bold20black,
      labelMedium: AppStyles.w70020black,
      labelSmall: AppStyles.w70016black,

    ),
      cardTheme:  CardThemeData(
        shadowColor: Colors.black,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black, width:.8),
          borderRadius: BorderRadius.circular(22),
        ),


      )
  );
}
