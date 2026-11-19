import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fillmydish_mobile/main.dart' as app;

void main() {
  testWidgets('Home bisa membuka Find Recipe', (tester) async {
    app.main();
    await tester.pumpAndSettle();

    expect(find.text('FillMyDish'), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, 'Find Recipe'));
    await tester.pumpAndSettle();

    expect(
      find.text('Halaman Find Recipe masih sementara.'),
      findsOneWidget,
    );
  });
}