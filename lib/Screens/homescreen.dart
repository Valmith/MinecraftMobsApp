

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class ImagePage2 extends StatelessWidget {
//   final List<String> images = [
//     'assets/images/creeperFace.webp',
//     'assets/images/AllayFace.webp',
//     'assets/images/HerobrineFace.webp',
//     'assets/images/magmacubeface.png',
//     'assets/images/SpiderFace.webp',
//     'assets/images/SkeletonFace.webp',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Minecraft Mobs List'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: GridView.count(
//           crossAxisCount: 2,
//           childAspectRatio: 1,
//           children: images
//               .map((image) => GestureDetector(
//                     onTap: () {
//                       // TODO: Add logic for when an image is clicked
//                     },
//                     child: Card(
//                       elevation: 2,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8)),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(8),
//                         child: Image.asset(
//                           image,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   ))
//               .toList(),
//         ),
//       ),

    
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Minecraft Mobs List',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               title: Text('Home'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: Text('Settings'),
//               onTap: () {
//                 // TODO: Add logic for navigating to the settings page
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }