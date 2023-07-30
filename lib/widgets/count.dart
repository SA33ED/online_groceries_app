import 'package:flutter/material.dart';

import '../helpers/constans.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              if (count > 0) {
                count--;
              }
            });
          },
          icon: const Icon(Icons.remove),
        ),
        Container(
          alignment: Alignment.center,
          width: 45.67,
          height: 45.67,
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffE2E2E2),
              ),
              borderRadius: BorderRadius.circular(17)),
          child: Text(
            "$count",
            style: const TextStyle(
              color: Color(0xFF181725),
              fontSize: 18,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              if (count < 100) {
                count++;
              }
            });
          },
          icon: Icon(
            Icons.add,
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
