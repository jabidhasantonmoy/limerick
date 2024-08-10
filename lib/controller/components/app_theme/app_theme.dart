import 'package:flutter/material.dart';

import '../utils/media_size.dart';
import 'app_color.dart';
import 'text_style.dart';

enum Theme { light, dark }

const String appTheme = 'appTheme';
const String light = 'light';
const String dark = 'dark';

bool lightThemeFlag = true;

class AppTheme {
  // Light Theme

  static final lightMode = ThemeData(
    colorScheme: const ColorScheme.light().copyWith(
      surface: AppColor.backgroundColor,
    ),
    useMaterial3: true,
    inputDecorationTheme: _lightInputDecorationTheme(),
  );

  static InputDecorationTheme _lightInputDecorationTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      hintStyle: TStyle.roboto(
        color: AppColor.text263238.withOpacity(0.32),
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(fixedRatio(10)),
        borderSide: BorderSide(
          width: fixedRatio(1),
          color: AppColor.border263238.withOpacity(0.32),
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(fixedRatio(10)),
        borderSide: BorderSide(
          width: fixedRatio(1),
          color: AppColor.border263238.withOpacity(0.32),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(fixedRatio(10)),
        borderSide: BorderSide(
          width: fixedRatio(1),
          color: AppColor.border263238.withOpacity(0.32),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(fixedRatio(10)),
        borderSide: BorderSide(
          width: fixedRatio(1),
          color: AppColor.border263238.withOpacity(0.32),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(fixedRatio(10)),
        borderSide: BorderSide(
          width: fixedRatio(1),
          color: AppColor.border263238.withOpacity(0.32),
        ),
      ),
    );
  }
}
