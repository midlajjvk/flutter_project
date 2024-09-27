import 'package:flutter/material.dart';
import 'package:flutter1/clipperwidget.dart';
import 'customwidget.dart';
void main(){
  runApp(MaterialApp(home: Customwiget2(),));
}
class Customwiget2 extends StatelessWidget {
  const Customwiget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Customwidget(
          img: Image(
            image: AssetImage("assets/images/deadpool.jpg"),
          ),
          title: Text("A"),
          sub: Text("hi"),
          onpress: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Clipperwidget()));
          },
          icon: Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
