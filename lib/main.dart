import 'package:flutter/material.dart';
import './pages_export.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Portal',
      initialRoute: '/',
      theme: ThemeData(
        fontFamily: 'Lato'
      ),
      routes: {'/': (context) => SplashPage()},
    );
  }
}
