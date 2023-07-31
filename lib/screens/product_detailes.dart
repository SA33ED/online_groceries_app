// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:online_groceries_app/helpers/constans.dart';
import 'package:online_groceries_app/models/product_model.dart';
import 'package:online_groceries_app/widgets/custom_btn.dart';

class ProductDetailes extends StatefulWidget {
  ProductDetailes({
    super.key,
    this.product,
  });
  Product? product;
  static String id = "ProductDetailes";

  @override
  State<ProductDetailes> createState() => _ProductDetailesState();
}

class _ProductDetailesState extends State<ProductDetailes> {
  int count = 1;
  bool addedToFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.product!.image!),
              ),
              color: const Color(0xFFF2F3F2),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 4.0, top: 10.0),
            child: IconButton(
              icon: const Icon(
                Icons.chevron_left,
                size: 40,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product!.name!,
                    style: const TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 24,
                      fontFamily: 'Gilroy-Bold',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.10,
                    ),
                  ),
                  Text(
                    widget.product!.unit!,
                    style: const TextStyle(
                      color: Color(0xFF7C7C7C),
                      fontSize: 16,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: addedToFav == false
                    ? const Icon(Icons.favorite_outline)
                    : const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                onPressed: () {
                  setState(() {
                    if (addedToFav == true) {
                      addedToFav = false;
                      favorites.remove(widget.product!);
                    } else if (addedToFav == false) {
                      addedToFav = true;
                      favorites.add(widget.product!);
                    }
                  });
                },
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (count > 0) {
                        count--;
                      }
                    });
                  },
                  icon: const Icon(Icons.remove),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 45.67,
                  height: 45.67,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffE2E2E2),
                      ),
                      borderRadius: BorderRadius.circular(17)),
                  child: Text(
                    "$count",
                    style: const TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 18,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (count < 100) {
                        count++;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Text(
                "\$${widget.product!.price!.toString()}",
                style: const TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 24,
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.10,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Divider(
            thickness: 0.5,
            color: Color(0xff7C7C7C),
          ),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            'Product Detail',
            style: TextStyle(
              color: Color(0xFF181725),
              fontSize: 16,
              fontFamily: 'Gilroy-Bold',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
            style: TextStyle(
              color: Color(0xFF7C7C7C),
              fontSize: 14,
              fontFamily: 'Gilroy-Medium',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Divider(
            thickness: 0.5,
            color: Color(0xff7C7C7C),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CustomBtn(
              onTap: () {
                favorites.add(widget.product!);
              },
              title: "Add"),
        )
      ]),
    );
  }
}
