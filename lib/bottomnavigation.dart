import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Bottomnavigation()));
}

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation>
    with SingleTickerProviderStateMixin {
  int index = 0; // Start with the first item
  late TabController _tabController;

  final List<Widget> screens = [
    Center(child: Text("PROFILE")),
    Center(child: Text("CHAT")),
    Center(child: Text("CALL")),
    Center(child: Text("CONTACT")),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {
        index = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text("WHATSAPP")
      ),
      body: screens[index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here, like navigating to a new screen
        },
        child: Icon(Icons.message),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
            _tabController.index =
                tapindex; // Update TabBar when BottomNavigationBar is tapped
          });
        },
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
          BottomNavigationBarItem(icon: Icon(Icons.contacts), label: "Contact"),
        ],
      ),
    );
  }
}
