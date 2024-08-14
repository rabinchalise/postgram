import 'package:flutter/material.dart';

import '../colors.dart';

class TTextFieldTheme {
  static InputDecorationTheme textField = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: Colors.black54,
      suffixIconColor: Colors.black54,
      fillColor: kSecondaryColor,
      prefixStyle: const TextStyle(fontSize: 16, color: Colors.black54),
      filled: true,
      labelStyle: const TextStyle(fontSize: 16, color: Colors.black),
      hintStyle: const TextStyle(fontSize: 16, color: Colors.black54),
      errorStyle: const TextStyle(fontStyle: FontStyle.normal),
      floatingLabelStyle: TextStyle(color: Colors.black.withOpacity(0.8)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: kSecondaryColor)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: kSecondaryColor)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: kSecondaryColor)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: Color(0xFFF57C00))),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 2, color: Color(0xFFF57C00))));
}
