import 'package:flutter/material.dart';
import 'package:online_groceries_app/helpers/constans.dart';

Container buildDots(index, currentIndex) {
  return Container(
    width: index == currentIndex ? 30 : 8,
    height: 8,
    margin: const EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: index == currentIndex ? kPrimaryColor : Colors.grey,
    ),
  );
}
