import 'package:flutter/material.dart';

class ImageListViewSwap extends StatefulWidget {
  @override
  _ImageListViewSwapState createState() => _ImageListViewSwapState();
}

class _ImageListViewSwapState extends State<ImageListViewSwap> {
  int _currentIndex = 0;
  final List<String> _images = [
    'assets/kemendikbud.png',
    'assets/logo_polbeng.png',
    'assets/logo_vokasi.png',
  ];

  final List<IconData> _icons = [
    Icons.laptop,
    Icons.home,
    Icons.anchor
  ];

  void _nextImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _images.length;
    });
  }

  void _goToFirstImage() {
    setState(() {
      _currentIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Viewer'),
        actions: [
          for (int i = 0; i < _icons.length; i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: i == 0 ? _goToFirstImage : _nextImage,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == i ? Colors.white : Colors.transparent,
                  ),
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    _icons[i],
                    color: _currentIndex == i ? Colors.black : Colors.black,
                  ),
                ),
              ),
            ),
        ],
      ),
      body: Center(
        child: Image.asset(
          _images[_currentIndex],
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
