import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listbuilder(),
    debugShowCheckedModeBanner: false,
  ));
}

class Listbuilder extends StatelessWidget {
  var name = [
    "Facebook",
    "A10 NETWORKS INC.",
    "Intel Corp",
    "HP Inc",
    "Advanced Micro Devices Inc",
    "Apple Inc",
    "Amazon.com.Inc",
    "Micrsoft Corporation",
    "Facebook"
  ];
  // var text = ["F", "A", "I", "H", "A", "A", "A", "M", "F"];
  var no = [
    "123",
    "34.3",
    "435",
    "543",
    "568",
    "324.4",
    "243",
    "34.54",
    "222.2"
  ];
  // var phone = ["123456789", "123456789", "123456789", "123456789", "234567890"];
  // var image = [
  //   "assets/images/deadpool_PNG3.png",
  //   "assets/images/deadpool_PNG3.png",
  //   "assets/images/deadpool_PNG3.png",
  //   "assets/images/deadpool_PNG3.png",
  //   "assets/images/deadpool_PNG3.png"
  // ];
  // var color = [
  //   Colors.yellow,
  //   Colors.red,
  //   Colors.brown,
  //   Colors.cyan,
  //   Colors.pink
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "List View Builder",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            // color: color[index],
            child: ListTile(
              leading: CircleAvatar(
                child: Text(name[index][0], style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.blue,

                // backgroundColor: (color[index]),
              ),
              title: Text(name[index]),
              // subtitle: Text(phone[index]),
              trailing: Text("\$ " + no[index]),
            ),
          );
        },
        itemCount: name.length,
      ),
    );
  }
}
