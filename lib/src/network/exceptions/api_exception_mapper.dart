import 'package:crewmeister_core/src/network/exceptions/api_exception.dart';
import 'package:dio/dio.dart';

/// Converts DioException into a strongly typed ApiException
ApiException mapDioToApiException(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
      return const TimeoutException();

    case DioExceptionType.badResponse:
      final statusCode = e.response?.statusCode ?? 0;
      if (statusCode == 400) {
        return const BadRequestException();
      }
      if (statusCode == 401 || statusCode == 403) {
        return const UnauthorizedException();
      }
      if (statusCode == 404) {
        return const NotFoundException();
      }
      if (statusCode >= 500) {
        return const ServerErrorException();
      }
      return const UnexpectedException();

    case DioExceptionType.connectionError:
      return const NoInternetException();

    case DioExceptionType.badCertificate:
      return const ServerErrorException();

    case DioExceptionType.cancel:
    case DioExceptionType.unknown:
      return const UnexpectedException();
  }
}
