import 'package:flutter_test/flutter_test.dart';
import 'package:cyclone_emergency_app/main.dart';

void main() {
  testWidgets('Cyclone Emergency App loads successfully', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const CycloneEmergencyApp());

    expect(find.text('CYCLONE'), findsOneWidget);
    expect(find.text('EMERGENCY'), findsOneWidget);
    expect(find.text('Get Started  →'), findsOneWidget);
  });
}
