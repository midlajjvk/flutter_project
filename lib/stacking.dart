import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyStack(),
  ));
}

class MyStack extends StatefulWidget {
  const MyStack({super.key});

  @override
  State<MyStack> createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.red),
            ),
          ),
          Positioned(
            top: 100,
            left: 100,
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 150,
            left: 150,
            child: Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 200,
            left: 200,
            child: Container(
              color: Colors.pink,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 50,
            right: 50,
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 100,
            right: 100,
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 150,
            right: 150,
            child: Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 200,
            right: 200,
            child: Container(
              color: Colors.pink,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            bottom: 50,
            left: 50,
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            bottom: 100,
            left: 100,
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            bottom: 150,
            left: 150,
            child: Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            bottom: 200,
            left: 200,
            child: Container(
              color: Colors.pink,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            bottom: 50,
            right: 50,
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            bottom: 100,
            right: 100,
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            bottom: 150,
            right: 150,
            child: Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            bottom: 200,
            right: 200,
            child: Container(
              color: Colors.pink,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 250,
            right: 283,
            child: Container(
              color: Colors.cyan,
              width: 50,
              height: 250,
            ),
          )
        ],
      ),
    );
  }
}
