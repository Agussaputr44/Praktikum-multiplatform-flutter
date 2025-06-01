import 'package:flutter/material.dart';
import 'pages/home_page.dart'; // pastikan path ini sesuai struktur foldermu

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kabupaten/Kota Riau',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber.shade100),
        useMaterial3: true,
      ),
      home: const HomePage(), // pake halaman HomePage yang sudah kamu buat
    );
  }
}
