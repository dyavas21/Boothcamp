import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomNews extends StatelessWidget {
  final String? imgUrl;
  final String? title;
  final String? desc;

  const CustomNews({this.imgUrl, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 24, bottom: 24),
          width: MediaQuery.of(context).size.width - 24,
          height: 82,
          child: Row(
            children: [
              Image.asset(
                'assets/news2.png',
                width: 86,
                height: 82,
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title!,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      desc!,
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
