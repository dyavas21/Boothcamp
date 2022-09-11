import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget firstContent() {
      return Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 8),
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffEBEEF2),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'GreenMe',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xff000000),
            ),
          ),
        ],
      );
    }

    Widget secondContent() {
      return Padding(
        padding: EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Start greening our world.',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Using this app may cause postive impact\nto the world, so let’s begin!',
              style: GoogleFonts.poppins(
                color: Color(0xff000000),
              ),
            ),
          ],
        ),
      );
    }

    Widget username() {
      return TextField(
        style: TextStyle(color: Colors.white, fontSize: 18),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Color(0xff60A129)),
          ),
          hintText: 'username/email',
          hintStyle: GoogleFonts.poppins(
            color: Color(0xffC4C4C4),
            height: 1,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      );
    }

    Widget password() {
      return TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Color(0xff60A129)),
          ),
          hintText: 'username/email',
          hintStyle: GoogleFonts.poppins(
            color: Color(0xffC4C4C4),
            height: 1,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      );
    }

    Widget buttonLogin() {
      return Container(
        height: 48,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xff60A129),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Center(
          child: Text(
            'Login',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }

    Widget text() {
      return Center(
        child: Text(
          'Forgot your password?',
        ),
      );
    }

    Widget forgotText() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don’t have an account?',
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Color(0xff000000),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Register',
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Color(0xff60A129),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 13),
              child: Center(
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Color(0xffACACAC),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 113,
            ),
            firstContent(),
            SizedBox(
              height: 39,
            ),
            secondContent(),
            SizedBox(
              height: 40,
            ),
            username(),
            SizedBox(
              height: 12,
            ),
            password(),
            SizedBox(
              height: 12,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/main');
              },
              child: buttonLogin(),
            ),
            SizedBox(
              height: 12,
            ),
            text(),
            Spacer(),
            forgotText(),
          ],
        ),
      )),
    );
  }
}
