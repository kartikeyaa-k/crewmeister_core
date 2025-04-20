import 'package:crewmeister_core/crewmeister_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('test app empty component', (tester) async {
    const message = 'No data found';
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: AppEmptyComponent(message: message)),
      ),
    );

    // Check that the message is displayed
    expect(find.text(message), findsOneWidget);

    // Check that the default icon is rendered
    expect(find.byIcon(Icons.inbox), findsOneWidget);
  });
}
