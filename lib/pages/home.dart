import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pizza_website/pages/orderPizza.dart';

import '../components/utils/textStyles.dart';
import '../components/utils/gradientContainer.dart';
// import '../components/dialogs/orderPizza.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      constraints: BoxConstraints(maxWidth: 350),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Somewhere"),
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
                                  onPressed: () => {
                                    Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                        builder: (context) => OrderPizzaPage(),
                                      ),
                                    )
                                    // return openOrderDialog(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Fresh pizza and bread just order form somwhere and get italian oven-cooked pizza in under 30 minutes",
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    // child: FittedBox(
                    // fit: BoxFit.cover,
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.Y6Y-5Sx4WvIElp7b2iMHFwHaEK%26pid%3DApi&f=1',
                    ),
                  ) //)
                ]),
          ),
        ),
      ),
    );
  }
}
