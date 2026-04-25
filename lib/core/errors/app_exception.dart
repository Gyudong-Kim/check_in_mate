// Copyright 2026 Gyudong Kim. All rights reserved.
// This file is part of Check In Mate project.
// Author: Gyudong Kim <dong3955@gmail.com>

/// Base class for all app exceptions
sealed class AppException implements Exception {
  final String message;
  final Object? cause;

  const AppException(this.message, {this.cause});

  @override
  String toString() => message;
}

final class LocationException extends AppException {
  const LocationException(super.message, {super.cause});
}

final class PermissionException extends AppException {
  const PermissionException(super.message, {super.cause});
}

final class StorageException extends AppException {
  const StorageException(super.message, {super.cause});
}

final class ValidationException extends AppException {
  const ValidationException(super.message, {super.cause});
}

final class NotificationException extends AppException {
  const NotificationException(super.message, {super.cause});
}

final class UnknownException extends AppException {
  const UnknownException(super.message, {super.cause});
}
