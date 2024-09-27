import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listviewlist(),
    debugShowCheckedModeBanner: false,
  ));
}

class Listviewlist extends StatelessWidget {
  var name = [
    "John Judah",
    "Bisola Akanbi",
    "Eghosa Iku",
    "Andrew Ndebuisi",
    "Arinze Dayo",
  ];

  var phone = [
    "9874561230",
    "9874561230",
    "9874561230",
    "9874561230",
    "9874561230",
  ];

  var color = [
    Colors.blue,
    Colors.purple,
    Colors.orange,
    Colors.blue,
    Colors.green,
  ];

  var image = [
    "assets/images/deadpool_PNG3.png",
    "assets/images/deadpool_PNG3.png",
    "assets/images/deadpool_PNG3.png",
    "assets/images/deadpool_PNG3.png",
    "assets/images/deadpool_PNG3.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
          childrenDelegate:
              SliverChildListDelegate(List.generate(name.length, (index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(image[index]),
            ),
            title: Text(name[index]),
            subtitle: Text(phone[index]),
          ),
        );
      }))),
    );
  }
}
