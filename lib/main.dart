import 'package:flutter/material.dart';
import './pages_export.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Portal',
      initialRoute: '/',
      routes: {'/': (context) => SplashPage()},
    );
  }
}
