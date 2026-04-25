// Copyright 2026 Gyudong Kim. All rights reserved.
// This file is part of Check In Mate project.
// Author: Gyudong Kim <dong3955@gmail.com>

import 'dart:async';

import 'package:hive_flutter/hive_flutter.dart';

/// Local Storage (Hive-based Singleton)
class HiveStorage {
  HiveStorage._();

  static final HiveStorage _instance = HiveStorage._();

  factory HiveStorage() => _instance;

  bool _initialized = false;

  /// Initialize Hive (call once from main)
  Future<void> initialize() async {
    if (_initialized) return;

    await Hive.initFlutter();

    _initialized = true;
  }

  /// Close Hive on app shutdown
  Future<void> close() => Hive.close();
}
