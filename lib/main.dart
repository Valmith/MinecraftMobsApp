import 'package:flutter/material.dart';

import 'Screens/Desc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Minecraft Almanac',
      home: ImagePage(),
    );
  }
}

class ImagePage extends StatelessWidget {
  final List<Mob> mobs = [
    Mob('assets/images/creeperFace.webp', 'Creeper', 'Creepers are a Hostile Mob in Minecraft that are only found in the overworld. Creepers are a great source for Gunpowder and other materials in-game. In this Minecraft Creeper guide, we will teach you everything you need to know about how to find Creepers, how to defeat a Creeper, quick tips and facts that you may not have known, as well as their available loot drops.'),
    Mob('assets/images/AllayFace.webp', 'Allay', 'The Minecraft Allay is one of the newest mobs to be added to Minecraft. It is a flying mob, similar in size and appearance to the Vex summoned by Evokers, but is a passive mob towards the player.'),
    Mob('assets/images/HerobrineFace.webp', 'Herobrine', 'Herobrine is a rumored Hostile Mob found in Minecraft. He is the center of endless speculation and Creepypasta, producing explanations of his origins such as a ghost, Notchs dead brother, revenge carried out by a fired Mojang employee, and a slew of others.'),
    Mob('assets/images/magmacubeface.png', 'Magma Cube', 'Magma Cubes are a hostile mob in Minecraft. They only spawn in a specific biome.'),
    Mob('assets/images/SpiderFace.webp', 'Spider', 'Spider are an neutral mob in Minecraft. Like other aggressive mobs, spiders spawn in darkness and can therefore be prevented by lighting up areas. Spiders, however, do not catch on fire in the sunlight. Unlike creepers, however, during the day, they do not remain hostile and act passively unless attacked. Spiders can jump over obstacles that block other mobs, making them more difficult to corral and capable of climbing up walls.'),
    Mob('assets/images/SkeletonFace.webp', 'Skeleton', 'Skeletons are a hostile Hostile Mob that can be found in two dimensions in Minecraft and they are known to drop valuable loot upon death. In this Minecraft Skeleton guide, we will teach you everything you need to know about how to find a Skeleton, how to defeat a Skeleton, quick tips and facts that you may not have known, as well as their available loot drops.'),
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
                    child: Image.asset(
                      mobs[index].image,
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