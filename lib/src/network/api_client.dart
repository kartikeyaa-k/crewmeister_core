import 'package:dio/dio.dart';

/// A simple wrapper around Dio for making HTTP requests.
class ApiClient {
  /// Construct an ApiClient with the given [baseUrl].
  /// You can pass additional [options] to customize Dio.
  ApiClient({required String baseUrl, BaseOptions? options})
    : _dio = Dio(options ?? BaseOptions(baseUrl: baseUrl));
  final Dio _dio;

  /// Performs a GET request to [path] with optional [queryParameters].
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
      options: options,
    );
  }

  /// Performs a POST request to [path] with optional [data] and [queryParameters].
  Future<Response<T>> post<T>(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _dio.post<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }

  /// Performs a PUT request to [path] with optional [data] and [queryParameters].
  Future<Response<T>> put<T>(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _dio.put<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }

  /// Performs a DELETE request to [path] with optional [data] and [queryParameters].
  Future<Response<T>> delete<T>(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _dio.delete<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }
}
