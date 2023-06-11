import 'package:flutter/material.dart';

// class Mob {
//   final String image;
//   final String name;
//   final String description;

//   Mob(this.image, this.name, this.description);
// }



class DescriptionScreen extends StatelessWidget {
  final String imageUrl;

  DescriptionScreen(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Description'),
        backgroundColor: Color.fromARGB(255, 32, 224, 22), // Set the desired color here
        centerTitle: true, // Center the title
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/dirtbg.png'), // Add your background image path
            fit: BoxFit.cover, // Adjust the image fit as needed
          ),
        ),
        child: Center(
          child: Image.network(imageUrl),
        ),
      ),
    );
  }
}

