import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomScrollHome extends StatelessWidget {
  final String? imgUrl;
  final String? title;

  const CustomScrollHome({this.imgUrl, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 70,
          height: 70,
          margin: EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            color: Color(0xffF7FAF4),
          ),
          child: Center(
            child: Image.asset(
              imgUrl!,
              width: 24,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 70,
          child: Center(
            child: Text(
              title!,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
