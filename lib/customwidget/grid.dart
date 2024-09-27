import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  final Image img;
  final Text text;
  final Color clr;
  Grid(this.img, this.text, this.clr);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Card(
          color: Colors.blue,
          child: Column(
            children: [
              Container(
                child: text,
              ),
              Container(child: img),
            ],
          ),
        ),
      ),
    );
  }
}
