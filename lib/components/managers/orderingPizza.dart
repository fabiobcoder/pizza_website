import 'package:flutter/material.dart';
import 'package:pizza_website/components/snackbars/userOrdered.dart';

import '../dialogs/editOrderCard.dart';

class Dish {
  String name;
  String imageUrl;
  String description;

  Dish(this.name, this.imageUrl, this.description);
}

List<Dish> dishes = [
  Dish(
    "magaritta",
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.Y6Y-5Sx4WvIElp7b2iMHFwHaEK%26pid%3DApi&f=1",
    "just plain and classical",
  )
];

//functions

void makePizza(
  BuildContext context,
  bool takeawayOrDineIn,
  bool orderWhenIGetThere,
  List<Order> orders,
) {
  openUserOrderedSnackbar(context, orders);
}

class Order {
  Dish dish;
  int orders;

  Order(this.dish, this.orders);
}

void orderFunc(
  BuildContext context,
  void onSubmit(Order order),
  void onCancel(),
) {
  showEditOrderCardDialog(context).then((Order response) {
    if (response != null) {
      onSubmit(response);
    } else {
      onCancel();
    }
  });
}
