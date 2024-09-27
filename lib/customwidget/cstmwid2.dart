import 'package:flutter/material.dart';
import 'cstmwid.dart';

void main() {
  runApp(MaterialApp(
    home: Cstmwid2(),
  ));
}

class Cstmwid2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Icons",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Cstmwid(
              icon: Icons.favorite,
              text: "fav",
              backgroundColor: Colors.pink,
              textColor: Colors.white,
            ),
            SizedBox(height: 20),
            Cstmwid(
              icon: Icons.star,
              text: 'Star',
              backgroundColor: Colors.orange,
              textColor: Colors.black,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
