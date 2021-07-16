import 'package:flutter/material.dart';
import 'package:pizza_website/components/textBoxs/orders.dart';

import '../managers/orderingPizza.dart';
import '../chioces/pizzaTopping.dart';

Future<Order> showEditOrderCardDialog(BuildContext context) {
  final _formKey = GlobalKey<FormState>();

  TextEditingController orders = TextEditingController();
  // RadioWidgetController dishSelectedController = RadioWidgetController();

  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      scrollable: true,
      title: Text("add/edit order"),
      content: StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                OrdersTextField(ordersController: orders),
                PizzaChoice(),
              ],
            ),
          );
        },
      ),
      actions: [
        TextButton(
          child: Text("cancel"),
          onPressed: () {
            Navigator.of(context).pop(null);
          },
        ),
        TextButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                Navigator.of(context).pop(Order(
                  Dish(
                    "some dish name",
                    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.sNmNO-zRNa5BRrqGDUQsswHaE8%26pid%3DApi&f=1",
                    "some description",
                  ),
                  int.parse(orders.text.toString()),
                ));
              }
            },
            child: Text("done"))
      ],
    ),
  );
}
