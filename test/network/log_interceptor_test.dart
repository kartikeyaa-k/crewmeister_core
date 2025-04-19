import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LogInterceptor', () {
    test('can be instantiated and used in Dio', () {
      final dio = Dio();
      dio.interceptors.add(LogInterceptor());

      expect(dio.interceptors.length, greaterThan(0));
    });

    test('does not throw when logging request/response', () async {
      final dio = Dio(
        BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'),
      )..interceptors.add(LogInterceptor());

      final response = await dio.get('/posts/1');
      expect(response.statusCode, equals(200));
    });
  });
}
