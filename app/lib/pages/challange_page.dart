import 'package:app/widget/custom_container_challage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/custom_bottom_nav2.dart';

class ChallangePage extends StatelessWidget {
  const ChallangePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget searchContainer() {
      return Container(
        padding: EdgeInsets.only(left: 22),
        height: 42,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color(0xffFBFBFB),
          border: Border.all(
            color: Color(0xffE5E5E5),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/search.png',
              width: 20,
            ),
            SizedBox(
              width: 11,
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Search Challlenges',
                  hintStyle: GoogleFonts.poppins(
                    color: Color(0xffACACAC),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 32,
              right: 32,
              top: 13,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Green Challenges',
                      ),
                    ),
                    Image.asset(
                      'assets/refresh.png',
                      width: 24,
                    ),
                  ],
                ),
                SizedBox(
                  height: 23,
                ),
                searchContainer(),
                SizedBox(
                  height: 23,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 24,
                    top: 15,
                    right: 25,
                    bottom: 15,
                  ),
                  height: 66,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/home_theme.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Your Rank : 127 of 2000'),
                            Text('See Leaderboards'),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/leader');
                        },
                        child: Image.asset(
                          'assets/arrow_right.png',
                          width: 19,
                          height: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('On Progress'),
                    Text('View Details'),
                  ],
                ),
                SizedBox(
                  height: 19,
                ),
                CustomContainerChallange(
                  title: 'Kompos Rumah Tangga',
                  desc: 'Rp. 5.000 - 10.000',
                ),
                SizedBox(
                  height: 19,
                ),
                Text('All Challange'),
                SizedBox(
                  height: 19,
                ),
                CustomContainerChallange(
                  title: 'Minimalisir pendingin',
                  desc: 'Rp. 5.000',
                ),
                SizedBox(
                  height: 24,
                ),
                CustomContainerChallange(
                  title: 'Minimalisir pendingin',
                  desc: 'Rp. 5.000',
                ),
                SizedBox(
                  height: 24,
                ),
                CustomContainerChallange(
                  title: 'Minimalisir pendingin',
                  desc: 'Rp. 5.000',
                ),
                SizedBox(
                  height: 24,
                ),
                CustomContainerChallange(
                  title: 'Minimalisir pendingin',
                  desc: 'Rp. 5.000',
                ),
                SizedBox(
                  height: 24,
                ),
                CustomContainerChallange(
                  title: 'Minimalisir pendingin',
                  desc: 'Rp. 5.000',
                ),
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
