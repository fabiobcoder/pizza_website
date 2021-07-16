//commented out since tis code has errors

import 'package:flutter/material.dart';

import 'checkable.dart';

class OverlayRadioButton extends StatelessWidget {
  final Widget child;
  final Function(bool) onChanged;
  final int selectedNumber;
  final int numberToBeSelected;

  OverlayRadioButton(
      this.child, this.selectedNumber, this.numberToBeSelected, this.onChanged);

  @override
  Widget build(BuildContext context) {
    return Checkable(
      child,
      (selectedNumber == numberToBeSelected ? true : false),
      onChanged,
    );
  }
}
