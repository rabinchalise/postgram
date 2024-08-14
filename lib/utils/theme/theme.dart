import 'package:flutter/material.dart';
import 'package:job_finder/utils/theme/drop_down_menu_theme.dart';
import 'package:job_finder/utils/theme/elevated_button_theme.dart';
import 'package:job_finder/utils/theme/outline_button_theme.dart';
import 'package:job_finder/utils/theme/text_filed_theme.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Roboto',
  ).copyWith(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          scrolledUnderElevation: 0),
      elevatedButtonTheme: TElevatedButtonTheme.elevatedButton,
      outlinedButtonTheme: TOutlineButtonTheme.outlineButton,
      dropdownMenuTheme: TDropDownMenuTheme.dropdownMenuTheme,
      inputDecorationTheme: TTextFieldTheme.textField);
}
