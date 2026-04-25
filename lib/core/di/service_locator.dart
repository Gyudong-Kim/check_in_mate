// Copyright 2026 Gyudong Kim. All rights reserved.
// This file is part of Check In Mate project.
// Author: Gyudong Kim <dong3955@gmail.com>

import 'package:check_in_mate/core/data_sources/hive.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

/// Service Locator DI setup
Future<void> setupServiceLocator() async {
  // Initialize before registering
  await HiveStorage().initialize();

  // Core layer
  getIt.registerSingleton<HiveStorage>(HiveStorage());

  // DataSources

  // Repositories

  // UseCases

  // Controllers
}
