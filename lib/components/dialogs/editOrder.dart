import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/grid.dart';

import '../cards/dish.dart';
import '../manage/orderingPizza.dart';

Future<Map> showEditOrderCardDialog(BuildContext context) {
  final _formKey = GlobalKey<FormState>();

  TextEditingController orders = TextEditingController();
  // RadioWidgetController dishSelectedController = RadioWidgetController();

  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text("add/edit order"),
      content: StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  validator: (input) => (input == null || input.isEmpty)
                      ? "please enter something"
                      : null,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(labelText: "orders"),
                  controller: orders,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
                MyGrid(
                  children: List.generate(
                    dishes.length,
                    (index) => Card(
                      child: DishCard(dishes[index]),
                      //dishSelectedController,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      actions: [
        TextButton(
          child: Text("cancel"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        TextButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                Navigator.of(context).pop({
                  "orders": int.parse(orders.text.toString()),
                  "dish": null
                });
              }
            },
            child: Text("done"))
      ],
    ),
  );
}
