import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Clipperwidget(),));
}
class Clipperwidget extends StatefulWidget {
  const Clipperwidget({super.key});

  @override
  State<Clipperwidget> createState() => _ClipperwidgetState();
}

class _ClipperwidgetState extends State<Clipperwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ClipRect(
            child: Container(
              child: Image(
                image: AssetImage("assets/images/deadpool.jpg"),
              ),
            ),
          ),
          ClipRRect(borderRadius: BorderRadius.circular(100),
            child: Container(
              child: Image(
                image: AssetImage("assets/images/deadpool.jpg"),
              ),
            ),
          ),
          ClipOval(
            child: Container(
              child: Image(
                image: AssetImage("assets/images/deadpool.jpg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
