 import 'package:flutter/material.dart';
import 'package:news_app/utils/app_styles.dart';
import 'app_color.dart';

class MyThemeData{
  static final ThemeData darkTheme =ThemeData (
    scaffoldBackgroundColor:AppColor.DarkBlueColor,
    primaryColor: AppColor.redColor,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: AppStyles.bold20red,
    backgroundColor: AppColor.DarkBlueColor
    ),
      textTheme: TextTheme(
        labelLarge:AppStyles.bold20white ,
       labelMedium: AppStyles.w70020white,
        labelSmall: AppStyles.w50020white,
      ),

    iconTheme: const IconThemeData(
      color: AppColor.redColor,
    ),
  );
  static final ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColor.redColor,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: AppStyles.bold20red,
     backgroundColor: Colors.white
  ),
    textTheme: TextTheme(
      labelLarge:AppStyles.bold20black ,
      labelMedium: AppStyles.w70020black,
      labelSmall: AppStyles.w50020black,
    ),
    iconTheme: const IconThemeData(
      color: AppColor.redColor,
    ),
  );

}