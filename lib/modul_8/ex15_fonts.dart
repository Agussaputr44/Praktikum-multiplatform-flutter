import 'package:flutter/material.dart';

void main() {
  runApp(const Ex15Fonts());
}
class Ex15Fonts extends StatelessWidget {
  const Ex15Fonts({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "PlayfairDisplay",
      ),
      home: const Home(title: "Flutter Demo Home Page"),
    );
  }
}

class Home extends StatelessWidget {
  final String title;

  const Home({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "PlayfairDisplay Regular",
                style: TextStyle(fontFamily: "PlayfairDisplay", fontSize: 20),
              ),
              Container(height: 15),
              Text(
                "PlayfairDisplay Italic",
                style: const TextStyle(
                    fontFamily: "PlayfairDisplay",
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
              Container(height: 15),
              Text(
                "PlayfairDisplay Bold",
                style: const TextStyle(
                    fontFamily: "PlayfairDisplay",
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
