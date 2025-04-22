import 'package:flutter/material.dart';

class TextAlignDemo extends StatelessWidget {
  const TextAlignDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metode Text.textAlign'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // biar full width
          children: const [
            Text(
              'Nilai TextAlign.start pada teks dengan\nTextDirection.ltr',
              textAlign: TextAlign.start,
              textDirection: TextDirection.ltr,
            ),
            SizedBox(height: 16),
            Text(
              'Nilai TextAlign.end pada teks dengan\nTextDirection.ltr',
              textAlign: TextAlign.end,
              textDirection: TextDirection.ltr,
            ),
            SizedBox(height: 16),
            Text(
              'Nilai TextAlign.start pada teks dengan\nTextDirection.rtl',
              textAlign: TextAlign.start,
              textDirection: TextDirection.rtl,
            ),
            SizedBox(height: 16),
            Text(
              'Nilai TextAlign.end pada teks dengan\nTextDirection.rtl',
              textAlign: TextAlign.end,
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}

 
