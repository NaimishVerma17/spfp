import 'package:flutter/material.dart';
import 'package:student_portal/widgets/custom_button.dart';
import 'package:student_portal/utils/styles.dart';

class SignupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignupPage();
  }
}

class _SignupPage extends State<SignupPage> {
  final GlobalKey<FormState> _globalKey = new GlobalKey();
  bool _isLoading = false;
  String _studentNo;
  String _studentRollNo;
  String _studentName;
  String _studentEmail;
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
                  height: 75.0,
                  width: 75.0,
                ),
                Text(
                  'Register Yourself',
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
                        keyboardType: TextInputType.text,
                        decoration: Styles.getInputDecoration('Student Name'),
                        onSaved: (value) {
                          this._studentName = value;
                        },
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: Styles.getInputDecoration('Student Email'),
                        onSaved: (value) {
                          this._studentEmail = value;
                        },
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        decoration: Styles.getInputDecoration('Roll no.'),
                        onSaved: (value) {
                          this._studentRollNo = value;
                        },
                      ),
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
                  text: 'Register',
                  onClick: _isLoading ? null : _register,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'By registering, you agree to our Terms and Conditions.',
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

  _register() {
    _globalKey.currentState.save();
    print('Student name: ' + this._studentName.toString());
    print('Student email: ' + this._studentEmail.toString());
    print('Student roll no: ' + this._studentRollNo.toString());
    print('Student number: ' + this._studentNo.toString());
    print('Password: ' + this._password.toString());
  }
}
