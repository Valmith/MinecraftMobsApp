import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class ReadListview extends StatefulWidget {
  const ReadListview({super.key});

  @override
  State<ReadListview> createState() => _ReadListviewState();
}

class _ReadListviewState extends State<ReadListview> {
  final _userStream = FirebaseFirestore.instance.collection('minecraftmobs').snapshots();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Read the firestore'),
      ),
      body: StreamBuilder(
        stream: _userStream,
        builder: (context, snapshot) {
          if(snapshot.hasError) {
            return const Text('Connection error');
          }

          if(snapshot.connectionState == ConnectionState.waiting) {
            return const Text('Loading...');

          }

          var docs = snapshot.data!.docs;
          return Text('${docs.length}');
          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (context, index) {
              return ListTile(
                
              )
            },
          )



        },
      ),
    );
  }
}