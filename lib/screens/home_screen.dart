import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_groceries_app/helpers/app_images.dart';
import 'package:online_groceries_app/models/product_model.dart';
import 'package:online_groceries_app/widgets/offer_card.dart';
import 'package:online_groceries_app/widgets/product_card.dart';

import '../widgets/search_bar_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView(
          children: [
            const SizedBox(height: 40),
            SvgPicture.asset(Assets.imagesCarrotLogo),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Color(0xFF4C4E4D),
                    size: 32,
                  ),
                  Text(
                    "Egypt, Cairo",
                    style: TextStyle(
                      color: Color(0xFF4C4E4D),
                      fontSize: 18,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SearchBarField(
                onChanged: (value) {},
                hintText: "Search Store",
                prefixIcon: const Icon(Icons.search)),
            const SizedBox(height: 20),
            const OfferCard(),
            const SizedBox(height: 20),
            const Row(
              children: [
                Text(
                  'Exclusive Offer',
                  style: TextStyle(
                    color: Color(0xFF181725),
                    fontSize: 24,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 250,
              child: ListView.builder(
                itemCount: exclusiveOffers.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: ProductCard(
                      index: index,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Text(
                  'Best Selling',
                  style: TextStyle(
                    color: Color(0xFF181725),
                    fontSize: 24,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
