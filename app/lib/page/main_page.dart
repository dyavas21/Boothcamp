import 'package:app/page/home_page.dart';
import 'package:app/widget/custom_bottom_nav.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget BuildContent() {
      return HomePage();
    }

    Widget customBottomNav() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
          ),
          height: 81,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBottomNav(
                imgUrl: 'assets/home.png',
                title: 'Home',
              ),
              CustomBottomNav(
                imgUrl: 'assets/challange.png',
                title: 'Challanges',
              ),
              CustomBottomNav(
                imgUrl: 'assets/scan.png',
                title: 'Scan',
              ),
              CustomBottomNav(
                imgUrl: 'assets/chart.png',
                title: 'Statistic',
              ),
              CustomBottomNav(
                imgUrl: 'assets/profile.png',
                title: 'Profile',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          BuildContent(),
          customBottomNav(),
        ],
      ),
    );
  }
}
