import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Nama"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Kirim nama ke halaman Home
                Navigator.pushNamed(context, '/home', arguments: nameController.text);
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
