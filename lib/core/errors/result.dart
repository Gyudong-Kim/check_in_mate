// Copyright 2026 Gyudong Kim. All rights reserved.
// This file is part of Check In Mate project.
// Author: Gyudong Kim <dong3955@gmail.com>

import 'app_exception.dart';

/// Represents either success or failure explicitly
/// Sealed class enforces exhaustive check on switch pattern matching
sealed class Result<T> {
  const Result();

  /// Helper that forces handling both success and failure branches
  R when<R>({
    required R Function(T data) onSuccess,
    required R Function(AppException error) onFailure,
  }) {
    return switch (this) {
      Success<T>(:final data) => onSuccess(data),
      Failure<T>(:final error) => onFailure(error),
    };
  }

  bool get isSuccess => this is Success<T>;

  bool get isFailure => this is Failure<T>;

  /// Extract data safely (null if failure)
  T? get dataOrNull => switch (this) {
        Success<T>(:final data) => data,
        Failure<T>() => null,
      };

  /// Extract error safely (null if success)
  AppException? get errorOrNull => switch (this) {
        Success<T>() => null,
        Failure<T>(:final error) => error,
      };
}

final class Success<T> extends Result<T> {
  final T data;

  const Success(this.data);
}

final class Failure<T> extends Result<T> {
  final AppException error;

  const Failure(this.error);
}
