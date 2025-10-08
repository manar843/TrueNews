
import 'package:flutter/material.dart';
import 'package:news_app/views/home_screen.dart';
import 'package:news_app/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
  routes:{
    SplashScreen.routeName:(context)=>SplashScreen(),
    HomeScreen.routeName:(context)=>HomeScreen(),
  } ,

    );
  }
}

/// dark blue with red
/// white with red