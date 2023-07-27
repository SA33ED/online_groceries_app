// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomDropDownList extends StatelessWidget {
  CustomDropDownList({
    super.key,
    required this.child,
    required this.title,
  });
  Widget child;
  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFF7C7C7C),
                  fontSize: 16,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          child
        ],
      ),
    );
  }
}
