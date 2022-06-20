import 'package:car_mangment/screens/welcomescreen.dart';
import 'package:flutter/material.dart';
import 'package:car_mangment/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

