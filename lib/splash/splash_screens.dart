import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreferences/home_page/home_page.dart';
import 'package:sharedpreferences/login_page/login_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

    late String finalEmail;
  late String finalPassword;
  Future getVaildationData() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    var obtainEmail = pref.getString('email');
    var obtainPassword = pref.getString('password');
    setState(() {
      finalEmail = obtainEmail!;
      finalPassword = obtainPassword!;
    });
    print(finalEmail);
    print(finalPassword);
  }

  @override
  void initState() {
    super.initState();
    getVaildationData().whenComplete(() async {
      Timer(
          Duration(seconds: 5),
          () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      finalEmail == true ? LoginDemo() : HomePage())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: FlutterLogo(
         size: MediaQuery.of(context).size.height * 0.7,
         style: FlutterLogoStyle.horizontal,));
  }
}