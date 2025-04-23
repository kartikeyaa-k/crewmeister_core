import 'package:crewmeister_core/src/constants/error_messages.dart';

/// Defines standard exceptions for HTTP and network errors.

abstract class ApiException implements Exception {
  const ApiException([this.message]);

  final String? message;

  @override
  String toString() => message ?? runtimeType.toString();
}

class NoInternetException extends ApiException {
  const NoInternetException([String? message]) : super(message ?? kNoInternet);
}

class TimeoutException extends ApiException {
  const TimeoutException([String? message]) : super(message ?? kTimeout);
}

class BadRequestException extends ApiException {
  const BadRequestException([String? message]) : super(message ?? kBadRequest);
}

class UnauthorizedException extends ApiException {
  const UnauthorizedException([String? message])
    : super(message ?? kUnauthorized);
}

class NotFoundException extends ApiException {
  const NotFoundException([String? message]) : super(message ?? kNotFound);
}

class ServerErrorException extends ApiException {
  const ServerErrorException([String? message])
    : super(message ?? kServerError);
}

class UnexpectedException extends ApiException {
  const UnexpectedException([String? message]) : super(message ?? kUnexpected);
}
