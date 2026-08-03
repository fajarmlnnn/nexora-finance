import 'package:flutter/widgets.dart';

/// Centralized spacing system for Nexora Finance.
///
/// Do not use raw numbers like:
/// - EdgeInsets.all(16)
/// - SizedBox(height: 20)
///
/// Use AppSpacing instead.
abstract final class AppSpacing {
  AppSpacing._();

  // Base spacing scale
  static const double xxs = 2;
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double xxxl = 32;
  static const double huge = 40;
  static const double massive = 48;

  // Common page padding
  static const double page = 20;

  // Common card padding
  static const double card = 16;

  // Section spacing
  static const double section = 24;

  // List item spacing
  static const double item = 12;

  // Bottom navigation safe spacing
  static const double bottomBar = 80;
}

/// Quick EdgeInsets helpers.
abstract final class AppInsets {
  AppInsets._();

  static const EdgeInsets page = EdgeInsets.all(AppSpacing.page);

  static const EdgeInsets card = EdgeInsets.all(AppSpacing.card);

  static const EdgeInsets horizontal =
      EdgeInsets.symmetric(horizontal: AppSpacing.page);

  static const EdgeInsets vertical =
      EdgeInsets.symmetric(vertical: AppSpacing.page);

  static const EdgeInsets section =
      EdgeInsets.symmetric(vertical: AppSpacing.section);
}