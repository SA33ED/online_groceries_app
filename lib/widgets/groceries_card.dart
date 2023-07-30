// ignore_for_file: must_be_immutable

import 'dart:math';

import 'package:flutter/material.dart';

class GroceriesCard extends StatelessWidget {
  GroceriesCard({
    super.key,
    required this.index,
    required this.prodcuts,
  });
  int index;
  List prodcuts;
  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      const Color(0xFFFEF1E4),
      const Color(0xFFE5F3EA),
    ];
    Random random = Random();
    int randomNumber = random.nextInt(2);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 105,
      width: 250,
      decoration: BoxDecoration(
        color: colors[randomNumber],
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Image.asset(
            prodcuts[index].image!,
            width: 80,
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
          Text(
            prodcuts[index].name!,
            style: const TextStyle(
              color: Color(0xFF3E423F),
              fontSize: 20,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
