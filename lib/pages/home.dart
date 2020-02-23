import 'package:flutter/material.dart';
import 'package:student_portal/widgets/drawer.dart';
import 'package:student_portal/utils/styles.dart';

class HomePage extends StatelessWidget {
  String _intro = ''' 
This app is for the students of Ajay Kumar Garg Engineering College, Ghaziabad.
This App provides a personalized experience to the students as they can view their timetable, add notes and reminders about particular classes, and get notified about any changes in their schedule through in app notifications by just logging in  using their college provided email accounts and password. 
Optimized way to communicate with students and provide them a better experience of their timetable - The Timetable App.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Home', style: Styles.pageTitleText()),
        elevation: 3.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Styles.primaryColor),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
        color: Styles.homeBackgroundColor,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/book.png'),
                  height: 200.0,
                  width: 150.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Welcome to Timetable app for student!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    color: Styles.primaryColor,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  _intro,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text('v0.0.1',style: TextStyle(fontSize: 20.0),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
