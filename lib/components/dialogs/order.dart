import 'package:flutter/material.dart';

import '../cards/order.dart';
import '../manage/orderingPizza.dart';
import 'package:masonry_grid/masonry_grid.dart';
// import '../utils/grid.dart';

Future<void> openOrderDialog(BuildContext context) async {
  return await showDialog<void>(
    context: context,
    builder: (BuildContext context) => OrderDialog(),
  );
}

class OrderDialog extends StatefulWidget {
  @override
  _OrderDialogState createState() => _OrderDialogState();
}

class _OrderDialogState extends State<OrderDialog> {
  bool choosingWhenYouGetThere = false;
  bool deliver = true;
  List<Order> orders = [];

  void addOrder(BuildContext context) async {
    setState(() => orders.add(Order(context)));
    print(orders[0].dish);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('order pizza'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CheckboxListTile(
              title: Text("choose when I get there"),
              value: choosingWhenYouGetThere,
              onChanged: (checked) {
                setState(() {
                  choosingWhenYouGetThere = checked;
                });
              }),
          CheckboxListTile(
              title: Text("deliver"),
              value: deliver,
              onChanged: (checked) {
                setState(() {
                  deliver = checked;
                });
              }),
          ElevatedButton(
            child: Text("add"),
            onPressed: choosingWhenYouGetThere ? null : () => addOrder(context),
          ),
          MasonryGrid(
            column: 2,
            children: List.generate(
              orders.length,
              (index) => OrderCard(orders[index]),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(context),
          child: Text('cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            makePizza(context, deliver, choosingWhenYouGetThere, orders);
          },
          child: Text('order'),
        ),
      ],
    );
  }
}
