import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Screens/Desc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  bool connected = Firebase.apps.isNotEmpty;
  print('Firebase is $connected');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Minecraft Almanac',
      home: ImageGridScreen(),
    );
  }
}

class ImageGridScreen extends StatelessWidget {
  final List<String> mobs = [
    'https://firebasestorage.googleapis.com/v0/b/minecraftgalleryapp.appspot.com/o/SpiderFace.webp?alt=media&token=d4a5a2ba-84bf-44ba-a0b8-c6b9ad6d1450',
    'https://firebasestorage.googleapis.com/v0/b/minecraftgalleryapp.appspot.com/o/AllayFace.webp?alt=media&token=2ed8b600-1e6a-4de6-8b67-ccc56ab35dd8',
    'https://firebasestorage.googleapis.com/v0/b/minecraftgalleryapp.appspot.com/o/MagmaCubeFace.png?alt=media&token=441349c5-b2e3-4d00-acc4-cbca3a7d4707',
    'https://firebasestorage.googleapis.com/v0/b/minecraftgalleryapp.appspot.com/o/HerobrineFace.webp?alt=media&token=d54963bb-eeda-491c-a959-212c0a48be0e',
    'https://firebasestorage.googleapis.com/v0/b/minecraftgalleryapp.appspot.com/o/CreeperFace.webp?alt=media&token=cfb1023a-9dc1-4555-aa1a-b2f2394e215a',
    'https://firebasestorage.googleapis.com/v0/b/minecraftgalleryapp.appspot.com/o/SkeletonFace.webp?alt=media&token=421ebcdf-36ba-4e80-8dce-4205206c739c',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('-Minecraft Mobs List-'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(232, 38, 226, 5),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/dirtbg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1, // Adjust this value to make the tiles smaller
            children: List.generate(mobs.length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescriptionScreen(mobs[index]),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(9.0), // Add padding to the Card widget
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        mobs[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(232, 38, 226, 5),
              ),
              child: Text(
                'MENU PAGE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // TODO: Add logic for navigating to the settings page
              },
            ),
          ],
        ),
      ),
    );
  }
}
