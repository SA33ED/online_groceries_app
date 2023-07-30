// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    super.key,
    required this.category,
    this.onTap,
  });

  VoidCallback? onTap;
  dynamic category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 174.50,
        height: 189.11,
        decoration: ShapeDecoration(
          color: const Color(0x3FFDE598),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.50, color: Color(0xFFFDE598)),
            borderRadius: BorderRadius.circular(18),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x00000000),
              blurRadius: 12,
              offset: Offset(0, 6),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                category.image,
                width: 100,
              ),
              Text(
                category.name,
                style: const TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 16,
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.10,
                ),
                textAlign: TextAlign.center,
              )
            ]),
      ),
    );
  }
}
