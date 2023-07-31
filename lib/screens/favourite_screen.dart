import 'package:flutter/material.dart';
import 'package:online_groceries_app/screens/success1_screen.dart';

import '../helpers/app_images.dart';
import '../helpers/constans.dart';
import '../models/product_model.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_btn.dart';
import '../widgets/favorite_item.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Favorurite"),
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
              child: favorites.isEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Assets.imagesOops),
                        const Text(
                          "Your Favourites is empty,\nShoping now",
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
                  favorites.isEmpty
                      ? null
                      : setState(() {
                          cartItems.addAll(favorites);
                          favorites.clear();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Success1Screen()));
                        });
                },
                title: "Add All To Cart"),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
