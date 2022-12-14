import 'package:flutter/material.dart';
import 'package:sharedpreferences/demo_page.dart';
import 'package:sharedpreferences/login_page/login_page.dart';
import 'package:sharedpreferences/splash/splash_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Splash(),
    );
  }
}

