import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Bottomsheet()));
}

class Bottomsheet extends StatefulWidget {
  const Bottomsheet({super.key});
  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Text(
            "show",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.red, fontSize: 25),
          ),
          onTap: () => show(context),
        ),
      ),
    );
  }

  show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ListView(
            children: [
              ListTile(
                title: Text("daaaaaaata"),
                subtitle: Text("data2"),
              ),
              ListTile(
                title: Text("daaaaaaata"),
                subtitle: Text("data2"),
              ),
              ListTile(
                title: Text("daaaaaaata"),
                subtitle: Text("data2"),
              ),
              ListTile(
                title: Text("daaaaaaata"),
                subtitle: Text("data2"),
              ),
            ],
          );
        });
  }
}
