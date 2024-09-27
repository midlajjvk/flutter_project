import 'package:flutter/material.dart';
import 'chat.dart';

void main() {
  runApp(WhatsApp());
}

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  int index = 0 ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Colors.green,
          actions: [
            Icon(Icons.qr_code_scanner),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            Icon(Icons.search),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            Icon(Icons.menu),
          ],
        ),
        body: WhatsAppHome(),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (tapindex) {
              setState(() {
                index = tapindex;
              });
            },
            selectedItemColor: Colors.teal[700],
            unselectedItemColor: Colors.black,
            // type: BottomNavigationBarType.fixed,
            //backgroundColor: Colors.teal[700],
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.mark_unread_chat_alt_rounded),
                  label: "Chats"),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.update_outlined,
                ),
                label: "Updates",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.groups,
                ),
                label: "Communities",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.call,
                ),
                label: "Calls",
              ),
            ]),
      ),
    );
  }
}

class WhatsAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.message,
            color: Colors.teal,
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.camera_alt),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Status Screen"));
  }
}

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Calls Screen"));
  }
}
