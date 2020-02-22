import 'package:flutter/material.dart';
import 'package:student_portal/widgets/custom_button.dart';
import 'package:student_portal/utils/styles.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  final GlobalKey<FormState> _globalKey = new GlobalKey();
  bool _isLoading = false;
  String _studentNo;
  String _password;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/user.png'),
                  height: 100.0,
                  width: 100.0,
                ),
                Text(
                  'Login',
                  style: Styles.headingText(),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Form(
                  key: _globalKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        maxLength: 7,
                        keyboardType: TextInputType.number,
                        decoration: Styles.getInputDecoration('Student No.'),
                        onSaved: (value) {
                          this._studentNo = value;
                        },
                      ),
                      TextFormField(
                        maxLength: 10,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: Styles.getInputDecoration('Password'),
                        onSaved: (value) {
                          this._password = value;
                        },
                      ),
                    ],
                  ),
                ),
                _isLoading ? CircularProgressIndicator() : Container(),
                SizedBox(
                  height: 12.0,
                ),
                CustomButton(
                  text: 'Login',
                  onClick: _isLoading ? null : _login,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'By signing in, you agree to our Terms and Conditions.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Styles.subHeadingColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _login() {
    _globalKey.currentState.save();
    print('Student number: ' + this._studentNo.toString());
    print('Password: ' + this._password.toString());
  }
}
