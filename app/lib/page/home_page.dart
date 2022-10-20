import 'package:app/widget/custom_news.dart';
import 'package:app/widget/custom_scroll_daur.dart';
import 'package:app/widget/custom_scroll_home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget Header() {
      return Container(
        height: 104,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
          left: 54,
          top: 14,
        ),
        margin: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/home_header.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Carbon',
              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '600kg',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/arrow.png',
                  width: 7,
                ),
                SizedBox(
                  width: 7,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '2%',
                        style: GoogleFonts.poppins(
                          color: Color(0xffD0004B),
                          fontSize: 10,
                        ),
                      ),
                      TextSpan(
                        text: ' this month',
                        style: GoogleFonts.poppins(
                          color: Color(0xff000000),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget HorizontalScroll() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.only(
            left: 24,
            right: 8,
          ),
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
            ],
          ),
        ),
      );
    }

    Widget DailyChallange() {
      return Container(
        padding: EdgeInsets.only(
          left: 18,
          top: 14,
          bottom: 14,
          right: 27,
        ),
        margin: EdgeInsets.symmetric(horizontal: 24),
        width: MediaQuery.of(context).size.width,
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffE4ECDD),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Text(
                      'Daily Challenge',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/10.png',
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/right_arrow.png',
              width: 19,
              height: 17,
            ),
          ],
        ),
      );
    }

    Widget Title1() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Daur Shop',
                style: GoogleFonts.poppins(
                  color: Color(0xff000000),
                ),
              ),
            ),
            Text(
              'see all',
              style: GoogleFonts.poppins(
                color: Color(0xffC4C4C4),
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      );
    }

    Widget DaurShopScroll() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.only(left: 24),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/daur-shop1');
                },
                child: CustomScrollDaur(
                  imgUrl: 'assets/kemeja.png',
                  title: 'Kemeja Daur',
                  like: '218 likes',
                  price: '24.000',
                ),
              ),
              CustomScrollDaur(
                imgUrl: 'assets/bag.png',
                title: 'Topi',
                like: '129 likes',
                price: '24.000',
              ),
              CustomScrollDaur(
                imgUrl: 'assets/bag2.png',
                title: 'Totebag',
                like: '110 likes',
                price: '24.000',
              ),
              CustomScrollDaur(
                imgUrl: 'assets/kemeja.png',
                title: 'Kemeja Daur',
                like: '218',
                price: '24.000',
              ),
            ],
          ),
        ),
      );
    }

    Widget Title2() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'News',
                style: GoogleFonts.poppins(
                  color: Color(0xff000000),
                ),
              ),
            ),
            Text(
              'see all',
              style: GoogleFonts.poppins(
                color: Color(0xffC4C4C4),
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
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
            title: 'Petisi',
            desc: 'Ajak Bankmu untuk divestasi energi tidak terbaharukan',
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: RichText(
                text: TextSpan(
                    text: 'Hi, ',
                    style: GoogleFonts.poppins(
                      color: Color(0xff000000),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Nadya Zafira',
                        style: GoogleFonts.poppins(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Header(),
            SizedBox(
              height: 26,
            ),
            HorizontalScroll(),
            SizedBox(
              height: 24,
            ),
            DailyChallange(),
            SizedBox(
              height: 37,
            ),
            Title1(),
            SizedBox(
              height: 20,
            ),
            DaurShopScroll(),
            SizedBox(
              height: 30,
            ),
            Title2(),
            SizedBox(
              height: 11,
            ),
            NewsSection(),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
