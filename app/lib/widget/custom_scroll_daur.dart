import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomScrollDaur extends StatelessWidget {
  final String? imgUrl;
  final String? title;
  final String? like;
  final String? price;
  final String? color;
  const CustomScrollDaur({
    this.imgUrl,
    this.title,
    this.like,
    this.price,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 10,
            top: 50,
            bottom: 11,
          ),
          margin: EdgeInsets.only(
            right: 24,
          ),
          width: 125,
          height: 82,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
            image: DecorationImage(
              image: AssetImage(
                imgUrl!,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 42,
              height: 21,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/star.png',
                    width: 14,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    '4.5',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          width: 125,
          padding: EdgeInsets.only(
            left: 11,
            right: 11,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      like!,
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Text(
                    price!,
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
