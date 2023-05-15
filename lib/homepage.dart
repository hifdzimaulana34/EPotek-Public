import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
        backgroundColor: Color(0xffB0B8B4),
        appBar: AppBar(
          title: const Text('E-POTEK HOMEPAGE'),
          backgroundColor: Color(0xff184A45),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.only(
                    top: 75.0,
                    bottom: 75,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Color(0xffD9D9D9)),
                  child: Column(
                    children: [
                      Text(
                        'Selamat Datang ' + user.email! + '!',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 100, right: 100),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff184A45),
                            minimumSize: Size.fromHeight(4),
                          ),
                          icon: Icon(Icons.arrow_back, size: 24),
                          label: Text(
                            'Sign Out',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () => FirebaseAuth.instance.signOut(),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 100,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ButtonTheme(
                    child: Container(
                      height: 50,
                      width: 200,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff184A45)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'keluhan');
                        },
                        icon: const Icon(Icons.search, size: 25),
                        label: const Text(
                          'Cari Obat',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ButtonTheme(
                    child: Container(
                      height: 50,
                      width: 200,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff184A45)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'daftar');
                        },
                        icon: const Icon(Icons.folder, size: 25),
                        label: const Text(
                          'Daftar Obat',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ButtonTheme(
                    child: Container(
                      height: 50,
                      width: 200,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff184A45)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'favorit');
                        },
                        icon: const Icon(Icons.star, size: 25),
                        label: const Text(
                          'Favorit',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
