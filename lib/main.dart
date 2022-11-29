import 'package:flutter/material.dart';
import 'package:food_app/auth/signing.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food_app/config/config.dart';
import 'package:food_app/provider/product_provider.dart';
import 'package:food_app/screen/Home.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await F.initializeApp();
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
    return ChangeNotifierProvider<product_provider>(
      create: (_) => product_provider(),
      child: MaterialApp(
        theme: ThemeData(
            accentColor: Colors.black,
            primaryColor: Colors.black,
            scaffoldBackgroundColor: background),
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
