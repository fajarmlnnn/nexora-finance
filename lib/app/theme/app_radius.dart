import 'package:flutter/widgets.dart';

/// Centralized border radius system.
///
/// Never use BorderRadius.circular() directly.
/// Always use AppRadius.
abstract final class AppRadius {
  AppRadius._();

  static const double none = 0;

  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20;
  static const double xxl = 24;
  static const double pill = 999;

  static const BorderRadius small =
      BorderRadius.all(Radius.circular(sm));

  static const BorderRadius medium =
      BorderRadius.all(Radius.circular(md));

  static const BorderRadius large =
      BorderRadius.all(Radius.circular(lg));

  static const BorderRadius extraLarge =
      BorderRadius.all(Radius.circular(xxl));

  static const BorderRadius full =
      BorderRadius.all(Radius.circular(pill));
}