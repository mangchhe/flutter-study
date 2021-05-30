import 'package:flutter/material.dart';
import 'package:flutter_tutorial/navigator/ScreenA.dart';
import 'package:flutter_tutorial/navigator/ScreenB.dart';
import 'package:flutter_tutorial/navigator/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC()
      },
    );
  }
}
