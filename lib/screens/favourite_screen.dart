import 'package:flutter/material.dart';
import 'package:online_groceries_app/screens/success1_screen.dart';

import '../models/product_model.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_btn.dart';
import '../widgets/favorite_item.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Favorurite"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: favorites.length,
                itemBuilder: (context, index) {
                  return FavoriteItem(
                    index: index,
                    items: favorites,
                  );
                },
              ),
            ),
            CustomBtn(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Success1Screen()));
                },
                title: "Add All To Cart"),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
