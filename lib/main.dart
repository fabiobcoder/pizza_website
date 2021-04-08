import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'components/dialogs/order.dart';
import 'components/utils/gradientContainer.dart';

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
      body: Center(
        child: SafeArea(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1500),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      constraints: BoxConstraints(maxWidth: 350),
                      child: Column(children: [
                        Text("Teignmouth, Devon"),
                        GradientContainer(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                              Text("fresh pizza from oven to door",
                                  style: TextStyles.h1(context)),
                              ElevatedButton(
                                  child: Text("order",
                                      style: TextStyles.actionButton(context)),
                                  onPressed: () => openOrderDialog(context))
                            ])),
                        Text(
                            "Fresh pizza and bread just order form teignmoth and get italian oven-cooked pizza in under 30 minutes")
                      ]),
                    ),
                  ),
                  Expanded(
                      child: FittedBox(
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.Y6Y-5Sx4WvIElp7b2iMHFwHaEK%26pid%3DApi&f=1',
                    ),
                    fit: BoxFit.cover,
                  ))
                ]),
          ),
        ),
      ),
    );
  }
}
