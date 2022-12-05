import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/custom_bottom_nav2.dart';

class StatisticPage extends StatelessWidget {
  const StatisticPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 24,
              right: 24,
              top: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/arrow_left.png',
                      width: 24,
                    ),
                    Text(
                      'Statistic',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                Text(
                  'Your Carbon',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '600KG',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/arrow.png',
                              width: 7,
                              height: 7,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              '2%',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffD0004B),
                              ),
                            ),
                            Text(
                              ' this month',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffF0F6EA),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/scan_green.png',
                              width: 24,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'History',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Overview',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      '5.4 (+2%)',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Image.asset(
                  'assets/bar.png',
                ),
                SizedBox(
                  height: 13,
                ),
                Center(
                  child: Container(
                    width: 223,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '1D',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '1M',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '3M',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              '1Y',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                              ),
                            ),
                            Container(
                              width: 14,
                              height: 1,
                              decoration: BoxDecoration(
                                color: Color(0xff60A129),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            )
                          ],
                        ),
                        Text(
                          '3Y',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '5Y',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'All',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget BottomNavigationBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.only(
            top: 19,
            left: 37,
            right: 37,
          ),
          color: Colors.white,
          height: 81,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: CustomButtonNav2(
                  imgUrl: 'assets/home.png',
                  title: 'Home',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/challange');
                },
                child: CustomButtonNav2(
                  imgUrl: 'assets/challange.png',
                  title: 'Challange',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/scan');
                },
                child: CustomButtonNav2(
                  imgUrl: 'assets/scan.png',
                  title: 'Scan',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/statistic');
                },
                child: CustomButtonNav2(
                  imgUrl: 'assets/statistic.png',
                  title: 'Statistic',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: CustomButtonNav2(
                  imgUrl: 'assets/profile.png',
                  title: 'Profile',
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            content(),
            BottomNavigationBar(),
          ],
        ),
      ),
    );
  }
}
