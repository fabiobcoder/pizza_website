import 'package:flutter/material.dart';

import 'package:pizza_website/components/cards/dish.dart';
import 'package:pizza_website/components/managers/orderingPizza.dart';
import 'package:pizza_website/components/utils/radioWidget.dart';

class PizzaChoice extends StatefulWidget {
  const PizzaChoice();

  @override
  _PizzaChoiceState createState() => _PizzaChoiceState();
}

class _PizzaChoiceState extends State<PizzaChoice> {
  int _selctedPizza;

  void selectPizza(int pizzaToSelect) {
    setState(() {
      _selctedPizza = pizzaToSelect;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            dishes.length,
            (index) => OverlayRadioButton(
              DishCard(dishes[index]),
              _selctedPizza,
              index,
              (bool selected) {
                if (selected == true) {
                  selectPizza(index);
                }
              },
            ),
          )),
    );
  }
}
