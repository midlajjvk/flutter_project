import 'package:flutter/material.dart';

class Customwidget extends StatelessWidget {
  final Image img;
  final Text? title;
  final Text sub;
  final Icon icon;
  VoidCallback onpress;
  Customwidget(
      {required this.img,
      this.title,
      required this.sub,
      required this.onpress,
      required this.icon});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(color: Colors.blue,
        child: ListTile(
          leading: img,
          title: title,
          subtitle: sub,
          trailing: icon,
          onTap: onpress,
        ),

      ),
    );
  }
}
