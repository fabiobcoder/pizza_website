import 'dart:ffi';

import 'package:flutter/material.dart';

class Checkable extends StatelessWidget {
  final bool selected;
  final void Function(bool) onChanged;
  final Widget child;

  Checkable(this.child, this.selected, this.onChanged);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        GestureDetector(
          onTap: () => onChanged(!selected),
          child: Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Visibility(
              visible: selected,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: selected,
                      onChanged: (_) {},
                    ),
                    Text("selected"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
