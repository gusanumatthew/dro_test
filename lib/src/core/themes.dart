import 'package:dro_test/src/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = _themeData(_lightColorScheme);

  static _themeData(ColorScheme colorScheme) => ThemeData(
      appBarTheme: _appBarTheme(colorScheme),
      brightness: colorScheme.brightness,
      scaffoldBackgroundColor: colorScheme.onSurface,
      iconTheme: _iconThemeData(colorScheme),
      colorScheme: colorScheme,
      dividerColor: colorScheme.onBackground,
      textTheme: GoogleFonts.novaCutTextTheme(
        _textTheme(colorScheme),
      ));

  static final ColorScheme _lightColorScheme =
      const ColorScheme.light().copyWith(
    primary: AppColors.darkPurple,
    secondary: AppColors.droPurple,
    onSecondaryContainer: AppColors.droTur,
    onPrimary: AppColors.droTur,
    onBackground: AppColors.dark,
    onSurface: AppColors.light,
    brightness: Brightness.dark,
  );

  static AppBarTheme _appBarTheme(ColorScheme colorScheme) => AppBarTheme(
        color: colorScheme.onSurface,
      );

  static IconThemeData _iconThemeData(ColorScheme colorScheme) =>
      IconThemeData(color: colorScheme.onBackground);

  static TextTheme _textTheme(ColorScheme colorScheme) => TextTheme(
        subtitle1: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: colorScheme.onBackground,
        ),
        subtitle2: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: colorScheme.onBackground,
        ),
        headline1: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: colorScheme.onBackground,
        ),
        headline2: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: colorScheme.onBackground,
        ),
        headline3: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: colorScheme.primary,
        ),
        headline4: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: colorScheme.onBackground,
        ),
        overline: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: colorScheme.onBackground,
        ),
        headline5: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: colorScheme.onBackground,
        ),
        headline6: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: colorScheme.onBackground,
        ),
        bodyText1: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: colorScheme.onBackground,
        ),
        caption: TextStyle(
          fontSize: 16,
          color: colorScheme.primary,
          fontWeight: FontWeight.w700,
        ),
        bodyText2: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: colorScheme.onBackground,
        ),
      );
}
