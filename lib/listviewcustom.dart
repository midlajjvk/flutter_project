import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listviewcustom(),
    debugShowCheckedModeBanner: false,
  ));
}

class Listviewcustom extends StatelessWidget {
  var name = [
    "John Judah",
    "Bisola Akanbi",
    "Eghosa Iku",
    "Andrew Ndebuisi",
    "Arinze Dayo",
    "Wakara Zimbu",
    "Emaechi Chinedu",
    "Osaretin Igbinomwanhia"
  ];

  var phone = [
    "9874561230",
    "9874561230",
    "9874561230",
    "9874561230",
    "9874561230",
    "9874561230",
    "9874561230",
    "9874561230"
  ];

  var color = [
    Colors.blue,
    Colors.purple,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.blue
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
          childrenDelegate:
          SliverChildBuilderDelegate((context, index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
            ),
            title: Text(name[index]),
            trailing: Wrap(
              children: [
                Icon(Icons.edit),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.delete)
              ],
            ),
          ),
        );
      }, childCount: name.length)),
    );
  }
}
