import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonNav2 extends StatelessWidget {
  final String? imgUrl;
  final String? title;

  const CustomButtonNav2({
    this.imgUrl,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imgUrl!,
          width: 20,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          title!,
          style: GoogleFonts.poppins(
            fontSize: 10,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
