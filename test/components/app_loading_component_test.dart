import 'package:crewmeister_core/crewmeister_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('test app loading component', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: AppLoadingComponent())),
    );

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    // Verify that it is centered
    expect(find.byType(Center), findsOneWidget);
  });
}
