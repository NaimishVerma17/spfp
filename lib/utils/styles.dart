import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

abstract class Styles {
  static const Color primaryColor = Color(0xFF487473);
  static const Color accentColor = Color(0xFF7f9e9d);
  static const Color errorColor = Color(0xFFB83227);
  static const Color subHeadingColor = Color(0xFF777E8B);
  static const Color homeBackgroundColor = Color(0xFFF9F2F2);
  static const Color textBackgroundColor = Color(0xFFECF1F1);
  static const Color linkColor = Color(0xFF0ABDE3);

  static TextStyle pageTitleText() {
    return TextStyle(
        color: primaryColor,
        fontSize: 21.0,
        letterSpacing: 1.3,
        fontWeight: FontWeight.w800);
  }

  static TextStyle drawerItemsText() {
    return TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        letterSpacing: 1.2,
        fontWeight: FontWeight.w500);
  }

  static TextStyle headingText() {
    return TextStyle(
        color: primaryColor,
        fontSize: 24.0,
        letterSpacing: 1.3,
        fontWeight: FontWeight.w800);
  }

  static TextStyle titleText() {
    return TextStyle(
        fontSize: 22.0,
        letterSpacing: 1.2,
        fontWeight: FontWeight.w700);
  }

  static TextStyle subTitleText() {
    return TextStyle(
        fontSize: 18.0,
        letterSpacing: 1.1,
        fontWeight: FontWeight.w600);
  }

  static TextStyle subHeadingText() {
    return TextStyle(
        color: subHeadingColor, fontSize: 14.0, fontWeight: FontWeight.w500);
  }

  static TextStyle labelText() {
    return TextStyle(fontSize: 17.0, fontWeight: FontWeight.w500);
  }

  static InputDecoration getInputDecoration(String hint) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(2.0),
        ),
      ),
      hintText: hint,
      errorStyle: TextStyle(color: Styles.errorColor),
    );
  }

  static showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 2,
        backgroundColor: primaryColor,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
