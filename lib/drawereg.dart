import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Drawereg()));
}

class Drawereg extends StatefulWidget {
  const Drawereg({super.key});
  @override
  State<Drawereg> createState() => _DraweregState();
}

class _DraweregState extends State<Drawereg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("midlaj"),
              accountEmail: Text("midlaj@123"),
              otherAccountsPictures: [
                CircleAvatar(
                    backgroundImage: AssetImage("assets/images/flutter.png")),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/flutter.png"),
                ),
              ],
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/delhi.jpeg"),
                      fit: BoxFit.fill)),
            ),
            ListTile(
              leading: Icon(Icons.upcoming),
              title: Text("Upcoming"),
            ),
            ListTile(
              leading: Icon(Icons.upcoming),
              title: Text("Upcoming"),
            ),
            ListTile(
              leading: Icon(Icons.upcoming),
              title: Text("Upcoming"),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Flutter"),
      ),
    );
  }
}
