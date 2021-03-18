import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lizzi pizza',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: null,
        ),
        floatingActionButton: Row(children: [
          FloatingActionButton(
            onPressed: null,
            tooltip: 'facebook',
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: null,
            tooltip: 'twitter',
            child: Icon(Icons.add),
          ),
        ]));
  }
}
