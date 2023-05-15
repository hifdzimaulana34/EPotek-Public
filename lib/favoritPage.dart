import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Favorit extends StatefulWidget {
  Favorit({Key? key}) : super(key: key);
  @override
  State<Favorit> createState() => _FavoritState();
}

class _FavoritState extends State<Favorit> {
  final user = FirebaseAuth.instance.currentUser!;
  var db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final CollectionReference _dataObat =
        FirebaseFirestore.instance.collection(user.email!.toString());

    return Scaffold(
        backgroundColor: Color(0xffB0B8B4),
        appBar: AppBar(
          title: const Text('Obat Favoritku'),
          backgroundColor: Color(0xff184A45),
        ),
        body: StreamBuilder(
          stream: _dataObat.snapshots(), //build connection
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length, //number of rows
                itemBuilder: (context, index) {
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[index];
                  return Card(
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      leading:
                          Image.network(documentSnapshot['image'].toString()),
                      title: Text(documentSnapshot['name']),
                      subtitle: Text(documentSnapshot['kategori'].toString()),
                      onLongPress: () {
                        db
                            .collection(user.email!.toString())
                            .doc(documentSnapshot['name'])
                            .delete()
                            .then(
                              (doc) => print("Document deleted"),
                              onError: (e) =>
                                  print("Error updating document $e"),
                            );
                      },
                    ),
                  );
                },
              );
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
