import 'package:flutter/material.dart';

class Mob {
  final String image;
  final String name;
  final String description;

  Mob(this.image, this.name, this.description);
}

class DescriptionScreen extends StatelessWidget {
  final Mob mob;

  DescriptionScreen(this.mob);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mob.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              mob.image,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Center(
              child: Text(
                mob.description,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
