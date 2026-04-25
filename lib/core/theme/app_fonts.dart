// Copyright 2026 Gyudong Kim. All rights reserved.
// This file is part of Check In Mate project.
// Author: Gyudong Kim <dong3955@gmail.com>

import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Design System Typography (Pretendard Font)
class AppFonts {
  AppFonts._();

  static const String _family = 'Pretendard';

  // Headings (SemiBold)
  /// 32px - Main Title
  static const TextStyle h1 = TextStyle(
    fontFamily: _family,
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  /// 24px - Screen Title
  static const TextStyle h2 = TextStyle(
    fontFamily: _family,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  /// 20px - Card Title
  static const TextStyle h3 = TextStyle(
    fontFamily: _family,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // Subtitles (SemiBold)
  /// 18px - Emphasis Text
  static const TextStyle sub1 = TextStyle(
    fontFamily: _family,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  /// 14px - Section Guide
  static const TextStyle sub2 = TextStyle(
    fontFamily: _family,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textSecondary,
  );

  // Body (Regular)
  /// 16px - Default Body Text
  static const TextStyle body1 = TextStyle(
    fontFamily: _family,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  /// 14px - Secondary Description
  static const TextStyle body2 = TextStyle(
    fontFamily: _family,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  // Actions & Elements (SemiBold)
  /// 16px - Main Button
  static const TextStyle button1 = TextStyle(
    fontFamily: _family,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  /// 14px - Sub Button
  static const TextStyle button2 = TextStyle(
    fontFamily: _family,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  /// 12px - Link/Edit Button
  static const TextStyle underLine = TextStyle(
    fontFamily: _family,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
    decoration: TextDecoration.underline,
  );

  /// 10px - Footer Info
  static const TextStyle caption = TextStyle(
    fontFamily: _family,
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: AppColors.textSecondary,
  );
}
