// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../models/product_model.dart';

class FavoriteItem extends StatelessWidget {
  FavoriteItem({
    super.key,
    required this.items,
    required this.index,
  });
  int index;
  dynamic items;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      height: 120,
      decoration: const BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(color: Color(0xFFE2E2E2)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                items[index].image,
                width: 100,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    favorites[index].name,
                    style: const TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 16,
                      fontFamily: 'Gilroy-Bold',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.10,
                    ),
                  ),
                  Text(
                    favorites[index].unit,
                    style: const TextStyle(
                      color: Color(0xFF7C7C7C),
                      fontSize: 14,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "\$${favorites[index].price}",
                style: const TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 16,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.10,
                ),
              ),
              const Icon(
                Icons.chevron_right,
                size: 32,
              )
            ],
          )
        ],
      ),
    );
  }
}
