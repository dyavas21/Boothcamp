import 'package:app/widget/custom_leaderboard_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 24,
                right: 24,
                top: 13,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/arrow_left.png',
                          width: 24,
                        ),
                      ),
                      Text(
                        'Leaderboard',
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
                    height: 17,
                  ),
                  CustomLeaderboardContainer(
                    rank: '#56',
                    title: 'Nadya Zafira',
                    desc: '88 Gold • Since 2019',
                    warna: 0xffFFBE06,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 6,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Container(
                          height: 6,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xffFBFBFB),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          height: 6,
                          width: MediaQuery.of(context).size.width / 1.50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff23A757),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Challage #1',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        '62% Completion',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Weekly\'s Top 3',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CustomLeaderboardContainer(
                    rank: '#1',
                    title: 'Nadya Zafira',
                    desc: '88 Gold • Since 2019',
                    warna: 0xffFFBE06,
                  ),
                  CustomLeaderboardContainer(
                    rank: '#2',
                    title: 'Nadya Zafira',
                    desc: '88 Gold • Since 2019',
                    warna: 0xffC4C4C4,
                  ),
                  CustomLeaderboardContainer(
                    rank: '#3',
                    title: 'Nadya Zafira',
                    desc: '88 Gold • Since 2019',
                    warna: 0xffCD6F2C,
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  CustomLeaderboardContainer(
                    rank: '#55',
                    title: 'Nadya Zafira',
                    desc: '88 Gold • Since 2019',
                    warna: 0xffFFBE06,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  CustomLeaderboardContainer(
                    rank: '#54',
                    title: 'Nadya Zafira',
                    desc: '88 Gold • Since 2019',
                    warna: 0xffFFBE06,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  CustomLeaderboardContainer(
                    rank: '#56',
                    title: 'Nadya Zafira',
                    desc: '88 Gold • Since 2019',
                    warna: 0xffFFBE06,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  CustomLeaderboardContainer(
                    rank: '#57',
                    title: 'Nadya Zafira',
                    desc: '88 Gold • Since 2019',
                    warna: 0xffFFBE06,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
