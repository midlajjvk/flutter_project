import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: GridviewCustom(),
  ));
}

class GridviewCustom extends StatelessWidget {
  var color = [Colors.blueGrey, Colors.grey, Colors.white38, Colors.brown];

  var icon = [
    Icons.shield_moon_outlined,
    Icons.abc_outlined,
    Icons.ac_unit_outlined,
    Icons.access_alarm
  ];
  var data = [
    "shield_moon_outlined",
    "abc_outlined",
    "ac_unit_outlined",
    "access_alarm"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Card(
                color: color[index],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icon[index]),
                    Text(data[index],
                        style: GoogleFonts.aBeeZee(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic)),
                  ],
                ));
          }, childCount: icon.length)),
    );
  }
}
