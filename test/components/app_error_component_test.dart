import 'package:crewmeister_core/src/components/app_error_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('test app error component', (tester) async {
    const errorMessage = 'Something went wrong!';
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AppErrorComponent(
            message: errorMessage,
            retryCtaTitle: 'Retry',
            onRetry: () {},
          ),
        ),
      ),
    );

    expect(find.byIcon(Icons.error_outline), findsOneWidget);
    // Check that the message is displayed
    expect(find.text(errorMessage), findsOneWidget);
  });
}
