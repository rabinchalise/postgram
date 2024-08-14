import 'package:flutter/material.dart';
import '../colors.dart';

class TDropDownMenuTheme {
  static DropdownMenuThemeData dropdownMenuTheme = DropdownMenuThemeData(
    menuStyle: MenuStyle(
      elevation: const WidgetStatePropertyAll(0),
      backgroundColor: const WidgetStatePropertyAll(Colors.white),
      side: WidgetStatePropertyAll(BorderSide(color: Colors.grey.shade200)),
      shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    ),
    textStyle: const TextStyle(fontSize: 16, color: Colors.black54),
    inputDecorationTheme: const InputDecorationTheme(
        fillColor: kSecondaryColor,
        filled: true,
        floatingLabelStyle: TextStyle(fontSize: 16, color: Colors.black),
        hintStyle: TextStyle(fontSize: 16, color: Colors.black54)),
  );
}
