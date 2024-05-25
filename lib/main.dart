import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sogra/screen/home_screen_bread.dart';
import 'auth/signin.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(home: HomeScreenBread(),));
}


class Main extends StatelessWidget {
  Main({super.key});

  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {

    _firestore.collection("test").doc().set({"test": "1"});


    return Scaffold(
      body: Text("gd"),
    );
  }
}
