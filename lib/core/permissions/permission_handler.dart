// Copyright 2026 Gyudong Kim. All rights reserved.
// This file is part of Check In Mate project.
// Author: Gyudong Kim <dong3955@gmail.com>

import 'dart:async';

import 'package:geolocator/geolocator.dart';

/// Location Permission & Service Helper
/// Policy: Geofencing requires [LocationPermission.always]
/// UX: Request whileInUse first, upgrade to always when needed
class AppPermissionHandler {
  AppPermissionHandler._();

  /// Check if location service (GPS) is enabled
  static Future<bool> isLocationServiceEnabled() {
    return Geolocator.isLocationServiceEnabled();
  }

  /// Get current location permission status
  static Future<LocationPermission> currentLocationPermission() {
    return Geolocator.checkPermission();
  }

  /// Request location permission (whileInUse or always)
  /// Caller must handle deny/deny_forever cases
  static Future<LocationPermission> requestLocationPermission() {
    return Geolocator.requestPermission();
  }

  /// Check if has foreground location permission
  static Future<bool> hasForegroundLocation() async {
    final p = await currentLocationPermission();
    return p == LocationPermission.always || p == LocationPermission.whileInUse;
  }

  /// Check if has background geofencing permission
  static Future<bool> hasAlwaysLocation() async {
    final p = await currentLocationPermission();
    return p == LocationPermission.always;
  }

  /// Open system location settings
  static Future<bool> openLocationSettings() {
    return Geolocator.openLocationSettings();
  }

  /// Open app permission settings
  static Future<bool> openAppSettings() {
    return Geolocator.openAppSettings();
  }
}
