import 'package:crewmeister_core/src/network/exceptions/api_exception_mapper.dart';
import 'package:dio/dio.dart';

/// A simple wrapper around Dio for making HTTP requests.
class ApiClient {
  /// Construct an ApiClient with the given [baseUrl].
  /// You can pass additional [options] to customize Dio.
  ApiClient({
    required String baseUrl,
    BaseOptions? options,
    List<Interceptor>? interceptors,
  }) : _dio = Dio(options ?? BaseOptions(baseUrl: baseUrl)) {
    // Attach interceptors, including our logging interceptor
    _dio.interceptors.addAll([
      LogInterceptor(),
      if (interceptors != null) ...interceptors,
    ]);
  }
  final Dio _dio;

  /// Performs a GET request to [path] with optional [queryParameters].
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    try {
      return _dio.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
      );
    } on DioException catch (e) {
      throw mapDioToApiException(e);
    }
  }

  /// Performs a POST request to [path] with optional [data] and [queryParameters].
  Future<Response<T>> post<T>(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    try {
      return _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } on DioException catch (e) {
      throw mapDioToApiException(e);
    }
  }

  /// Performs a PUT request to [path] with optional [data] and [queryParameters].
  Future<Response<T>> put<T>(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    try {
      return _dio.put<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } on DioException catch (e) {
      throw mapDioToApiException(e);
    }
  }

  /// Performs a DELETE request to [path] with optional [data] and [queryParameters].
  Future<Response<T>> delete<T>(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    try {
      return _dio.delete<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } on DioException catch (e) {
      throw mapDioToApiException(e);
    }
  }
}
