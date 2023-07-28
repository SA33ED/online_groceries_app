// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../helpers/constans.dart';

class SearchBarField extends StatelessWidget {
  SearchBarField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.onChanged,
  });
  String hintText;
  Icon prefixIcon;
  Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixIconColor: Colors.black,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF7C7C7C),
          fontSize: 14,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w600,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Color(0x000000ff)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: Color(0x000000ff)),
        ),
        fillColor: const Color(0xFFF1F2F2),
        filled: true,
      ),
      cursorColor: kPrimaryColor,
    );
  }
}
