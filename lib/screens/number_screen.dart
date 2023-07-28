import 'package:flutter/material.dart';
import 'package:online_groceries_app/helpers/app_images.dart';
import 'package:online_groceries_app/helpers/constans.dart';
import 'package:online_groceries_app/screens/verification_screen.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});
  static String id = "NumberScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, VerificationScreen.id);
          },
          backgroundColor: kPrimaryColor,
          child: const Icon(
            Icons.chevron_right,
          )),
      body: ListView(children: [
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
            padding: const EdgeInsets.only(left: 10.0, top: 30.0),
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
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                "Enter your mobile number",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 20),
              child: Text(
                'Mobile Number',
                style: TextStyle(
                  color: Color(0xFF7C7C7C),
                  fontSize: 16,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ListTile(
                title: const TextField(
                  keyboardType: TextInputType.phone,
                ),
                leading: Image.asset(
                  "assets/images/egypt.png",
                  width: 40,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
