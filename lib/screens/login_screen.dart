// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_groceries_app/helpers/app_images.dart';
import 'package:online_groceries_app/helpers/constans.dart';
import 'package:online_groceries_app/screens/navigation_Screen.dart';
import 'package:online_groceries_app/screens/sign_up_screen.dart';
import 'package:online_groceries_app/widgets/custom_btn.dart';
import 'package:online_groceries_app/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String id = "LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              const SizedBox(
                height: 25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        "Loging",
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
                        "Enter your emails and password",
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
                    title: "Email",
                    textInputType: TextInputType.emailAddress,
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xFF181725),
                          fontSize: 14,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.70,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 35),
                  CustomBtn(
                      onTap: () {
                        Navigator.pushNamed(context, NavigationScreen.id);
                      },
                      title: "Log In"),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don’t have an account?",
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
                          Navigator.pushNamed(context, SignUpScreen.id);
                        },
                        child: Text(" Singup",
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
