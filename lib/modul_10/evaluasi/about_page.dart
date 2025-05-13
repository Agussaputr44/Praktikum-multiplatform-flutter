import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tentang Aplikasi")),
      body: Center(child: Text("Aplikasi ini dibuat untuk demonstrasi navigasi.")),
    );
  }
}
