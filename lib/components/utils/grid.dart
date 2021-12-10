import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  final children;

  MyGrid({@required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 100,
      child: GridView.count(
        crossAxisCount: 3,
        children: children,
      ),
    );
  }
}
