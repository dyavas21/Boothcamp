import 'package:app/widget/custom_connected_apps.dart';
import 'package:app/widget/custom_container_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/custom_bottom_nav2.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 24,
              right: 24,
              top: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Profile',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                      ),
                    ),
                    Image.asset(
                      'assets/setting.png',
                      width: 24,
                    ),
                  ],
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 25,
                    top: 32,
                    bottom: 30,
                  ),
                  height: 104,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      image: AssetImage('assets/profile_theme.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/profile_pic.png',
                        width: 55,
                      ),
                      SizedBox(
                        width: 31,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nadya Zafira',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'since 2021',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Carbon',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          '600kg',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Total Insentif',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          'Rp25.000',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: 93,
                          height: 26,
                          decoration: BoxDecoration(
                            color: Color(0xffFFBE06),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Tukar Point',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 36,
                ),
                Text(
                  'General Information',
                ),
                SizedBox(
                  height: 14,
                ),
                CustomContainerProfile(
                  title: 'Nadya Zafira',
                ),
                SizedBox(
                  height: 16,
                ),
                CustomContainerProfile(
                  title: 'nadyazafira@gmail.com',
                ),
                SizedBox(
                  height: 16,
                ),
                CustomContainerProfile(
                  title: '0851 1241 1525',
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Connected Apps'),
                SizedBox(
                  height: 9,
                ),
                CustomConnectedApps(
                  title: 'Ride-hailing',
                  desc1: '+62123 4567 8901',
                  desc2: 'Connected',
                  warna: 0xffE5E5E5,
                ),
                SizedBox(
                  height: 14,
                ),
                CustomConnectedApps(
                  title: 'Marketplace',
                  desc1: '+62123 4567 8901',
                  desc2: 'Connect+',
                  warna: 0xffFFBE06,
                ),
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Container(
                    height: 41,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xff60A129),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        'Log Out',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
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
