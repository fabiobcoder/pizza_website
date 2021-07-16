import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OrdersTextField extends StatefulWidget {
  const OrdersTextField({
    Key key,
    @required this.ordersController,
  }) : super(key: key);

  final TextEditingController ordersController;

  @override
  _OrdersTextFieldState createState() => _OrdersTextFieldState();
}

class _OrdersTextFieldState extends State<OrdersTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (input) =>
          (input == null || input.isEmpty) ? "please enter something" : null,
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(labelText: "orders"),
      controller: widget.ordersController,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    );
  }
}
