import 'package:flutter/material.dart';
import 'package:online_groceries_app/helpers/constans.dart';
import 'package:online_groceries_app/models/offers_model.dart';
import 'package:online_groceries_app/widgets/bulid_dods.dart';

import '../helpers/app_images.dart';

class OfferCard extends StatefulWidget {
  const OfferCard({
    super.key,
  });

  @override
  State<OfferCard> createState() => _OfferCardState();
}

class _OfferCardState extends State<OfferCard> {
  int currentIndex = 0;
  PageController? _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Expanded(
        child: PageView.builder(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemCount: offers.length,
            itemBuilder: (_, i) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.amber,
                          gradient: LinearGradient(
                              colors: [
                                Color(0xffF7E1CD),
                                Colors.white,
                                Color(0xffF1DEDB),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                    ),
                    Positioned(
                      right: 220,
                      top: -20,
                      child: Image.asset(
                        Assets.imagesImg1,
                        width: 500,
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 5,
                      child: Image.asset(
                        Assets.imagesImg2,
                        width: 160,
                      ),
                    ),
                    Positioned(
                      right: -55,
                      top: -20,
                      child: Image.asset(
                        Assets.imagesImg3,
                        width: 160,
                      ),
                    ),
                    Positioned(
                      right: -85,
                      bottom: -123,
                      child: Image.asset(
                        Assets.imagesImg4,
                        width: 160,
                      ),
                    ),
                    Positioned(
                      top: 55,
                      left: 150,
                      child: Column(
                        children: [
                          Text(
                            offers[currentIndex].title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color(0xFF030303),
                              fontSize: 20,
                              fontFamily: 'Aclonica',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            offers[currentIndex].offer,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 18,
                              fontFamily: 'Airbnb Cereal App',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        left: 160,
                        bottom: 10,
                        child: Row(
                          children: List.generate(
                            offers.length,
                            (index) => buildDots(index, currentIndex),
                          ),
                        ))
                  ],
                ),
              );
            }),
      ),
    );
  }
}
