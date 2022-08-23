import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreferences/home_page/home_page.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var email = "abcd";
  var password = "123";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page",style: GoogleFonts.raleway(fontSize: 25, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor:  const Color.fromARGB(255, 0, 75, 136),
        ),
         body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child:
                    Container(width: 200, height: 150,
                     child: Text("   WELCOME",
                     style: GoogleFonts.lato(fontSize: 30, fontWeight: FontWeight.bold),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 60),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () async {
                  final SharedPreferences pref =
                      await SharedPreferences.getInstance();

                  pref.setString('email', emailController.text);
                  pref.setString('password', passwordController.text);
                  if (((email == emailController.text) &
                          (password == passwordController.text)) ==
                      true) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                     HomePage()
                    ));
                  } else {
                    print("object");
                  }
                },
                child: Text(
                  'Login',
                  style: GoogleFonts.lancelot(fontSize: 25, fontWeight: FontWeight.bold, 
                  color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            Text('New User? Create Account',
            style: GoogleFonts.lato(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black
            ),)
          ],
        ),
      ),
    );
  }
}