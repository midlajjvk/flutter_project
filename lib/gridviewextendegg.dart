import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Gridviewextend(),
  ));
}

class Gridviewextend extends StatefulWidget {
  const Gridviewextend({super.key});

  @override
  State<Gridviewextend> createState() => _Gridviewextend();
}

class _Gridviewextend extends State<Gridviewextend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "GridView",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
        backgroundColor: Colors.green,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 175, crossAxisSpacing: 15, mainAxisSpacing: 5),
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.directions_car),
                Text("Car"),
              ],
            ),
            color: Colors.red,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.bicycle),
                Text("Bicycle"),
              ],
            ),
            color: Colors.cyan,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.directions_boat),
                Text("Boat"),
              ],
            ),
            color: Colors.orange,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.bus),
                Text("Bus"),
              ],
            ),
            color: Colors.blue,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.train),
                Text("Train"),
              ],
            ),
            color: Colors.yellow,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.directions_walk),
                Text("Walk"),
              ],
            ),
            color: Colors.pink,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.motorcycle),
                Text("Bike"),
              ],
            ),
            color: Colors.grey,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.flight),
                Text("Flight"),
              ],
            ),
            color: Colors.purple,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.electric_rickshaw),
                Text("Rickshaw"),
              ],
            ),
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
