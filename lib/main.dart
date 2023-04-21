import 'package:flutter/material.dart';

// Your widgets and classes here

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: ImagePage(),
    );
  }
}

class ImagePage extends StatelessWidget {
  final List<String> images = [
    'assets/images/creeperFace.webp',
    'assets/images/AllayFace.webp',
    'assets/images/HerobrineFace.webp',
    'assets/images/magmacubeface.png',
    'assets/images/SpiderFace.webp',
    'assets/images/SkeletonFace.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minecraft Mobs UwU'),
        centerTitle: true,
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1,
          children: images
              .map((image) => GestureDetector(
                    onTap: () {
                      // TODO: Add logic for when an image is clicked
                    },
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
