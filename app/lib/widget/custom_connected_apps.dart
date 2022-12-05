import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomConnectedApps extends StatelessWidget {
  final String? title;
  final String? desc1;
  final String? desc2;
  final int? warna;

  const CustomConnectedApps({
    this.title,
    this.desc1,
    this.desc2,
    this.warna,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 29,
        right: 36,
        top: 17,
        bottom: 21,
      ),
      height: 82,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffF7FAF4),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title!,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE4E8EC),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/tanda_seru.png',
                          width: 2,
                          height: 11,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  desc1!,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 29,
            decoration: BoxDecoration(
              color: Color(warna!),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                child: Text(
                  desc2!,
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: Color(0xff757575),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
