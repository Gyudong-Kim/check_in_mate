// Copyright 2026 Gyudong Kim. All rights reserved.
// This file is part of Check In Mate project.
// Author: Gyudong Kim <dong3955@gmail.com>

import 'package:flutter/material.dart';

/// Design System Color (Dark Theme)
class AppColors {
  AppColors._();

  // Primary (Brand)
  static const Color primary500 = Color(0xFF3DD066); // main
  static const Color primary300 = Color(0xFF8AF093); // light
  static const Color primary700 = Color(0xFF1E9557); // dark

  // Neutral (Grey)
  static const Color grey900 = Color(0xFF1B1B1B); // text/emphasis
  static const Color grey500 = Color(0xFF808080); // secondary text
  static const Color grey300 = Color(0xFFCCCCCC); // disabled/border
  static const Color grey100 = Color(0xFFF7F7F7); // background accent

  // Surface (Dark Theme)
  static const Color background = Color(0xFF242424); // app background
  static const Color card1 = Color(0xFF1B1B1B); // elevation 1
  static const Color card2 = Color(0xFF2E2E2E); // elevation 2

  // Semantic
  static const Color error = Color(0xFFFF5252);
  static const Color warning = Color(0xFFFFC107);

  // Semantic aliases
  static const Color primary = primary500;
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = grey500;
  static const Color border = card2;

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Colors.transparent;
}
