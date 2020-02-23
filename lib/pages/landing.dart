import 'package:flutter/material.dart';
import 'package:student_portal/utils/styles.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 80.0,),
            Text(
              'Welcome!',
              style: TextStyle(
                  color: Styles.primaryColor,
                  fontSize: 34.0,
                  letterSpacing: 1.3,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 20.0,
            ),
            Image(
              image: AssetImage('assets/images/student.png'),
              height: 150.0,
              width: 150.0,
            ),
          ],
        ),
      ),
    );
  }
}
