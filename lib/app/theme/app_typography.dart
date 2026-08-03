import 'package:flutter/material.dart';

/// Typography system for Nexora Finance.
///
/// Uses Geist as the primary font.
/// JetBrains Mono is used for balances and numeric values.
abstract final class AppTypography {
  AppTypography._();

  static const String fontFamily = 'Geist';
  static const String monoFontFamily = 'JetBrainsMono';

  // =========================
  // Display
  // =========================

  static const TextStyle displayLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  static const TextStyle displayMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  // =========================
  // Headlines
  // =========================

  static const TextStyle headlineLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.3,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22,
    fontWeight: FontWeight.w600,
    height: 1.3,
  );

  static const TextStyle titleLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );

  static const TextStyle titleMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );

  // =========================
  // Body
  // =========================

  static const TextStyle bodyLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  // =========================
  // Labels
  // =========================

  static const TextStyle labelLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle labelMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle labelSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  // =========================
  // Numbers
  // =========================

  static const TextStyle balanceLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 42,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
  );

  static const TextStyle balanceMedium = TextStyle(
    fontFamily: monoFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle balanceSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle currency = TextStyle(
    fontFamily: monoFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}