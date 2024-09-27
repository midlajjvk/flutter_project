import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Separated2(),
  ));
}

class Separated2 extends StatelessWidget {
  var month = [
    "jan",
    "feb",
    "mar",
    "apr",
    "may",
    "june",
    "july",
    "aug",
    "sep",
    "oct",
    "nov",
    "dec"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: Text(month[index]),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 5 == 0) {
              return Card(
                child: Container(
                  child: Text(
                    "SKIP",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  color: Colors.grey,
                ),
              );
            } else {
              return SizedBox();
            }
          },
          itemCount: 12),
    );
  }
}
