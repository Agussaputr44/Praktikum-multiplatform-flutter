import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)?.settings.arguments as String? ?? "User";

    return Scaffold(
      appBar: AppBar(title: Text("Beranda")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Selamat Datang, $name", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text("Product"),
              onTap: () {
                Navigator.pushNamed(context, '/product', arguments: "Data dari Home ke Product");
              },
            ),
            ListTile(
              title: Text("Profil"),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              title: Text("About App"),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              title: Text("Logout"),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text("Halo, $name!")),
    );
  }
}
