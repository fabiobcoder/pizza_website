import 'package:flutter/material.dart';

class LimitWidth extends StatelessWidget {
  final child;

  LimitWidth({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1500),
          child: child,
        ),
      ),
    );
  }
}
