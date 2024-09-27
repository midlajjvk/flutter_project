import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            color: Colors.red[200],
            child: ListTile(
              leading: Image(
                image: AssetImage("assets/images/deadpool_PNG3.png"),
              ),
              title: Text("Midlaj"),
              subtitle: Text("1234567890"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.yellow[200],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/deadpool.jpg"),
              ),
              title: Text("amey"),
              subtitle: Text("098743434354"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.green[200],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:AssetImage("assets/images/deadpool.jpg"),
              ),
              title: Text("anju"),
              subtitle: Text("98765678"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.blue[200],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:AssetImage("assets/images/deadpool.jpg"),
              ),
              title: Text("kunju"),
              subtitle: Text("98765678"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.orange[200],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:AssetImage("assets/images/deadpool.jpg"),
              ),
              title: Text("manju"),
              subtitle: Text("98765678"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.cyan,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:AssetImage("assets/images/deadpool.jpg"),
              ),
              title: Text("renju"),
              subtitle: Text("98765678"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            color: Colors.pink[200],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:AssetImage("assets/images/deadpool.jpg"),
              ),
              title: Text("chinju"),
              subtitle: Text("98765678"),
              trailing: Icon(Icons.call),
            ),
          ),
        ],
      ),
    );
  }
}
