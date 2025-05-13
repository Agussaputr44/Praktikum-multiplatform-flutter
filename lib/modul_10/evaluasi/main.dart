import 'package:flutter/material.dart';
import 'package:praktikum_flutter1/modul_10/evaluasi/about_page.dart';
import 'package:praktikum_flutter1/modul_10/evaluasi/home_page.dart';
import 'package:praktikum_flutter1/modul_10/evaluasi/login_page.dart';
import 'package:praktikum_flutter1/modul_10/evaluasi/product_page.dart';
import 'package:praktikum_flutter1/modul_10/evaluasi/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Navigasi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple.shade300),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/product': (context) => ProductPage(
            data: ModalRoute.of(context)?.settings.arguments as String? ?? ''),
        '/profile': (context) => ProfilePage(),
        '/about': (context) => AboutPage(),
      },
    );
  }
}
