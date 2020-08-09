import 'package:flutter/material.dart';
import 'package:student_portal/utils/styles.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10.0,
      child: Container(
        color: Styles.primaryColor,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            DrawerHeader(
              child: Image.asset("assets/images/drawer-icon.png"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: Icon(
                Icons.home,
                size: 24.0,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: Styles.drawerItemsText(),
              ),
            ),
            Container(
              height: 0.5,
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
            ),
            ListTile(
              onTap: () {
                _navigateToPage('/notes', context);
                },
              leading: Icon(
                Icons.note,
                size: 24.0,
                color: Colors.white,
              ),
              title: Text(
                'Notes',
                style: Styles.drawerItemsText(),
              ),
            ),
            Container(
              height: 0.5,
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
            ),
            ListTile(
              onTap: () {
                _navigateToPage('/reminder', context);
              },
              leading: Icon(
                Icons.alarm,
                size: 24.0,
                color: Colors.white,
              ),
              title: Text(
                'Reminders',
                style: Styles.drawerItemsText(),
              ),
            ),
            Container(
              height: 0.5,
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: Icon(
                Icons.table_chart,
                size: 24.0,
                color: Colors.white,
              ),
              title: Text(
                'Time table',
                style: Styles.drawerItemsText(),
              ),
            ),
            Container(
              height: 0.5,
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: Icon(
                Icons.exit_to_app,
                size: 24.0,
                color: Colors.white,
              ),
              title: Text(
                'Logout',
                style: Styles.drawerItemsText(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _navigateToPage(String route, BuildContext context) {
    if (route == null) {
      return;
    }
    Navigator.of(context).pop();
    Navigator.of(context).pushNamed(route);
  }
}
