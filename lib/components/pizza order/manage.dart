import 'package:flutter/material.dart';
import 'widgets.dart';

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
      "just plain and classical")
];

//functions

void makePizza(takeawayOrDineIn, orderWhenIGetThere, order) {}

class Order {
  BuildContext context;

  Order(this.context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => EditOrderCardDialog());
  }
}
