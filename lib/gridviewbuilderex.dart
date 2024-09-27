import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridviewbuilderex(),
  ));
}

class Gridviewbuilderex extends StatefulWidget {
  const Gridviewbuilderex({super.key});

  @override
  State<Gridviewbuilderex> createState() => _GridviewbuilderexState();
}

class _GridviewbuilderexState extends State<Gridviewbuilderex> {
  var icon = [
    Icons.person,
    Icons.local_taxi,
    Icons.calendar_today,
    Icons.navigation,
    Icons.help,
    Icons.call,
    Icons.settings,
    Icons.logout,
  ];
  var data = [
    "My profile",
    "Book a cab",
    "Booking Schedule",
    "Track Your Cab",
    "Help & Feedback",
    "Call to transport",
    "Settings",
    "Logout"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.orange[600],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: Colors.white,
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Icon(
                        icon[index],
                        color: Colors.yellow,
                        size: 50,
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70)),
                ),
                Text(data[index]),
              ],
            ),
          );
        },
        itemCount: icon.length,
      ),
    );
  }
}
