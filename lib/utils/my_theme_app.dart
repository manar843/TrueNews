 import 'package:flutter/material.dart';
import 'package:news_app/utils/app_styles.dart';
import 'app_color.dart';

class MyThemeData{
  static final ThemeData darkTheme =ThemeData (
    drawerTheme: DrawerThemeData(
        backgroundColor:AppColor.DarkBlueColor,
          //  shadowColor:  Colors.red,
    ) ,
    scaffoldBackgroundColor:AppColor.DarkBlueColor,
    primaryColor: AppColor.redColor,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: AppColor.redColor,
      ),
      centerTitle: true,
      titleTextStyle: AppStyles.bold20red,
    backgroundColor: AppColor.DarkBlueColor
    ),
      textTheme: TextTheme(
        labelLarge:AppStyles.bold20red ,
       labelMedium: AppStyles.w70020white,
        labelSmall: AppStyles.w50020white,
      ),

    iconTheme:   IconThemeData(
      color: AppColor.redColor,
    ),
  );
  static final ThemeData lightTheme=ThemeData(
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.white,


    ) ,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.black,
      appBarTheme: AppBarTheme(

          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
          titleTextStyle: AppStyles.bold20black,
     backgroundColor: Colors.white
  ),
    textTheme: TextTheme(
      labelLarge:AppStyles.bold20black ,
      labelMedium: AppStyles.w70020black,
      labelSmall: AppStyles.w70016black,
    ),
    // iconTheme:   IconThemeData(
    //   color: AppColor.redColor,
    // ),
  );

}