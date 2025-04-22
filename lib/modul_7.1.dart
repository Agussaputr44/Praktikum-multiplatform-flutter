import 'package:flutter/material.dart';

class Modul1 extends StatelessWidget {
  const Modul1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Text Widget'),
      ),
      body: Center(
          child: Text(
        "Rekayasa Perangkat Lunak",
        style: TextStyle(
          fontSize: 30,
          fontStyle: FontStyle.italic,
          color: Colors.red,
        ),
      )),
    );
  }
}
