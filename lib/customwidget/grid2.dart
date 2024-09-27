import 'package:flutter/material.dart';

class Grid2 extends StatefulWidget {
var color=[Colors.blue,Colors.red];
var data =["asdf","sdf"];
var img =["assets/images/deadpool.jpg","assets/images/deadpool.jpg"];
  @override
  State<Grid2> createState() => _Grid2State();
}

class _Grid2State extends State<Grid2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 15),
          itemBuilder: (context, index) {

          }),
    );
  }
}
