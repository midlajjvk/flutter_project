import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter1/htlassmnt/loginpage1.dart';

void main() {
  runApp(MaterialApp(
    home: Splashscreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginWithValidation()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/logo.png"),
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              "Deadpool",
              style: TextStyle(
                fontSize: 50,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
