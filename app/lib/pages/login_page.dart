import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget username() {
      return TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Color(0xff60A129),
            ),
          ),
          hintText: 'username/email',
          hintStyle: GoogleFonts.poppins(
            color: Color(0xffC4C4C4),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      );
    }

    Widget password() {
      return TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Color(0xff60A129),
            ),
          ),
          hintText: 'password',
          hintStyle: GoogleFonts.poppins(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      );
    }

    Widget loginButton() {
      return Container(
        height: 48,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xff60A129),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            'Login',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 13,
            ),
            Center(
              child: Text(
                'Login',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Color(0xffACACAC),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 113,
                left: 40,
                right: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: Color(0xffEBEEF2),
                          shape: BoxShape.circle,
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
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Text(
                    'Start greening our world.',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Using this app may cause postive impact\nto the world, so let’s begin!',
                    style: GoogleFonts.poppins(),
                  ),
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
                      Navigator.pushNamed(context, '/home');
                    },
                    child: loginButton(),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Text(
                      'Forgot your password?',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
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
            ),
            SizedBox(
              height: 34,
            ),
          ],
        ),
      ),
    );
  }
}
