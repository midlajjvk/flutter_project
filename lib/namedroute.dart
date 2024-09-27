import 'package:flutter/material.dart';

import 'alertbox.dart';
import 'backpress.dart';

void main() {
  runApp(MaterialApp(
    home: Namedroute(),
    routes: {
      "Alertbox": (context) => Alertbox(),
      "Backpress": (context) => Backpress(),
    },
  ));
}

class Namedroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "Alertbox");
                },
                child: Text("Alrtbox")),
            SizedBox(
              width: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "Backpress");
                },
                child: Text("Backprss")),
          ],
        ),
      ),
    );
  }
}
