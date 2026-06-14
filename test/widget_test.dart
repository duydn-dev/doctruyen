import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:doctruyen/app.dart';

void main() {
  testWidgets('Home page smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProviderScope(child: DocTruyenApp()));
    await tester.pumpAndSettle();

    // Verify that our home page displays 'Home'.
    expect(find.text('Home'), findsWidgets);
  });
}
