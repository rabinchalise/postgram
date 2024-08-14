import 'package:flutter/material.dart';
import '../colors.dart';

class TElevatedButtonTheme {
  static final ElevatedButtonThemeData elevatedButton = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: kPrimaryColor,
          foregroundColor: Colors.white,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(
            color: kPrimaryColor,
          ),
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))));
}
