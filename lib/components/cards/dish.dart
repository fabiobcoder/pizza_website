import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../managers/orderingPizza.dart';

class DishCard extends StatelessWidget {
  final Dish dish;

  DishCard(this.dish);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CachedNetworkImage(imageUrl: dish.imageUrl),
    ]);
  }
}
