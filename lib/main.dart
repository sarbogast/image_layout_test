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
  final List<String> _images = [
    'https://via.placeholder.com/400x600',
    'https://via.placeholder.com/400x600',
    'https://via.placeholder.com/600x400',
    'https://via.placeholder.com/600x400',
    'https://via.placeholder.com/400x600',
    'https://via.placeholder.com/600x400',
    'https://via.placeholder.com/600x400',
    'https://via.placeholder.com/400x600',
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
                        .map((url) => Image.network(url))
                        .toList(),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Wrap(
                    runSpacing: 8,
                    children: _images
                        .where((element) => _images.indexOf(element) % 2 == 1)
                        .map((url) => Image.network(url))
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
