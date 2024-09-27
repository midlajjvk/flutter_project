import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: flexible(),));
}
class flexible extends StatefulWidget {
  const flexible({super.key});

  @override
  State<flexible> createState() => _flexibleState();
}

class _flexibleState extends State<flexible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Container(
                color: Colors.red,
              )),
          Flexible(
              flex: 2,
              child: Container(
                color: Colors.blue,
              )),
          Flexible(
              flex: 3,
              child: Container(
                color: Colors.red,
              )),
          Flexible(
              flex: 4,
              child: Container(
                color: Colors.blue,
              )),
          Flexible(
              flex: 5,
              child: Container(
                color: Colors.red,
              )),
        ],
      ),
    );
  }
}
