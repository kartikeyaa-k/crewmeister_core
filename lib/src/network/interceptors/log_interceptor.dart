import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

/// A Dio interceptor that emits to the Dart `Logger`
/// so that whatever handlers attached via `LoggerClient` will run.
class LogInterceptor extends Interceptor {
  final _log = Logger('ApiClient');

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _log.info('--> ${options.method} ${options.uri}');
    if (options.data != null) {
      _log.fine('Request Data: ${options.data}');
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _log.info('<-- ${response.statusCode} ${response.requestOptions.uri}');
    if (response.data != null) {
      _log.fine('Response Data: ${response.data}');
    }
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final uri = err.requestOptions.uri;
    _log.severe('<-- Error ${err.response?.statusCode} $uri', err.error);
    if (err.response?.data != null) {
      _log.fine('Error Data: ${err.response!.data}');
    }
    handler.next(err);
  }
}
