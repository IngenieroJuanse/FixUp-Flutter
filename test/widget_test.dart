import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fixup_flutter/main.dart';

void main() {
  testWidgets('FixUp app loads correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const FixUpApp());

    expect(find.byType(MaterialApp), findsOneWidget);
  });
}