import 'package:flutter_test/flutter_test.dart';
import 'package:ruan_design_system_example/main.dart';

void main() {
  testWidgets('App loads and shows design system content', (WidgetTester tester) async {
    await tester.pumpWidget(const ExampleApp());
    await tester.pumpAndSettle();
    expect(find.text('Display Large'), findsOneWidget);
  });
}
