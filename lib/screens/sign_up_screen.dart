import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_groceries_app/helpers/constans.dart';
import 'package:online_groceries_app/widgets/custom_btn.dart';
import '../helpers/app_images.dart';
import '../widgets/custom_text_field.dart';
import 'navigation_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static String id = "SignUpScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(Assets.imagesBackgroundOne),
                          fit: BoxFit.fill,
                          opacity: 0.1),
                      color: Colors.white.withOpacity(0.1),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Positioned(
                    child: SvgPicture.asset(Assets.imagesCarrotLogo),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(0xFF181725),
                          fontSize: 26,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    children: [
                      Text(
                        "Enter your credentials to continue",
                        style: TextStyle(
                          color: Color(0xFF7C7C7C),
                          fontSize: 16,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    obscureText: false,
                    title: "Username",
                    onChanged: (value) {},
                  ),
                  CustomTextField(
                    obscureText: false,
                    title: "Email",
                    onChanged: (value) {},
                  ),
                  CustomTextField(
                    obscureText: true,
                    title: "Password",
                    onChanged: (value) {},
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.eyeSlash,
                        size: 18,
                        color: Color(0xff7C7C7C),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    children: [
                      Text(
                        "By continuing you agree to ",
                        style: TextStyle(
                          color: Color(0xFF181725),
                          fontSize: 14,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.70,
                        ),
                      ),
                      Text(
                        "our Terms of Service",
                        style: TextStyle(
                          color: Color(0xFF53B175),
                          fontSize: 14,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.70,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        "and ",
                        style: TextStyle(
                          color: Color(0xFF181725),
                          fontSize: 14,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.70,
                        ),
                      ),
                      Text(
                        "Privacy Policy.",
                        style: TextStyle(
                          color: Color(0xFF53B175),
                          fontSize: 14,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.70,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  CustomBtn(
                      onTap: () {
                        Navigator.pushNamed(context, NavigationScreen.id);
                      },
                      title: "Sign Up"),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account? ",
                        style: TextStyle(
                          color: Color(0xFF181725),
                          fontSize: 14,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.70,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(" Singin",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.70,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
