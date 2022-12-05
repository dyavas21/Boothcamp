import 'package:flutter/material.dart';

class CustomContainerProfile extends StatelessWidget {
  final String? title;

  const CustomContainerProfile({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 21,
        right: 16,
      ),
      height: 41,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffF7FAF4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title!),
          Image.asset(
            'assets/pencil.png',
            width: 22,
            height: 24,
          ),
        ],
      ),
    );
  }
}
