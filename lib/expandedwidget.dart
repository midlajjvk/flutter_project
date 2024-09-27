import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Expandedwidget(),
  ));
}

class Expandedwidget extends StatefulWidget {
  const Expandedwidget({super.key});

  @override
  State<Expandedwidget> createState() => _ExpandedwidgetState();
}

class _ExpandedwidgetState extends State<Expandedwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.red,
      body: Row(
        children: [
          Container(color: Colors.blue, height: 300, width: 100),
          Container(color: Colors.grey, height: double.infinity, width: 100),
          Container(color: Colors.yellow, height: double.infinity, width: 100),

          Expanded(
              child: Container(
                  color: Colors.blue, height: double.infinity, width: 100))
        ],
      ),
    );
  }
}
