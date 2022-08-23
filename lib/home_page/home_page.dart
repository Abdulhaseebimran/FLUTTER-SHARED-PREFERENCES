import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreferences/login_page/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page",
        style: GoogleFonts.raleway(fontSize: 25, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor:  const Color.fromARGB(255, 0, 75, 136),
        actions:  [
         IconButton(onPressed: () async{
          final SharedPreferences pref =
          await SharedPreferences.getInstance();
              pref.remove('email');
              pref.remove('password');
             Navigator.push(context,
             MaterialPageRoute(builder: (context) => LoginDemo()));
         }, 
         icon: const Icon(Icons.logout_rounded, size: 25,))
        ], 
      ),
    
    );
  }
}