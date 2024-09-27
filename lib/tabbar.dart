import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'assignment2.dart';
import 'listviewcustom.dart';
import 'listviewlist.dart';

void main() {
  runApp(MaterialApp(home: Tabbar()));
}

class Tabbar extends StatefulWidget {
  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _currentIndex = 1; // Default to the "chat" tab

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: _currentIndex,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("WHATSAPP"),
          actions: [
            Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("INVITE")),
                PopupMenuItem(child: Text("REFRESH")),
                PopupMenuItem(child: Text("LOGOUT")),
              ];
            }),
          ],
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.blue,
            dividerColor: Colors.white,
            indicatorColor: Colors.yellow,
            unselectedLabelColor: Colors.black,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text("chat")),
              Tab(child: Text("status")),
              Tab(child: Text("call")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Icon(Icons.camera_alt)),
            Listbuilder(),
            Listviewcustom(),
            Listviewlist(),
          ],
        ),
        floatingActionButton: _buildFab(),
      ),
    );
  }

  Widget? _buildFab() {
    switch (_currentIndex) {
      case 0:
        return FloatingActionButton(
          onPressed: () {
            // Action for the camera tab
          },
          child: Icon(Icons.camera_alt),
          backgroundColor: Colors.green,
        );
      case 1:
        return FloatingActionButton(
          onPressed: () {
            // Action for the chat tab
          },
          child: Icon(Icons.message),
          backgroundColor: Colors.green,
        );
      case 2:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                // Action for the 'edit status' button
              },
              child: Icon(Icons.edit),
              backgroundColor: Colors.blueGrey,
              mini: true,
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                // Action for the 'camera status' button
              },
              child: Icon(Icons.camera_alt),
              backgroundColor: Colors.green,
            ),
          ],
        );
      case 3:
        return FloatingActionButton(
          onPressed: () {
            // Action for the call tab
          },
          child: Icon(Icons.add_call),
          backgroundColor: Colors.green,
        );
      default:
        return null;
    }
  }
}
