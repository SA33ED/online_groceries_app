// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:online_groceries_app/models/product_model.dart';

import '../helpers/constans.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    super.key,
    required this.index,
    required this.prodcuts,
    this.onTap,
  });
  int index;
  List prodcuts;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 180,
        height: 200,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFE2E2E2),
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                prodcuts[index].image!,
                width: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    prodcuts[index].name!,
                    style: const TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 16,
                      fontFamily: 'Gilroy-Bold',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.10,
                    ),
                  ),
                  Text(
                    prodcuts[index].unit!,
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
                        "\$${prodcuts[index].price!.toString()}",
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
                          onPressed: () {
                            cartItems.add(prodcuts[index]);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                duration: const Duration(seconds: 1),
                                backgroundColor: kPrimaryColor,
                                padding:
                                    const EdgeInsets.only(bottom: 25, top: 20),
                                content: const Center(
                                  child: Text(
                                    "Added to Cart",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                ),
                              ),
                            );
                          },
                          icon: const Icon(Icons.add),
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
