
import 'package:e_commerce/utils/theme/custom_theme/app_bar_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/chip_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/outline_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/text_field_theme.dart';
import 'package:e_commerce/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme  = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.elevatedButtonLightTheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlineTheme,
    inputDecorationTheme: TTextFieldTheme.lightTextFieldTheme

  );
  static ThemeData darkTheme  = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      textTheme: TTextTheme.darkTextTheme,
      chipTheme: TChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.elevatedButtonDarkTheme,
      outlinedButtonTheme: TOutlineButtonTheme.darkOutlineTheme,
      inputDecorationTheme: TTextFieldTheme.darkTextFieldTheme
  );


}