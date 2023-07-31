import 'package:flutter/material.dart';
import 'package:online_groceries_app/helpers/app_images.dart';
import 'package:online_groceries_app/helpers/constans.dart';
import 'package:online_groceries_app/models/product_model.dart';
import 'package:online_groceries_app/screens/success2_screen.dart';
import 'package:online_groceries_app/widgets/custom_btn.dart';

import '../widgets/count.dart';
import '../widgets/custom_app_bar.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "My Cart"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {});
              },
              focusColor: kPrimaryColor,
              backgroundColor: kPrimaryColor,
              child: const Icon(Icons.refresh),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: cartItems.isEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Assets.imagesOops),
                        const Text(
                          "Your cart is empty,\nShoping now",
                          style: TextStyle(
                            color: Color(0xFF181725),
                            fontSize: 28,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  : ListView.builder(
                      itemCount: cartItems.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          decoration: const BoxDecoration(
                              border: Border.symmetric(
                                  horizontal:
                                      BorderSide(color: Color(0xFFE2E2E2)))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    cartItems[index].image,
                                    width: 100,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        cartItems[index].name,
                                        style: const TextStyle(
                                          color: Color(0xFF181725),
                                          fontSize: 16,
                                          fontFamily: 'Gilroy-Bold',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.10,
                                        ),
                                      ),
                                      Text(
                                        cartItems[index].unit,
                                        style: const TextStyle(
                                          color: Color(0xFF7C7C7C),
                                          fontSize: 14,
                                          fontFamily: 'Gilroy-Medium',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Count(),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.close),
                                    onPressed: () {
                                      setState(() {
                                        cartItems.remove(cartItems[index]);
                                      });
                                    },
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    "\$${cartItems[index].price}",
                                    style: const TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 16,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
            ),
            const SizedBox(height: 20),
            CustomBtn(
                onTap: () {
                  cartItems.isEmpty
                      ? null
                      : setState(() {
                          cartItems.clear();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Success2Screen()));
                        });
                },
                title: "Checkout"),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
