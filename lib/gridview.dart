import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(home: Gridview()));
}

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 15, mainAxisSpacing: 5),
        children: [
          Container(
            child: Center(
              child: Text("1"),
            ),
            color: Colors.red,
          ),
          Container(
            child: Center(
              child: Text("2"),
            ),
            color: Colors.yellow,
          ),
          Container(
            child: Center(
              child: Text("3"),
            ),
            color: Colors.purple,
          ),
          Container(
            child: Center(
              child: Text("4"),
            ),
            color: Colors.brown,
          ),
          Container(
            child: Center(
              child: Text("5"),
            ),
            color: Colors.pink,
          ),
          Container(
            child: Center(
              child: Text("6"),
            ),
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
