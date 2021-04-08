import 'package:flutter/material.dart';

import '../cards/order.dart';
import '../manage/orderingPizza.dart';

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
  _VeiwYourOrderDialogState createState() => _VeiwYourOrderDialogState(orders);
}

class _VeiwYourOrderDialogState extends State<VeiwYourOrderDialog> {
  List<Order> orders;

  _VeiwYourOrderDialogState(this.orders);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("view your order"),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text("hide"))
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GridView.count(
            crossAxisCount: 3,
            children: List.generate(
              orders.length,
              (index) => OrderCard(orders[index]),
            ),
          ),
        ],
      ),
    );
  }
}
