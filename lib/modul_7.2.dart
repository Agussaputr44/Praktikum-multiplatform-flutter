import 'package:flutter/material.dart';

class Modul2 extends StatelessWidget {
  const Modul2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Text Widget'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Tampilkan Dialog"),
          onPressed: () => _showDialog(context), 
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Hello'),
          content: const Text('Welcome to Flutter!'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
