import 'package:flutter/material.dart';

class SignInWithPhoneNumber extends StatelessWidget {
  const SignInWithPhoneNumber({super.key});
  static String id = "SignInWithPhoneNumber";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF53B175),
          child: const Icon(Icons.arrow_forward)),
      body: Column(children: [
        Image.asset(
          "assets/images/group6806.png",
          color: Colors.white.withOpacity(0.1),
          colorBlendMode: BlendMode.modulate,
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
              padding: EdgeInsets.only(left: 15.0),
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
