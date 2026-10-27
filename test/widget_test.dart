import 'package:flutter_test/flutter_test.dart';
import 'package:profile_card_app/main.dart';

void main() {
  testWidgets('Profile Card App smoke and UI element test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProfileCardApp());

    // 1. Verify Avatar Initials "HR"
    expect(find.text('HR'), findsOneWidget);

    // 2. Verify Name
    expect(find.text('Your Name'), findsOneWidget);

    // 3. Verify Role
    expect(find.text('Computer Science Engineering Student'), findsOneWidget);

    // 4. Verify Contact Information
    expect(find.text('your.name@college.edu'), findsOneWidget);
    expect(find.text('+91 98765 43210'), findsOneWidget);
    expect(find.text('Bangalore, Karnataka, India'), findsOneWidget);

    // 5. Verify App Bar title
    expect(find.text('Profile Card'), findsOneWidget);
  });
}
