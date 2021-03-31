import 'package:flutter/material.dart';
import 'components/pizza order/widgets.dart';

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

class TextStyles {
  static TextStyle h1(BuildContext context) {
    return TextStyle(
        color: Theme.of(context).accentColor,
        fontWeight: FontWeight.bold,
        fontSize: 40);
  }

  static TextStyle actionButton(BuildContext context) {
    return TextStyle(fontSize: 20);
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
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Center(
          child: Container(
            padding: EdgeInsets.all(8),
            constraints: BoxConstraints(maxWidth: 350),
            child: Column(children: [
              Text("TEIGNMOUTH, DEVON"),
              GradientContainer(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("fresh pizza from oven to door",
                          style: TextStyles.h1(context)),
                      ElevatedButton(
                          child: Text("order",
                              style: TextStyles.actionButton(context)),
                          onPressed: () => showDialog(
                              context: context,
                              builder: (BuildContext context) => OrderDialog()))
                    ]),
              ),
              Text(
                  "Fresh pizza and bread just order form teignmoth and get italian oven-cooked pizza in under 30 minutes")
            ]),
          ),
        ),
        Image.network(
            'https://media.giphy.com/media/65LrvAMGU650TvPgs5/giphy.gif?raw=true')
      ]),
    );
  }
}

class GradientContainer extends StatelessWidget {
  final child;

  GradientContainer({@required this.child});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          left: 5,
          top: 17,
          bottom: 5,
          right: 9,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Container(
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
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.8),
                  ])),
            ),
          )),
      child,
    ]);
  }
}
