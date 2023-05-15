import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:uas_epotek/authPage.dart';
import 'package:uas_epotek/detailobat.dart';
import 'package:uas_epotek/favoritPage.dart';
import 'package:uas_epotek/filteredObat.dart';
import 'package:uas_epotek/keluhan.dart';
import 'daftarobat.dart';
import 'homepage.dart';

//commit test branch tegarr
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: MainPage(),
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => Home(),
      'daftar': (context) => DaftarObat(),
      'keluhan': (context) => keluhan(),
      'filtered': (context) => filteredObat(),
      'favorit': (context) => Favorit(),
      'detailobat': (context) => DetailObat(),
    },
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Home();
            } else {
              return AuthPage();
            }
          }));
}
