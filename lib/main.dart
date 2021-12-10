import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'components/dialogs/order.dart';
import 'components/utils/gradientContainer.dart';
import 'components/utils/widthLimiter.dart';

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
      fontSize: 40,
      height: 0.8,
    );
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
      body: LimitWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              // widthFactor: 100,
              // heightFactor: 500,
              child: Container(
                padding: EdgeInsets.all(8),
                constraints: BoxConstraints(maxWidth: 350),
                child: Column(children: [
                  Text("Teignmouth, Devon"),
                  GradientContainer(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        Text(
                          "fresh pizza from oven to door",
                          style: TextStyles.h1(context),
                        ),
                        ElevatedButton(
                          child: Text(
                            "order",
                            style: TextStyles.actionButton(context),
                          ),
                          onPressed: () => openOrderDialog(context),
                        )
                      ])),
                  Text(
                      "Fresh pizza and bread just order form teignmoth and get italian oven-cooked pizza in under 30 minutes")
                ]),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: CachedNetworkImage(
                      imageUrl:
                          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
