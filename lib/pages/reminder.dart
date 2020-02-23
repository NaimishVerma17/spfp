import 'package:flutter/material.dart';
import 'package:student_portal/utils/styles.dart';

class ReminderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Reminders', style: Styles.pageTitleText()),
        elevation: 3.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Styles.primaryColor),
      ),
      body: Container(
        color: Styles.homeBackgroundColor,
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: <Widget>[
            Container(
              width: _width,
              height: 54.0,
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/add-reminder');
                },
                color: Styles.textBackgroundColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.add_circle_outline,
                      color: Styles.linkColor,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'ADD NEW REMINDER',
                      style: TextStyle(color: Styles.linkColor, fontSize: 16.0),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) => GestureDetector(
                    child: Card(
                      elevation: 3.0,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Attend O.E. lecture.',
                              style: Styles.titleText(),
                            ),
                            SizedBox(height: 10.0,),
                            Text(
                              '11:00 AM',
                              style: Styles.subTitleText(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
