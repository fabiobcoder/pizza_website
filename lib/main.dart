import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lizzi pizza',
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black.withOpacity(0.0),
        actions: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: null,
            tooltip: "facebook",
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: null,
            tooltip: "twitter",
          )
        ],
      ),
      body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              constraints: BoxConstraints(maxWidth: 350),
              child: Column(children: [
                Text("TEIGNMOUTH, DEVON"),
                GradientContainer(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("fresh pizza from oven to door",
                            style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 40)),
                        ElevatedButton(
                            child: Text("order",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            onPressed: () => {})
                      ]),
                ),
                Text(
                    "Fresh pizza and bread just order form teignmoth and get italian oven-cooked pizza in under 30 minutes")
              ]),
            ),
            Image.network(
                'https://media.giphy.com/media/65LrvAMGU650TvPgs5/giphy.gif?raw=true')
          ]),
    );
  }
}

class GradientContainer extends StatelessWidget {
  final Widget child;

  GradientContainer({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                  0.0,
                  1.1
                ],
                    colors: [
                  Colors.white.withOpacity(0.0),
                  Colors.grey[700].withOpacity(0.8)
                ])),
            child: child));
  }
}
