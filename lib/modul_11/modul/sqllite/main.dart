import 'package:flutter/material.dart';
import 'package:praktikum_flutter1/modul_11/modul/sqllite/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akses database SQLite',
     theme: ThemeData(  
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber.shade100),
        useMaterial3: true,
      ),
      home: const HomeSqllite(),
      debugShowCheckedModeBanner: false,
    );
  }
}


