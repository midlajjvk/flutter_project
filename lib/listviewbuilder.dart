import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listbuilder(),
  ));
}

class Listbuilder extends StatelessWidget {
  var name = ["a", "b", "c", "d", "e"];
  var phone = ["123456789", "123456789", "123456789", "123456789", "234567890"];
  var image = [
    "assets/images/deadpool_PNG3.png",
    "assets/images/deadpool_PNG3.png",
    "assets/images/deadpool_PNG3.png",
    "assets/images/deadpool_PNG3.png",
    "assets/images/deadpool_PNG3.png"
  ];
  var color = [
    Colors.yellow,
    Colors.red,
    Colors.brown,
    Colors.cyan,
    Colors.pink
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            color: color[index],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
              ),
              title: Text(name[index]),
              subtitle: Text(phone[index]),
              trailing: Icon(Icons.call),
            ),
          );
        },
        itemCount: name.length,
      ),
    );
  }
}
