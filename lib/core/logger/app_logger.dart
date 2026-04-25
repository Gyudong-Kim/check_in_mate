// Copyright 2026 Gyudong Kim. All rights reserved.
// This file is part of Check In Mate project.
// Author: Gyudong Kim <dong3955@gmail.com>

import 'package:logger/logger.dart';

/// Global Logger Singleton
/// Usage: logger.info('message'); logger.error('msg', error, stack);
class AppLogger {
  AppLogger._() {
    _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 0,
        errorMethodCount: 8,
        lineLength: 100,
        colors: true,
        printEmojis: true,
        dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
      ),
    );
  }

  static final AppLogger _instance = AppLogger._();

  factory AppLogger() => _instance;

  late final Logger _logger;

  void debug(String message, [Object? error, StackTrace? stackTrace]) =>
      _logger.d(message, error: error, stackTrace: stackTrace);

  void info(String message, [Object? error, StackTrace? stackTrace]) =>
      _logger.i(message, error: error, stackTrace: stackTrace);

  void warning(String message, [Object? error, StackTrace? stackTrace]) =>
      _logger.w(message, error: error, stackTrace: stackTrace);

  void error(String message, [Object? error, StackTrace? stackTrace]) =>
      _logger.e(message, error: error, stackTrace: stackTrace);
}

/// Global Logger Instance
final logger = AppLogger();
