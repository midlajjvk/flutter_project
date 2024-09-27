import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Expandedtile(),
    debugShowCheckedModeBanner: false,
  ));
}

class Expandedtile extends StatefulWidget {
  const Expandedtile({super.key});

  @override
  State<Expandedtile> createState() => _ExpandedtileState();
}

class _ExpandedtileState extends State<Expandedtile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(
            title: Text("light color"),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.limeAccent,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.lightGreen,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.lightBlueAccent,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Dark color"),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
