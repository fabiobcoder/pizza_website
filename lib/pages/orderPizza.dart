import 'package:flutter/material.dart';
import 'package:pizza_website/components/utils/textStyles.dart';

class OrderPizzaPage extends StatefulWidget {
  @override
  _OrderPizzaPageState createState() => _OrderPizzaPageState();
}

class _OrderPizzaPageState extends State<OrderPizzaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order pizza"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DayBusyness(
              "Mo",
              [
                0,
                1,
                0,
                1,
                0,
                1,
                0,
                1,
                0,
                1,
                0,
                1,
                0,
                1,
                0,
                1,
                0,
                1,
                0,
                1,
                0,
                1,
                0,
                1,
                1
              ],
            ),
            DayBusyness(
              "Tu",
              [
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0.05,
                0.1,
                0.2,
                0.3,
                0.2,
                0,
                0,
                0.01,
                0.05,
                0.1,
                0.3,
                0.4,
                0.5,
                0.6,
                0.1
              ],
            ),
            DayBusyness(
              "We",
              [
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0.05,
                0.1,
                0.2,
                0.3,
                0.2,
                0,
                0,
                0.01,
                0.05,
                0.1,
                0.3,
                0.4,
                0.5,
                0.6,
                0.1
              ],
            ),
            DayBusyness(
              "Th",
              [
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0.05,
                0.1,
                0.2,
                0.3,
                0.2,
                0,
                0,
                0.01,
                0.05,
                0.1,
                0.3,
                0.4,
                0.5,
                0.6,
                0.1
              ],
            ),
            DayBusyness(
              "Fr",
              [
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0.05,
                0.1,
                0.2,
                0.3,
                0.2,
                0,
                0,
                0.01,
                0.05,
                0.1,
                0.3,
                0.4,
                0.5,
                0.6,
                0.1
              ],
            ),
            DayBusyness(
              "Sa",
              [
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0.05,
                0.1,
                0.2,
                0.3,
                0.2,
                0,
                0,
                0.01,
                0.05,
                0.1,
                0.3,
                0.4,
                0.5,
                0.6,
                0.1
              ],
            ),
            DayBusyness(
              "Su",
              [
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0,
                0.05,
                0.1,
                0.2,
                0.3,
                0.2,
                0,
                0,
                0.01,
                0.05,
                0.1,
                0.3,
                0.4,
                0.5,
                0.6,
                0.1
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DayBusyness extends StatelessWidget {
  final String day;
  //this is a list where the first entry at the time 0 (0AM) 24 entries follow each going p in a hout to 24(12Pm - midnight) and the second value is a double for how busy a place is 0 is none and 1 is unavalable
  final List<double> businessOverTime;
  final List<Color> colours = [];

  DayBusyness(this.day, this.businessOverTime);

  @override
  Widget build(BuildContext context) {
    for (double busyness in businessOverTime) {
      colours.add(
        HSLColor.fromAHSL(1, (90 - (busyness * 90)), 1, 0.7).toColor(),
      );
    }
    LinearGradient gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: colours,
    );

    return Column(
      children: [
        Text(
          day,
          style: TextStyles.h2(context),
        ),
        DayBusynessGradient(gradient)
      ],
    );
  }
}

class DayBusynessGradient extends StatelessWidget {
  final LinearGradient businessOverTimeGradient;

  const DayBusynessGradient(this.businessOverTimeGradient);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: BoxConstraints(minWidth: 30),
        decoration: BoxDecoration(
          gradient: businessOverTimeGradient,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
