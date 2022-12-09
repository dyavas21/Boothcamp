import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLeaderboardContainer extends StatelessWidget {
  final String? rank;
  final String? title;
  final String? desc;
  final int? warna;

  const CustomLeaderboardContainer({
    this.rank,
    this.title,
    this.desc,
    this.warna,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 21,
        right: 18,
        top: 10,
        bottom: 11,
      ),
      height: 66,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffFBFBFB),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 45,
                  child: Stack(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffE4E8EC)),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 25,
                          height: 16,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(warna!),
                          ),
                          child: Center(
                            child: Text(
                              rank!,
                              style: GoogleFonts.poppins(
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
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
                )
              ],
            ),
          ),
          Icon(
            Icons.chevron_right,
            size: 24,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
