import 'package:flutter/material.dart';

class Mob {
  final String image;
  final String name;
  final String description;

  Mob(this.image, this.name, this.description);
}

class DescriptionScreen extends StatelessWidget {
  final String imageUrl;

  DescriptionScreen(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Description'),
      ),
      body: Center(
        child: Image.network(imageUrl),
      ),
    );
  }
}

