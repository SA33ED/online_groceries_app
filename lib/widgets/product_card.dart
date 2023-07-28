// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../helpers/constans.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    super.key,
    required this.index,
  });
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFE2E2E2),
          ),
          borderRadius: BorderRadius.circular(20)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(
          exclusiveOffers[index].image!,
          width: 100,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              exclusiveOffers[index].name!,
              style: const TextStyle(
                color: Color(0xFF181725),
                fontSize: 16,
                fontFamily: 'Gilroy-Bold',
                fontWeight: FontWeight.bold,
                letterSpacing: 0.10,
              ),
            ),
            Text(
              exclusiveOffers[index].unit!,
              style: const TextStyle(
                color: Color(0xFF7C7C7C),
                fontSize: 14,
                fontFamily: 'Gilroy-Medium',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${exclusiveOffers[index].price!.toString()}",
                  style: const TextStyle(
                    color: Color(0xFF181725),
                    fontSize: 18,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.10,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: kPrimaryColor,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        )
      ]),
    );
  }
}
