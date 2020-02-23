import 'package:flutter/material.dart';
import 'package:student_portal/utils/styles.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 130.0,
                  ),
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
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'A helper app for student of Ajay Kumar Garg Engineering College to manage their acedemic records and daily time table!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Styles.subHeadingColor),
                  ),
                ],
              ),
            ),
            Container(
              color: Styles.primaryColor,
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 26.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    width: 1.0,
                    color: Colors.white,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 26.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
