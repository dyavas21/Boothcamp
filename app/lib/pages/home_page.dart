import 'package:app/widget/custom_bottom_nav2.dart';
import 'package:app/widget/custom_news.dart';
import 'package:app/widget/custom_scroll_daur.dart';
import 'package:app/widget/custom_scroll_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/custom_bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget HorizontalScroll() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          child: Row(
            children: [
              CustomScrollHome(
                imgUrl: 'assets/donate.png',
                title: 'Donate',
              ),
              CustomScrollHome(
                imgUrl: 'assets/statistic.png',
                title: 'Statistic',
              ),
              CustomScrollHome(
                imgUrl: 'assets/waste.png',
                title: 'Waste',
              ),
              CustomScrollHome(
                imgUrl: 'assets/trade.png',
                title: 'Trade',
              ),
              CustomScrollHome(
                imgUrl: 'assets/shop.png',
                title: 'Shop',
              ),
              CustomScrollHome(
                imgUrl: 'assets/donate.png',
                title: 'Donate',
              ),
            ],
          ),
        ),
      );
    }

    Widget DaurShopScroll() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.only(right: 24),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/detail-kemeja');
                },
                child: CustomScrollDaur(
                    imgUrl: 'assets/kemeja.png',
                    title: 'Kemeja Daur',
                    price: '24.000',
                    like: '214 likes',
                    star: '4.5'),
              ),
              CustomScrollDaur(
                  imgUrl: 'assets/topi.png',
                  title: 'Topi',
                  price: '30.000',
                  like: '300 likes',
                  star: '5.0'),
              CustomScrollDaur(
                  imgUrl: 'assets/tas.png',
                  title: 'Tas',
                  price: '45.000',
                  like: '250 likes',
                  star: '4.7'),
              CustomScrollDaur(
                  imgUrl: 'assets/kemeja.png',
                  title: 'Kemeja Daur',
                  price: '24.000',
                  like: '214 likes',
                  star: '4.5'),
            ],
          ),
        ),
      );
    }

    Widget NewsSection() {
      return Column(
        children: [
          CustomNews(
            imgUrl: 'assets/news1.png',
            title: 'Ekspor Kendaraan Listrik',
            desc:
                'Indonesia berhasil mengekspor kendaraan listrik produksi dalam negeri',
          ),
          CustomNews(
            imgUrl: 'assets/news2.png',
            title: 'Petisi',
            desc: 'Ajak Bankmu untuk divestasi energi tidak terbaharukan',
          ),
          CustomNews(
            imgUrl: 'assets/news2.png',
            title: 'Ekspor Kendaraan Listrik',
            desc:
                'Indonesia berhasil mengekspor kendaraan listrik produksi dalam negeri',
          ),
        ],
      );
    }

    Widget content() {
      return ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 24,
              right: 24,
              top: 28,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Nadya Zafira',
                  style: GoogleFonts.poppins(),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 54,
                    top: 14,
                  ),
                  height: 104,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                      image: AssetImage('assets/home_theme.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                HorizontalScroll(),
                SizedBox(
                  height: 24,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 18,
                    right: 27,
                  ),
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Color(0xffEBF0E6)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                'Daily Challange',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 29,
                                height: 19,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Color(0xffD0004B),
                                ),
                                child: Center(
                                  child: Text(
                                    '10+',
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/arrow_right.png',
                        width: 19,
                        height: 17,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text('Daur Shop'),
                    ),
                    Text('See All'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                DaurShopScroll(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text('News'),
                    ),
                    Text('See all'),
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                NewsSection(),
                SizedBox(
                  height: 80,
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
