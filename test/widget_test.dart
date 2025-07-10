// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:project_zero/screens/account_type_selection_screen.dart';

void main() {
  testWidgets('Account type selection screen test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: AccountTypeSelectionScreen(),
    ));

    // Verify that the title is displayed.
    expect(find.text('Who is this account for?'), findsOneWidget);
    
    // Verify that both account type options are displayed.
    expect(find.text('Just me'), findsOneWidget);
    expect(find.text('My household'), findsOneWidget);
    
    // Verify that the progress indicator is displayed.
    expect(find.text('Step 1 of 4'), findsOneWidget);
  });
}
