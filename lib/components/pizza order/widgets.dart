import 'package:flutter/material.dart';
import 'manage.dart';

class OrderDialog extends StatefulWidget {
  @override
  _OrderDialogState createState() => _OrderDialogState();
}

class _OrderDialogState extends State<OrderDialog> {
  bool choosingWhenYouGetThere = false;
  bool deliver = true;
  List orders = [];
  void addOrder(BuildContext context) {
    orders.add(Order(context));
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('order pizza'),
      content: ListView(children: [
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
        ElevatedButton(child: Text("add"), onPressed: () => addOrder(context)),
        ListView.builder(
            itemCount: orders.length,
            itemBuilder: (BuildContext context, int index) =>
                OrderCard(orders[index]))
      ]),
      actions: <Widget>[
        TextButton(
          onPressed: () {},
          child: Text('CANCEL'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('ACCEPT'),
        ),
      ],
    );
  }
}

class EditOrderCardDialog extends StatefulWidget {
  @override
  _EditOrderCardDialogState createState() => _EditOrderCardDialogState();
}

class _EditOrderCardDialogState extends State<EditOrderCardDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("edit order"),
      content: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(labelText: "orders"),
          ),
        ],
      ),
      actions: [
        TextButton(
          child: Text("cancel"),
          onPressed: () {},
        )
      ],
    );
  }
}

class OrderCard extends StatefulWidget {
  final Order order;
  OrderCard(this.order);

  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  int orders = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.number,
          decoration: new InputDecoration(labelText: "orders"),
        ),
        DishCard()
      ],
    );
  }
}

class DishCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network("");
  }
}
