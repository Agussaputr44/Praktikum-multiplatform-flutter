import 'package:flutter/material.dart';
import 'package:praktikum_flutter1/modul_7/modul_7.1.dart';
import 'package:praktikum_flutter1/modul_7/modul_7.10.dart';
import 'package:praktikum_flutter1/modul_7/modul_7.11.dart';
import 'package:praktikum_flutter1/modul_7/modul_7.2.dart';
import 'package:praktikum_flutter1/modul_7/modul_7.3.dart';
import 'package:praktikum_flutter1/modul_7/modul_7.4.dart';
import 'package:praktikum_flutter1/modul_7/modul_7.5.dart';
import 'package:praktikum_flutter1/modul_7/modul_7.6.dart';
import 'package:praktikum_flutter1/modul_7/modul_7.7.dart';
import 'package:praktikum_flutter1/modul_7/modul_7.8.dart';
import 'package:praktikum_flutter1/modul_7/modul_7.9.dart';
import 'package:praktikum_flutter1/modul_7/modul_7_evaluasi.dart';
import 'package:praktikum_flutter1/modul_7/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber.shade100),
        useMaterial3: true,
      ),
      home:  HomeEvaluasi(),
    );
  }
}

