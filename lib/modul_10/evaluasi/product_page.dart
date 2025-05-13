import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String data;

  ProductPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Data diterima: $data"),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Ini snackbar dari halaman Product")),
                );
              },
              child: Text("Tampilkan Snackbar"),
            ),
          ],
        ),
      ),
    );
  }
}
