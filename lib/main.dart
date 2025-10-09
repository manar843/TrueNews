
import 'package:flutter/material.dart';
import 'package:news_app/provider/app_theme_provider.dart';
import 'package:news_app/utils/my_theme_app.dart';
import 'package:news_app/views/category/catagory_details.dart';
import 'package:news_app/views/home_screen.dart';
import 'package:news_app/views/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppThemeProvider()),
      ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<AppThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
  routes:{
    SplashScreen.routeName:(context)=>SplashScreen(),
    HomeScreen.routeName:(context)=>HomeScreen(),
    CategoryDetails.routeName:(context)=>CategoryDetails()
  } ,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: themeProvider.themeMode,
    );
  }
}

/// dark blue with red
/// white with red