// paleta de colores

import 'package:flutter/material.dart';

/// Paleta de colores principal para la aplicación MiJornada.
abstract final class AppColors {
  // Colores base
  static const primary = Color(0xFF1565C0); 
  static const primaryDark = Color(0xFF0D47A1);
  static const primaryLight = Color(0xFF5E92F3);

  static const accent = Color(0xFFFFA000);
  static const background = Color(0xFFF4F6F8); 
  static const surface = Colors.white;
  static const textPrimary = Color(0xFF1E1E1E);
  static const textSecondary = Color(0xFF616161);
  static const error = Color(0xFFD32F2F);

  static const success = Color(0xFF2E7D32);
  static const warning = Color(0xFFF57C00);
  static const info = Color(0xFF0288D1);

  // Colores transparentes
  static const whiteTransparent = Color(0x4DFFFFFF);
  static const blackTransparent = Color(0x4D000000);

  // ESQUEMA CLARO 
  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primary,
    onPrimary: Colors.white,
    secondary: AppColors.accent,
    onSecondary: Colors.white,
    surface: AppColors.surface,
    onSurface: AppColors.textPrimary,
    error: AppColors.error,
    onError: Colors.white,
  );

  // ESQUEMA OSCURO
  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primaryLight,
    onPrimary: Colors.black,
    secondary: AppColors.accent,
    onSecondary: Colors.black,
    surface: Color(0xFF121212),
    onSurface: Colors.white,
    error: AppColors.error,
    onError: Colors.black,
  );
}
