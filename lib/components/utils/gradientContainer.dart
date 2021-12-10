import 'package:flutter/material.dart';

import 'invertColor.dart';

class GradientContainer extends StatelessWidget {
  final child;

  GradientContainer({@required this.child});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        left: 5,
        top: 17,
        bottom: 15,
        right: 9,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
              colors: [
                invert(Theme.of(context).scaffoldBackgroundColor)
                    .withOpacity(0.0),
                Theme.of(context).scaffoldBackgroundColor.withOpacity(0.8),
              ],
            ),
          ),
        ),
      ),
      child,
    ]);
  }
}
