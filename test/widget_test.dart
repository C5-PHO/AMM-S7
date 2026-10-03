import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('shows FAQ list and expands an answer', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('FAQ'), findsOneWidget);
    expect(find.text('Como puedo cambiar mi contrasena?'), findsWidgets);
    expect(find.textContaining('Para cambiar tu contrasena'), findsNothing);

    await tester.tap(find.text('Como puedo cambiar mi contrasena?').first);
    await tester.pumpAndSettle();

    expect(find.textContaining('Para cambiar tu contrasena'), findsWidgets);
  });
}
