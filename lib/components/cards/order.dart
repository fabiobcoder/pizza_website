import 'package:flutter/material.dart';

import 'dish.dart';
import '../manage/orderingPizza.dart';

class OrderCard extends StatefulWidget {
  final Order order;
  OrderCard(this.order);

  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  Order order;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(labelText: "orders"),
        ),
        DishCard(order.dish),
      ],
    );
  }
}
