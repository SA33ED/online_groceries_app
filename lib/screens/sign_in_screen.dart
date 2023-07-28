import 'package:flutter/material.dart';
import 'package:online_groceries_app/helpers/app_images.dart';
import 'package:online_groceries_app/screens/number_screen.dart';
import 'package:online_groceries_app/widgets/sign_in_with_social_media_btn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static String id = "Sign In Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset(Assets.imagesFruitsBackground),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      'Get your groceries\nwith nectar',
                      style: TextStyle(
                        color: Color(0xFF030303),
                        fontSize: 26,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, NumberScreen.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/egypt.png",
                          width: 40,
                        ),
                        title: const Text(
                          "+20",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    indent: 15,
                    endIndent: 15,
                    thickness: 2,
                  ),
                ],
              ),
              const SizedBox(height: 25),
              const Text(
                'Or connect with social media',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF828282),
                  fontSize: 14,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 25),
              SocialMediaSignInBtn(
                text: "Continue with Google    ",
                icon: const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                  size: 24,
                ),
                color: const Color(0xff5383EC),
              ),
              const SizedBox(height: 15),
              SocialMediaSignInBtn(
                text: "Continue with Facebook",
                icon: const Icon(
                  FontAwesomeIcons.facebookF,
                  color: Colors.white,
                  size: 24,
                ),
                color: const Color(0xFF4A66AC),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}
