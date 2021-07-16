import 'package:flutter/material.dart';

import '../cards/order.dart';
import '../managers/orderingPizza.dart';

Future showVeiwYourOrderDialog(BuildContext context, List<Order> orders) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => VeiwYourOrderDialog(orders),
  );
}

class VeiwYourOrderDialog extends StatefulWidget {
  final List<Order> orders;

  VeiwYourOrderDialog(this.orders);

  @override
  _VeiwYourOrderDialogState createState() => _VeiwYourOrderDialogState();
}

class _VeiwYourOrderDialogState extends State<VeiwYourOrderDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text("view your order"),
      actions: <Widget>[
        TextButton(onPressed: () => Navigator.pop(context), child: Text("ok"))
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GridView.count(
            crossAxisCount: 3,
            children: List.generate(
              widget.orders.length,
              (index) => OrderCard(widget.orders[index]),
            ),
          ),
        ],
      ),
    );
  }
}
