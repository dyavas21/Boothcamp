import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomNews extends StatelessWidget {
  final String? imgUrl;
  final String? title;
  final String? desc;

  const CustomNews({
    this.imgUrl,
    this.desc,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(right: 28),
          height: 82,
          width: MediaQuery.of(context).size.width - 48,
          margin: EdgeInsets.only(bottom: 24),
          child: Row(
            children: [
              Image.asset(
                imgUrl!,
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
