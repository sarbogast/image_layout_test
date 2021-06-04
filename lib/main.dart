import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Image> _images = [
    Image.network('https://via.placeholder.com/400x600',
        key: ValueKey('image1')),
    Image.network('https://via.placeholder.com/400x600',
        key: ValueKey('image2')),
    Image.network('https://via.placeholder.com/600x400',
        key: ValueKey('image3')),
    Image.network('https://via.placeholder.com/600x400',
        key: ValueKey('image4')),
    Image.network('https://via.placeholder.com/400x600',
        key: ValueKey('image5')),
    Image.network('https://via.placeholder.com/600x400',
        key: ValueKey('image6')),
    Image.network('https://via.placeholder.com/600x400',
        key: ValueKey('image7')),
    Image.network('https://via.placeholder.com/400x600',
        key: ValueKey('image8')),
  ];

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Wrap(
                    runSpacing: 8,
                    children: _images
                        .where((element) => _images.indexOf(element) % 2 == 0)
                        .toList(),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Wrap(
                    runSpacing: 8,
                    children: _images
                        .where((element) => _images.indexOf(element) % 2 == 1)
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
