import 'package:flutter/material.dart';
import 'package:online_groceries_app/helpers/app_images.dart';
import 'package:online_groceries_app/widgets/custom_btn.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(Assets.imagesProfile),
                    radius: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Mohammed Saeed",
                        style: TextStyle(
                          color: Color(0xFF181725),
                          fontSize: 20,
                          fontFamily: 'Gilroy-Bold',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "mohamed@gmail.com",
                        style: TextStyle(
                          color: Color(0xFF7C7C7C),
                          fontSize: 16,
                          fontFamily: 'Gilroy-Regular',
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              CustomBtn(onTap: () {}, title: "Log Out")
            ],
          ),
        ),
      ),
    );
  }
}
