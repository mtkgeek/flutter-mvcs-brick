import 'package:flutter/material.dart';

extension CapExtension on String {
  String get toSentenceCase => '${this[0].toUpperCase()}${substring(1)}';
  String get allInCaps => toUpperCase();
  String get capitalizeFirstofEach =>
      split(" ").map((str) => str.toSentenceCase).join(" ");
}

extension Utility on BuildContext {
  void nextEditableTextFocus() {
    do {
      FocusScope.of(this).nextFocus();
    } while (
        FocusScope.of(this).focusedChild?.context?.widget is! EditableText);
  }
}
