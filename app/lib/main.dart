import 'package:app/pages/challange_page.dart';
import 'package:app/pages/detail_kemeja_page.dart';
import 'package:app/pages/home_page.dart';
import 'package:app/pages/login_page.dart';
import 'package:app/pages/profile_page.dart';
import 'package:app/pages/scan_page.dart';
import 'package:app/pages/splash_page.dart';
import 'package:app/pages/statistic_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/detail-kemeja': (context) => DetailKemejaPage(),
        '/challange': (context) => ChallangePage(),
        '/scan': (context) => ScanPage(),
        '/statistic': (context) => StatisticPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
