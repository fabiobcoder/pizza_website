import 'package:flutter/material.dart';

Color invert(Color color) {
  final int r = 255 - color.red;
  final int g = 255 - color.green;
  final int b = 255 - color.blue;

  return Color.fromRGBO(r, g, b, color.opacity);
}
