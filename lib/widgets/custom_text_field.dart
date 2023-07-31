// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.title,
    this.hint,
    this.label,
    this.textInputType,
    this.suffixIcon,
    required this.obscureText,
    required this.onChanged,
    required this.validator,
  });
  String title;
  bool obscureText;
  String? hint;
  Widget? label;
  Widget? suffixIcon;
  void Function(String) onChanged;
  String? Function(String?) validator;
  TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                title,
                style: const TextStyle(
                  color: Color(0xFF7C7C7C),
                  fontSize: 16,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
        TextFormField(
          validator: validator,
          decoration: InputDecoration(
            hintText: hint,
            label: label,
            suffixIcon: suffixIcon,
          ),
          keyboardType: textInputType,
          onChanged: onChanged,
          obscureText: obscureText,
        )
      ],
    );
  }
}
