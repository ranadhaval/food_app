import 'package:flutter/material.dart';
import 'package:food_app/auth/signing.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(my_app());
}

class my_app extends StatefulWidget {
  const my_app({Key? key}) : super(key: key);

  @override
  State<my_app> createState() => _my_appState();
}

class _my_appState extends State<my_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: signing(),
    );
  }
}
