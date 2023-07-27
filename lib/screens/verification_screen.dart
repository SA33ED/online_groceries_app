import 'package:flutter/material.dart';
import 'package:online_groceries_app/helpers/app_images.dart';
import 'package:online_groceries_app/helpers/constans.dart';
import 'package:online_groceries_app/screens/select_location.dart';
import 'package:online_groceries_app/widgets/custom_text_field.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});
  static String id = "verification";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, SelectLocation.id);
          },
          backgroundColor: kPrimaryColor,
          child: const Icon(
            Icons.chevron_right,
          )),
      body: Column(
        children: [
          Container(
            height: 221,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(Assets.imagesBackgroundOne),
                  fit: BoxFit.fill,
                  opacity: 0.1),
              color: Colors.white.withOpacity(0.1),
            ),
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Text(
                  "Enter your 4-digit code",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: CustomTextField(
              obscureText: false,
              title: "code",
              hint: " - - - -",
              textInputType: TextInputType.number,
              onChanged: (value){},
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 32.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Resend Code',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 18,
                    fontFamily: 'Gilroy-Medium',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
