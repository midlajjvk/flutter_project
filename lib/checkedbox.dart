import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Checkedbox(),
  ));
}

class Checkedbox extends StatefulWidget {
  const Checkedbox({super.key});

  @override
  State<Checkedbox> createState() => _CheckedboxState();
}

class _CheckedboxState extends State<Checkedbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Checkbox(
        checkColor: Colors.black,
        activeColor: Colors.red,
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      )),
    );
  }
}
