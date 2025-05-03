import 'package:flutter/material.dart';

class DemoEdgeInsetsAll extends StatelessWidget {
  const DemoEdgeInsetsAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo EdgeInsetsAll')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.amberAccent, 

              margin: const EdgeInsets.all( 10),
              padding: const EdgeInsets.all(8), 
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Button 1'),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              color: Colors.lightBlueAccent,
              margin: const EdgeInsets.all(5),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Button 2'),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              color: Colors.greenAccent,
              margin: const EdgeInsets.all( 10),
              padding: EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Button 3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
