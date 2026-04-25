// Copyright 2026 Gyudong Kim. All rights reserved.
// This file is part of Check In Mate project.
// Author: Gyudong Kim <dong3955@gmail.com>

import 'dart:async';

import 'package:check_in_mate/core/di/service_locator.dart';
import 'package:check_in_mate/core/logger/app_logger.dart';
import 'package:check_in_mate/core/theme/app_fonts.dart';
import 'package:check_in_mate/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await setupServiceLocator();
    logger.info('App initialized');
  } catch (e, st) {
    logger.error('App initialization failed', e, st);
    rethrow;
  }

  runApp(const CheckInMateApp());
}

class CheckInMateApp extends StatelessWidget {
  const CheckInMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Check In Mate',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const _PlaceholderHome(),
      // TODO: Replace with GoRouter when routing is implemented
    );
  }
}

class _PlaceholderHome extends StatelessWidget {
  const _PlaceholderHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Check In Mate')),
      body: const Center(child: Text('출퇴근 알림 앱', style: AppFonts.h2)),
    );
  }
}
