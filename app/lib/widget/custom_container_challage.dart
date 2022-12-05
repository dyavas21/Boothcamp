import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainerChallange extends StatelessWidget {
  final String? title;
  final String? desc;

  const CustomContainerChallange({
    this.title,
    this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 24,
        right: 18,
        top: 15,
        bottom: 15,
      ),
      height: 66,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffFBFBFB),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Image.asset(
                    'assets/progress_icon.png',
                    width: 36,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        desc!,
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            'assets/arrow_down.png',
            width: 24,
          ),
        ],
      ),
    );
  }
}
