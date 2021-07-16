import 'package:flutter/material.dart';

import '../managers/orderingPizza.dart';
import '../dialogs/veiwYourOrder.dart';

void openUserOrderedSnackbar(BuildContext context, List<Order> orders) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: UserOrderedSnackbar(orders)),
    );

class UserOrderedSnackbar extends StatelessWidget {
  final List<Order> orders;

  UserOrderedSnackbar(this.orders);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('you have ordered pizza'),
        TextButton(
          onPressed: () => showVeiwYourOrderDialog(context, orders),
          child: Text(
            "see order",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        )
      ],
    );
  }
}
