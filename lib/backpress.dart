import 'package:flutter/material.dart';
  void main(){
    runApp(MaterialApp(home: Backpress(),));
  }


class Backpress extends StatefulWidget {
  const Backpress({super.key});

  @override
  State<Backpress> createState() => _BackpressState();
}

class _BackpressState extends State<Backpress> {
  Future<bool> showdialopop() async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Exit..."),
            content: Text("do you want to exit ?"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context);
                  },
                  child: Text("yes")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context);
                  },
                  child: Text("no")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: Scaffold(), onWillPop: showdialopop);
  }
}
