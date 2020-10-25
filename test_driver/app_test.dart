// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.
    final signUPBtnFinder = find.byValueKey('SIGN_UP');
    final loginButtonFinder = find.byValueKey('LOGIN');
    final forgotPasswordBtn = find.byValueKey('forgotPassword');

    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
      final language = await driver.requestData(null);
      print('language=$language');
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('is Login btn text button', () async {
      // Use the `driver.getText` method to verify the counter starts at 0.
      expect(await driver.getText(loginButtonFinder), "LOGIN");
      await driver.tap(loginButtonFinder);

      driver.

      expect(await driver.getText(forgotPasswordBtn), "Forgot your password?");

      await driver.tap(forgotPasswordBtn);

      await driver.tap(find.pageBack());
    });

    // test('increments the counter', () async {
    //   // First, tap the button.
    //   await driver.tap(buttonFinder);
    //
    //   // Then, verify the counter text is incremented by 1.
    //   expect(await driver.getText(counterTextFinder), "1");
    // });
  });
}
