import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Alertbox(),
    debugShowCheckedModeBanner: false,
  ));
}

class Alertbox extends StatefulWidget {
  const Alertbox({super.key});

  @override
  State<Alertbox> createState() => _AlertboxState();
}

class _AlertboxState extends State<Alertbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Exit..."),
                    content: Text("do you want to exit"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("yes")),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("no")),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("cancel")),
                    ],
                  );
                });
          },
          child: Text("Alertbox"),
        ),
      ),
    );
  }
}
