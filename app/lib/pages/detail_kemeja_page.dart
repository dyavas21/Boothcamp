import 'package:app/widget/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/custom_scroll_daur.dart';

class DetailKemejaPage extends StatelessWidget {
  const DetailKemejaPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget Kemeja() {
      return Container(
        height: 324,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/detail_kemeja.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                top: 10,
              ),
              child: Row(
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
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Produk',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 32,
                  bottom: 21,
                ),
                child: Container(
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/star.png',
                        width: 14,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '4.5',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget Description() {
      return Container(
        margin: EdgeInsets.only(
          top: 34,
          left: 32,
          right: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kemeja Daur Ulang'),
            Text('Rp. 25.000'),
            SizedBox(
              height: 28,
            ),
            Text('Tentang produk'),
            SizedBox(
              height: 14,
            ),
            Text(
              'Kompos adalah pupuk organik yang bersumber dari sampah rumah tangga, sampah tanaman, sampah pasar dan lain-lain dan dibuat melalui proses pengomposan. Kompos memberikan kesuburan bagi tanah karena menyediakan unsur-unsur hara dan mineral yang diperlukan tanaman. Pengguanaan kompos dalam bidang pertanian maupun perkebunan tentu akan menghasilkan produktivitas yang lebih tinggi serta hasil tanaman yang lebih sehat.',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      );
    }

    Widget Review() {
      return Container(
        margin: EdgeInsets.only(
          left: 32,
          right: 32,
        ),
        height: 108,
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffC4C4C4),
              ),
            ),
            SizedBox(
              width: 13,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 16,
                top: 12,
                right: 23,
              ),
              width: MediaQuery.of(context).size.width - 32 - 32 - 37,
              height: 108,
              decoration: BoxDecoration(
                color: Color(0xffFBFBFB),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Dhafin Alatas',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Text(
                        '12m ago',
                        style: GoogleFonts.poppins(
                          fontSize: 8,
                          color: Color(0xffACACAC),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 63),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.',
                      style: GoogleFonts.poppins(
                        fontSize: 8,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              CustomContainer(),
                              SizedBox(
                                width: 6,
                              ),
                              CustomContainer(),
                              SizedBox(
                                width: 6,
                              ),
                              CustomContainer(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 33,
                        height: 21,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/star.png',
                              width: 14,
                            ),
                            Text(
                              '5',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
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

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Kemeja(),
            Description(),
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
                top: 25,
                bottom: 19,
              ),
              child: Text('Review'),
            ),
            Review(),
            SizedBox(
              height: 14,
            ),
            Review(),
            SizedBox(
              height: 24,
            ),
            Center(
              child: Text(
                'see all Review',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
                top: 26,
                bottom: 13,
              ),
              child: Text('Produk Lainnya'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32,
                right: 32,
              ),
              child: DaurShopScroll(),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
