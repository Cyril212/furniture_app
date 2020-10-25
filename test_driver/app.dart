// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:ui';

import 'package:flutter_driver/driver_extension.dart';
import 'package:furniture_app/main.dart' as app;

void main() {
  final DataHandler handler = (_) async {
    final language = window.locale.languageCode;
    return Future.value(language);
  };

  enableFlutterDriverExtension(handler: handler);
  app.main();
}
