import 'package:flutter/material.dart';

import 'constants/app_colors.dart';

const ColorScheme _colorScheme = ColorScheme(
  primary: AppColors.blueApp, 
  onPrimary: AppColors.accentGreen, 
  secondary: Color(0xFF2196F3), 
  onSecondary: Color(0xFF3A484D), 
  error: Colors.redAccent, 
  onError: Colors.white, 
  surface: Colors.white, 
  onSurface: AppColors.blueApp, 
  brightness: Brightness.light,
);

final ThemeData appTheme =
    ThemeData(colorScheme: _colorScheme, fontFamily: 'nunito');
