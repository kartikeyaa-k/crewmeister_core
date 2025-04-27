import 'package:crewmeister_core/crewmeister_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ApiClient', () {
    late ApiClient apiClient;

    setUp(() {
      apiClient = ApiClient(baseUrl: 'https://example.com');
    });

    test('constructs with default options', () {
      expect(apiClient, isA<ApiClient>());
    });

    test('throws mapped exception on DioError', () async {
      final client = ApiClient(baseUrl: 'https://bad.url.com');

      await expectLater(
        () async => client.get('/fail'),
        throwsA(isA<ApiException>()),
      );
    });
  });
}
