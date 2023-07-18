import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});
  static String id = "verification";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF53B175),
          child: const Icon(
            Icons.chevron_right,
          )),
      body: Column(
        children: [
          Container(
            height: 221,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/images/group6806.png"),
                  fit: BoxFit.fill,
                  opacity: 0.1),
              color: Colors.white.withOpacity(0.1),
            ),
            alignment: Alignment.topLeft,
            child: Padding(
              padding:const EdgeInsets.only(left: 10.0, top: 30.0),
              child: IconButton(
                icon:const Icon(
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
                  "Enter your 4-digit code",
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
                  'Code',
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: TextField(
              decoration: InputDecoration(hintText: " - - - -"),
              keyboardType: TextInputType.phone,
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 32.0, left: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Resend Code',
                    style: TextStyle(
                      color: Color(0xFF53B175),
                      fontSize: 18,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
