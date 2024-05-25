import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:sogra/provider/firebase_provider.dart';
import 'package:sogra/repository/firebase_repository.dart';
import 'package:sogra/screen/home_screen_bread.dart';
import 'package:sogra/screen/review_page.dart';
import 'package:sogra/screen/storeIntro.dart';
import 'auth/signin.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
      providers: [
        Provider<FirebaseRepository>(
          create: (context) => FirebaseRepository(
            firebaseFirestore: FirebaseFirestore.instance,
            firebaseAuth: FirebaseAuth.instance,
          ),
        ),
        ChangeNotifierProvider<FirebaseProvider>(
          create: (context) => FirebaseProvider(
            firebaseRepository: context.read<FirebaseRepository>()
          )
        ),
      ],
      child: MaterialApp(
        home: ReviewPage(type: "bread",),
      ),
  ));
}


class Main extends StatelessWidget {
  Main({super.key});

  @override
  Widget build(BuildContext context) {

    final FirebaseProvider firebaseProvider = context.watch<FirebaseProvider>();

    if (firebaseProvider.getUser() == null) {
      return SignIn();
    }
    return HomeScreenBread();
  }
}

// --web-renderer html
