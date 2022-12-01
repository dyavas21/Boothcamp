import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 29,
      height: 26,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Color(0xffE4E8EC),
      ),
    );
  }
}
