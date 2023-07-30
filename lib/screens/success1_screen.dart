import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_groceries_app/helpers/app_images.dart';
import 'package:online_groceries_app/widgets/custom_btn.dart';

class Success1Screen extends StatelessWidget {
  const Success1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 35.0),
            child: SvgPicture.asset(Assets.imagesSuccess),
          ),
          const Column(
            children: [
              Text(
                'Your items has been\n added to your cart',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 28,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Go to your cart and checkout now',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF7C7C7C),
                  fontSize: 16,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          CustomBtn(
              onTap: () {
                Navigator.pop(context);
              },
              title: "Back to Home")
        ],
      )),
    );
  }
}
