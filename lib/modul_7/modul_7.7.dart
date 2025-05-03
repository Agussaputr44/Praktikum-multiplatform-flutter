import 'package:flutter/material.dart';

class DemoEdgeInsetsOnly extends StatelessWidget {
  const DemoEdgeInsetsOnly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo EdgeInsetsOnly')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.amberAccent, 

              margin: const EdgeInsets.only(right:  10),
              padding: const EdgeInsets.only(right: 8), 
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Button 1'),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              color: Colors.lightBlueAccent,
              margin: const EdgeInsets.only(right: 5),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Button 2'),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              color: Colors.greenAccent,
              margin: const EdgeInsets.only(right:  10),
              padding: EdgeInsets.only(right: 15),
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
