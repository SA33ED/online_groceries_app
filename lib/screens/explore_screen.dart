import 'package:flutter/material.dart';
import 'package:online_groceries_app/models/category_model.dart';
import 'package:online_groceries_app/widgets/category_card.dart';
import 'package:online_groceries_app/widgets/search_bar_field.dart';

import 'products_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Find Products",
                  style: TextStyle(
                    color: Color(0xFF181725),
                    fontSize: 20,
                    fontFamily: 'Gilroy-Bold',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SearchBarField(
              hintText: "Search Store",
              prefixIcon: const Icon(Icons.search),
              onChanged: (value) {},
            ),
            const SizedBox(height: 20),
            GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: categories.length,
                itemBuilder: (_, index) {
                  return CategoryCard(
                    category: categories[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductsScreen(
                                products: categories[index].products)),
                      );
                    },
                  );
                }),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
