import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sample(),
  ));
}

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/dwnld.jpg"), fit: BoxFit.fill),
        ),
        height: double.infinity,
        width: double.infinity,
        //   gradient: LinearGradient(
        //     colors: [
        //       Colors.red,
        //       Colors.white,
        //       Colors.cyan,
        //       Colors.blue
        //     ],
        //     begin: Alignment.topRight,
        //     end: Alignment.topLeft,
        //   ),
        // ),
        // height: double.infinity,
        // width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.flutter_dash_outlined,size: 50,color: Colors.orange,),
            Image(
              image: AssetImage("assets/images/flutter.png"),
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            Text(
              "Flutter",
              style: TextStyle(
                fontSize: 50, // Reduced font size
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
