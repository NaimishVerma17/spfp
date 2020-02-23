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
      routes: {
        '/': (context) => LandingPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => SignupPage(),
        '/forget-password': (context) => ForgetPasswordPage(),
        '/reset-password': (context) => ResetPasswordPage(),
        '/home': (context) => HomePage(),
        '/reminder': (context) => ReminderPage(),
        '/add-reminder': (context) => AddReminderPage()
      },
    );
  }
}
