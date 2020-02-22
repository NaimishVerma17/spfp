import 'package:flutter/material.dart';
import './utils/styles.dart';
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
          primaryColor: Styles.primaryColor,
          accentColor: Styles.subHeadingColor,
          fontFamily: 'Lato'),
      routes: {'/': (context) => LoginPage()},
    );
  }
}
