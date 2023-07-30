// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:online_groceries_app/screens/product_detailes.dart';

import 'product_card.dart';

class VerticalListView extends StatelessWidget {
  VerticalListView({
    super.key,
    required this.prodcuts,
  });
  List prodcuts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: prodcuts.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: ProductCard(
              index: index,
              prodcuts: prodcuts,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  ProductDetailes(product: prodcuts[index],)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
