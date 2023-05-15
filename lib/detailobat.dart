import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'item.dart';

class DetailObat extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;
  DetailObat({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CollectionReference obat =
        FirebaseFirestore.instance.collection(user.email!.toString());
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      backgroundColor: Color(0xffB0B8B4),
      appBar: AppBar(
        title: Text(itemArgs.name),
        backgroundColor: Color(0xff184A45),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 400,
                  width: 400,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 5.0),
                            child: SizedBox(
                              height: 150,
                              width: 150,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Image.network(itemArgs.image),
                              ),
                            ),
                            //child: Image.network(itemArgs.image),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  itemArgs.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                Text(
                                  'Rp. ${itemArgs.price}',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 20.0),
                        child: Text(itemArgs.deskripsi,
                            style: TextStyle(fontSize: 20)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 75,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff184A45),
                    minimumSize: Size.fromHeight(70),
                  ),
                  icon: const Icon(Icons.star, size: 25),
                  label: const Text(
                    'Tambahkan ke Favorit',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () async {
                    var db = FirebaseFirestore.instance;
                    await db
                        .collection(user.email!.toString())
                        .doc(itemArgs.name)
                        .set({
                      'name': itemArgs.name.toString(),
                      'price': itemArgs.price.toString(),
                      'image': itemArgs.image.toString(),
                      'kategori': itemArgs.kategori.toString(),
                      'deskripsi': itemArgs.deskripsi.toString(),
                    });
                  },
                ),
              ),
            ),
            // text(itemArgs: itemArgs),
            //Text(itemArgs.deskripsi),
          ],
        ),
      ),
    );
  }
}
