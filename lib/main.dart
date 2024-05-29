import 'package:flutter/material.dart';
import 'package:seclob_pro/resources/color.dart';

import 'authentication_page/splash_screen.dart';
import 'navigation/bottom_tabs_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: bg
      ),
      home:  MyHomePage(),
    );
  }
}
