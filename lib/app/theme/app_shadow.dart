import 'package:flutter/material.dart';

/// Centralized shadow system for Nexora Finance.
///
/// Use AppShadow instead of creating custom BoxShadow objects
/// throughout the application.
abstract final class AppShadow {
  AppShadow._();

  /// Soft shadow for cards.
  static const List<BoxShadow> soft = [
    BoxShadow(
      color: Color(0x14000000),
      blurRadius: 16,
      spreadRadius: 0,
      offset: Offset(0, 6),
    ),
  ];

  /// Medium shadow for elevated components.
  static const List<BoxShadow> medium = [
    BoxShadow(
      color: Color(0x1F000000),
      blurRadius: 24,
      spreadRadius: 0,
      offset: Offset(0, 10),
    ),
  ];

  /// Strong shadow for dialogs and floating widgets.
  static const List<BoxShadow> large = [
    BoxShadow(
      color: Color(0x29000000),
      blurRadius: 32,
      spreadRadius: 0,
      offset: Offset(0, 14),
    ),
  ];

  /// No shadow.
  static const List<BoxShadow> none = [];
}