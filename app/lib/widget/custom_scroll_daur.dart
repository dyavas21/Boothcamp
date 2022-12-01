import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomScrollDaur extends StatelessWidget {
  final String? imgUrl;
  final String? title;
  final String? like;
  final String? price;
  final String? star;

  const CustomScrollDaur({
    this.imgUrl,
    this.like,
    this.price,
    this.star,
    this.title,
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
            right: 73,
          ),
          margin: EdgeInsets.only(right: 24),
          width: 125,
          height: 82,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            image: DecorationImage(
              image: AssetImage(imgUrl!),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(left: 2),
            width: 42,
            height: 21,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
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
                Text(star!),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          width: 125,
          padding: EdgeInsets.only(
            right: 11,
            left: 11,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title!),
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
                      ),
                    ),
                  ),
                  Text(
                    price!,
                    style: GoogleFonts.poppins(
                      fontSize: 10,
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
