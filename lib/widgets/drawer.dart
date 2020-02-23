import 'package:flutter/material.dart';
import 'package:student_portal/utils/styles.dart';

class KisaanDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10.0,
      child: Container(
        color: Styles.primaryColor,
        child: ListView(
          children: <Widget>[
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
