import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:newproject_vscode/main.dart'; // Ensure this path is correct

void main() {
  testWidgets('App loads correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app shows the expected text.
    expect(find.text('this is a dynamic text that can be changed'),
        findsOneWidget);
  });
}
