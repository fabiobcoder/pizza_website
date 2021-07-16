import 'package:flutter/material.dart';

class TextStyles {
  //headers
  static TextStyle h1(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).accentColor,
      fontWeight: FontWeight.bold,
      fontSize: 40,
      height: 0.8,
    );
  }

  static TextStyle h2(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).accentColor,
      fontWeight: FontWeight.bold,
      fontSize: 30,
      height: 0.8,
    );
  }

  //misilanios
  static TextStyle actionButton(BuildContext context) {
    return TextStyle(fontSize: 20);
  }
}
