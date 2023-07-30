// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:online_groceries_app/widgets/product_card.dart';

import 'product_detailes.dart';

class ProductsScreen extends StatelessWidget {
  ProductsScreen({super.key, this.products});
  static String id = "";
  List? products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(children: [
          const SizedBox(height: 20),
          const Row(
            children: [
              Icon(
                Icons.chevron_left,
                size: 32,
              ),
              Spacer(
                flex: 1,
              ),
              Text(
                'Beverages',
                style: TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 20,
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(
                flex: 1,
              ),
              SizedBox(
                width: 30,
              )
            ],
          ),
          const SizedBox(height: 20),
          GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.4),
              ),
              itemCount: products!.length,
              itemBuilder: (_, index) {
                return ProductCard(
                  index: index,
                  prodcuts: products!,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetailes(
                                product: products![index],
                              )),
                    );
                  },
                );
              }),
        ]),
      ),
    );
  }
}
