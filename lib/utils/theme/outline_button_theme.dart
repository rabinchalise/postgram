import 'package:flutter/material.dart';
import '../colors.dart';

class TOutlineButtonTheme {
  TOutlineButtonTheme._();
  static final OutlinedButtonThemeData outlineButton = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          backgroundColor: kSecondaryColor,
          foregroundColor: Colors.black,
          side: const BorderSide(color: kSecondaryColor),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.w600)));
}
