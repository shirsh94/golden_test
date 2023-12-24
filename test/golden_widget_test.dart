import 'package:flutter_test/flutter_test.dart';
import 'package:golden_test/main.dart';

void main() {
  testWidgets('Golden test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await expectLater(find.byType(MyApp), matchesGoldenFile('counter.png'));
  });
}
