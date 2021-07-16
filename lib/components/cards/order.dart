import 'package:flutter/material.dart';

import '../managers/orderingPizza.dart';
import '../textBoxs/orders.dart';
import 'dish.dart';

class OrderCard extends StatefulWidget {
  final Order order;
  OrderCard(this.order);

  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _ordersController = TextEditingController();
  // _OrderCardState();

  @override
  Widget build(BuildContext context) {
    _ordersController.text = (widget.order.orders).toString();
    _ordersController.addListener(() {
      _formKey.currentState.validate();
    });

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              OrdersTextField(ordersController: _ordersController),
            ],
          ),
        ),
        DishCard(widget.order.dish),
      ],
    );
  }
}
