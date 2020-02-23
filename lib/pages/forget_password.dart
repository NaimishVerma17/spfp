import 'package:flutter/material.dart';
import 'package:student_portal/widgets/custom_button.dart';
import 'package:student_portal/utils/styles.dart';

class ForgetPasswordPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ForgetPasswordPage();
  }
}

class _ForgetPasswordPage extends State<ForgetPasswordPage> {
  final GlobalKey<FormState> _globalKey = new GlobalKey();
  bool _isLoading = false;
  String _studentEmail;

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
                  'Forget Password',
                  style: Styles.headingText(),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Enter your email address, we will send you a link to reset your password.',
                  textAlign: TextAlign.center,
                  style: Styles.subHeadingText(),
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
                        decoration: Styles.getInputDecoration('Student Email'),
                        onSaved: (value) {
                          this._studentEmail = value;
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
                  text: 'Send Email',
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
    print('Student email: ' + this._studentEmail.toString());
    Navigator.pushNamed(context, '/reset-password');
  }
}
