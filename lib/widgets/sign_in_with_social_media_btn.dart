// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SocialMediaSignInBtn extends StatelessWidget {
  SocialMediaSignInBtn({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
  });
  Color color;
  Icon icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      width: 364,
      height: 67,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: icon,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
