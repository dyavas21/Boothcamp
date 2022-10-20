import 'package:app/widget/custom_challange_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChallangePage extends StatelessWidget {
  const ChallangePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget Title() {
      return Row(
        children: [
          Expanded(
            child: Text(
              'Green Challenges',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Color(0xff000000),
              ),
            ),
          ),
          Image.asset(
            'assets/refresh.png',
            width: 24,
          ),
        ],
      );
    }

    Widget Search() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 42,
        padding: EdgeInsets.only(
          left: 22,
          top: 6,
          bottom: 6,
        ),
        decoration: BoxDecoration(
          color: Color(0xffFBFBFB),
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Color(0xffE5E5E5),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/search.png',
              width: 20,
              height: 20,
            ),
            SizedBox(
              width: 11,
            ),
            Expanded(
              child: TextField(
                style: TextStyle(
                  color: Color(0xffACACAC),
                  fontWeight: FontWeight.w300,
                ),
                decoration: InputDecoration(
                  hintText: 'Search Challlenges',
                  hintStyle: GoogleFonts.poppins(
                    color: Color(0xffC4C4C4),
                    height: 1,
                  ),
                  border: InputBorder.none,
                  // border:
                  // OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10.0),
                  // ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget LeaderboardContainer() {
      return Container(
        padding: EdgeInsets.only(
          left: 24,
          top: 15,
          bottom: 15,
          right: 25,
        ),
        width: MediaQuery.of(context).size.width,
        height: 66,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(
            image: AssetImage(
              'assets/home_header.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Rank : 127 of 2000',
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    'See Leaderboards',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/right_arrow.png',
              width: 19,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 32,
            right: 32,
          ),
          child: ListView(
            children: [
              Title(),
              SizedBox(
                height: 23,
              ),
              Search(),
              SizedBox(
                height: 23,
              ),
              LeaderboardContainer(),
              SizedBox(
                height: 23,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'On Progress',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Text(
                    'View details',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      color: Color(0xffACACAC),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 19,
              ),
              CustomChallangeContainer(),
              SizedBox(
                height: 19,
              ),
              Text(
                'All  Challenges',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              CustomChallangeContainer(),
              SizedBox(
                height: 24,
              ),
              CustomChallangeContainer(),
              SizedBox(
                height: 24,
              ),
              CustomChallangeContainer(),
              SizedBox(
                height: 24,
              ),
              CustomChallangeContainer(),
              SizedBox(
                height: 24,
              ),
              CustomChallangeContainer(),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
