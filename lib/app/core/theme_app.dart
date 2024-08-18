import 'package:flutter/material.dart';

import 'constants/app_colors.dart';

const ColorScheme _colorScheme = ColorScheme(
  primary: AppColors.blueApp, // Vibrant green for primary branding
  onPrimary: AppColors.accentGreen, // White text/icons on primary color
  secondary: Color(0xFF2196F3), // Bright blue for secondary elements
  onSecondary: Color(0xFF3A484D), // White text/icons on secondary color
  error: Colors.redAccent, // Red for error messages/alerts
  onError: Colors.white, // White text/icons on error color
  surface: Colors.white, // Light gray for surfaces like cards, dialogs
  onSurface: AppColors.blueApp, // Dark gray text/icons on surface color
  brightness: Brightness.light,
);

final ThemeData appTheme =
    ThemeData(colorScheme: _colorScheme, fontFamily: 'nunito');
