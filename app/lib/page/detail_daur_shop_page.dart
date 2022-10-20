import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/custom_scroll_daur.dart';

class DetailDaurShopPage extends StatelessWidget {
  const DetailDaurShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget ImageKemeja() {
      return Container(
        height: 324,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          image: DecorationImage(
              image: AssetImage(
                'assets/detail_kemeja.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                top: 14,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/left_arrow.png',
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
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.only(
                  right: 32,
                  bottom: 21,
                ),
                width: 50,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget DescriptionProduct() {
      return Container(
        margin: EdgeInsets.only(
          top: 34,
          left: 32,
          right: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kemeja Daur Ulang',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
              ),
            ),
            Text(
              'Rp. 25.000',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Tentang produk',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'Kompos adalah pupuk organik yang bersumber dari sampah rumah tangga, sampah tanaman, sampah pasar dan lain-lain dan dibuat melalui proses pengomposan. Kompos memberikan kesuburan bagi tanah karena menyediakan unsur-unsur hara dan mineral yang diperlukan tanaman. Pengguanaan kompos dalam bidang pertanian maupun perkebunan tentu akan menghasilkan produktivitas yang lebih tinggi serta hasil tanaman yang lebih sehat.',
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Review',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
              ),
            ),
          ],
        ),
      );
    }

    Widget BoxReview() {
      return Container(
        margin: EdgeInsets.only(right: 6),
        width: 29,
        height: 26,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Color(0xffE4E8EC),
        ),
      );
    }

    Widget Review() {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 32,
              right: 13,
              top: 19,
            ),
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Color(0xffC4C4C4),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 19,
            ),
            height: 108,
            width: MediaQuery.of(context).size.width - 32 - 69,
            padding: EdgeInsets.only(
              left: 16,
              top: 12,
              right: 23,
            ),
            decoration: BoxDecoration(
              color: Color(0xffFBFBFB),
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
                          color: Color(0xff000000),
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
                  padding: EdgeInsets.only(
                    right: 50,
                  ),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ligula nibh, interdum non enim sit amet, iaculis aliquet nunc.',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontSize: 8,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            BoxReview(),
                            BoxReview(),
                            BoxReview(),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 33,
                      height: 21,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/star.png',
                            width: 14,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            '5',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      );
    }

    Widget OtherProduct() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.only(
            left: 32,
            right: 8,
          ),
          child: Row(
            children: [
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

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            ImageKemeja(),
            DescriptionProduct(),
            Review(),
            Review(),
            SizedBox(
              height: 24,
            ),
            Center(
              child: Text(
                'see all Review',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Color(0xff000000),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 32,
                bottom: 13,
              ),
              child: Text(
                'Produk lainnya',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Color(0xff000000),
                ),
              ),
            ),
            OtherProduct(),
          ],
        ),
      ),
    );
  }
}
