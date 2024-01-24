import 'package:flutter_test/flutter_test.dart';
import 'package:golden_test/main.dart';

void main() {
  testWidgets('Golden test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await expectLater(find.byType(MyApp), matchesGoldenFile('counter.png'));
    /*TODO - If you want to test the failure condition, just change the color of this FloatingActionButton button in the main.dart class.*/

  });
}
