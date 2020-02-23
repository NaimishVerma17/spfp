import 'package:flutter/material.dart';
import 'package:student_portal/widgets/drawer.dart';
import 'package:student_portal/utils/styles.dart';

class HomePage extends StatelessWidget {
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
    );
  }
}
