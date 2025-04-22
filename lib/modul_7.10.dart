import 'package:flutter/material.dart';

class ImageListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView with Images'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/kemendikbud.png',
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Image.asset(
            'assets/logo_polbeng.png',
            height: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}