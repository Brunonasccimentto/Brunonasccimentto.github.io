// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:escribo/controller/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  group('counter test', () {
    final controller = HomepageController();

    test('deve somar valores divisiveis por 3 e 5', () {
      final result = controller.sumAllValuesDivisibleBy3And5('9');

      expect(result, 14);
    });

    test('deve somar valores divisiveis por 3 e 5', () {
      final result = controller.sumAllValuesDivisibleBy3And5('11');

      expect(result, 33);
    });

    test('deve somar valores divisiveis por 3 e 5', () {
      final result = controller.sumAllValuesDivisibleBy3And5('10');

      expect(result, 23);
    });
  });
}
