import 'package:flutter/material.dart';
import 'package:student_portal/widgets/custom_button.dart';
import 'package:student_portal/utils/styles.dart';

class ResetPasswordPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ResetPasswordPage();
  }
}

class _ResetPasswordPage extends State<ResetPasswordPage> {
  final GlobalKey<FormState> _globalKey = new GlobalKey();
  bool _isLoading = false;
  String _password;
  String _confirmPassword;

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
                  'Reset Password',
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
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        decoration: Styles.getInputDecoration('Password'),
                        onSaved: (value) {
                          this._password = value;
                        },
                      ),
                      TextFormField(
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        decoration:
                            Styles.getInputDecoration('Confirm Password'),
                        onSaved: (value) {
                          this._confirmPassword = value;
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
                  text: 'Reset',
                  onClick: _isLoading ? null : _submit,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _submit() {
    _globalKey.currentState.save();
    print('Password: ' + this._password.toString());
    print('Confirm Password: ' + this._confirmPassword.toString());
  }
}
