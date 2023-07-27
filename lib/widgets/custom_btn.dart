// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../helpers/constans.dart';

class CustomBtn extends StatelessWidget {
  CustomBtn({
    super.key,
    required this.onTap,
    required this.title,
  });
  VoidCallback onTap;
  String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 353,
        height: 67,
        decoration: ShapeDecoration(
          color: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFFFFF9FF),
            fontSize: 18,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
