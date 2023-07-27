import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_groceries_app/helpers/app_images.dart';
import 'package:online_groceries_app/widgets/custom_btn.dart';

import 'sign_in_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  static String id = "welcome screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesWelcomeLanding),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(Assets.imagesAbstractLogo),
                    const Text(
                      'Welcome \nto our store',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                        fontSize: 48,
                      ),
                    ),
                    const Text(
                      'Ger your groceries in as fast as one hour',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xB2FCFCFC),
                        fontSize: 16,
                        fontFamily: 'Gilroy-Medium',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    CustomBtn(
                        onTap: () {
                          Navigator.pushNamed(context, SignInScreen.id);
                        },
                        title: "Get Started"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
