import 'package:flutter/material.dart';

/// Centralized color palette for Nexora Finance.
///
/// Do not use Colors.* directly in the UI.
/// Always reference colors from this class.
abstract final class AppColors {
  AppColors._();

  // =========================
  // Brand
  // =========================

  static const Color primary = Color(0xFF7C5CFF);
  static const Color secondary = Color(0xFF00D4FF);

  // =========================
  // Background
  // =========================

  static const Color background = Color(0xFF0B1120);
  static const Color surface = Color(0xFF151F34);
  static const Color card = Color(0xFF1D2942);

  // =========================
  // Text
  // =========================

  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFB8C1D1);
  static const Color textHint = Color(0xFF7B879D);

  // =========================
  // Status
  // =========================

  static const Color success = Color(0xFF2ECC71);
  static const Color warning = Color(0xFFF5B041);
  static const Color danger = Color(0xFFFF5C5C);
  static const Color info = Color(0xFF3B82F6);

  // =========================
  // Divider & Border
  // =========================

  static const Color divider = Color(0xFF263248);
  static const Color border = Color(0xFF2F3B52);

  // =========================
  // Icon
  // =========================

  static const Color iconPrimary = Colors.white;
  static const Color iconSecondary = textSecondary;

  // =========================
  // Transaction
  // =========================

  static const Color income = success;
  static const Color expense = danger;

  // =========================
  // Budget
  // =========================

  static const Color budget = Color(0xFF8B5CF6);

  // =========================
  // Goals
  // =========================

  static const Color goal = Color(0xFFF59E0B);

  // =========================
  // Investment
  // =========================

  static const Color investment = Color(0xFF06B6D4);

  // =========================
  // AI
  // =========================

  static const Color ai = Color(0xFF6366F1);

  // =========================
  // Misc
  // =========================

  static const Color transparent = Colors.transparent;
}