import 'package:flutter/material.dart';

AppBar customAppBar({required String title}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Text(
      title,
      style: const TextStyle(
        color: Color(0xFF181725),
        fontSize: 20,
        fontFamily: 'Gilroy-Bold',
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
