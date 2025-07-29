import 'package:flutter/material.dart';
import 'package:flutter_template/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_template/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_template/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_template/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_template/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_template/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:flutter_template/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter_template/utils/theme/custom_themes/text_theme.dart';

class KAppTheme {
  KAppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: KTextTheme.lightTextTheme,
    chipTheme: KChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: KAppBarTheme.lightAppBarTheme,
    checkboxTheme: KCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: KBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: KElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: KOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: KTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: KTextTheme.darkTextTheme,
    chipTheme: KChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: KAppBarTheme.darkAppBarTheme,
    checkboxTheme: KCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: KBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: KElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: KOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: KTextFormFieldTheme.darkInputDecorationTheme,
  );
}
