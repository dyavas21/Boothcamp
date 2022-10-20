import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomChallangeContainer extends StatelessWidget {
  const CustomChallangeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 24,
        top: 15,
        bottom: 15,
        right: 18,
      ),
      width: MediaQuery.of(context).size.width,
      height: 66,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xffFBFBFB),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffF3F7F1),
            ),
            child: Image.asset(
              'assets/crown.png',
              width: 20,
              height: 20,
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kompos Rumah Tangga',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                  ),
                ),
                Text(
                  'Rp. 5.000 - 10.000',
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/arrow_down.png',
            width: 12,
          ),
        ],
      ),
    );
  }
}
