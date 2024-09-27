import 'package:flutter/material.dart';
import 'assignment2.dart';
import 'listviewcustom.dart';
import 'listviewlist.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int index = 0; // Start with the first item

  final List<Widget> screens = [
    Center(child: Text("HOME")),
    Center(child: Text("CHAT")),
    Center(child: Text("CALL")),
    Center(child: Text("CONTACT")),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("Whatsapp"),
          backgroundColor: Colors.green,
          bottom: TabBar(
          isScrollable: true,
          labelColor: Colors.black,
          dividerColor: Colors.black,
          indicatorColor: Colors.yellow,
          unselectedLabelColor: Colors.black,
          onTap: (index) {},
          tabs: [
            Tab(child: Icon(Icons.camera_alt)),
            Tab(child: Text("chat")),
            Tab(child: Text("status")),
            Tab(child: Text("call")),

          ],
        ),
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Midlaj",
                ),
                accountEmail: Text("midlaj@123"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/flutter.png"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/flutter.png"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/flutter.png"),
                  )
                ],
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/dwnld.jpg"),
                        fit: BoxFit.fill)),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("home"),
              ),
              ListTile(
                leading: Icon(Icons.update),
                title: Text("update"),
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("send"),
              ),
              ListTile(
                leading: Icon(Icons.drafts),
                title: Text("drafts"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("logout"),
              ),
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
        // screens[index], // Display the selected screen
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (tapIndex) {
            setState(() {
              index = tapIndex; // Update the index to change the screen
            });
          },
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.green,
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.yellow,
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return ListView(
                            children: [
                              ListTile(
                                title: Text("daaaaaaata"),
                                subtitle: Text("data2"),
                              ),
                              ListTile(
                                title: Text("daaaaaaata"),
                                subtitle: Text("data2"),
                              ),
                              ListTile(
                                title: Text("daaaaaaata"),
                                subtitle: Text("data2"),
                              ),
                              ListTile(
                                title: Text("daaaaaaata"),
                                subtitle: Text("data2"),
                              ),
                            ],
                          );
                        });
                  },
                  icon: Icon(Icons.home),
                ),
                label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
            BottomNavigationBarItem(
                icon: Icon(Icons.contacts), label: "Contact"),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter1/tabbar.dart';
//
//
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Assignmentwork2(),));
// }
//
// class Assignmentwork2 extends StatefulWidget {
//   const Assignmentwork2({super.key});
//
//   @override
//   State<Assignmentwork2> createState() => _Assignmentwork2State();
// }
//
// class _Assignmentwork2State extends State<Assignmentwork2> {
//   int index = 0;
//   var screen = [
//     Text("Profile"),
//     Text("Chat"),
//     Text("Call"),
//     Text("Contact"),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length: 4,
//         child: Scaffold(
//             appBar: AppBar(backgroundColor: Colors.green,
//               title: Text("Home"),
//
//
//             ),
//             drawer: Drawer(backgroundColor:
//             Colors.blue,
//               child: ListView(
//                 children: [
//                   UserAccountsDrawerHeader(
//                     accountName: Text("nanda"),
//                     accountEmail: Text("nanda@gmail.com"),
//                     currentAccountPicture: CircleAvatar(
//                       backgroundImage: AssetImage("assets/image/profile.png"),
//                     ),
//                     otherAccountsPictures: [
//                       CircleAvatar(backgroundImage: AssetImage(
//                           "assets/image/london.jpg")),
//                     ],
//                     decoration: BoxDecoration(image: DecorationImage(
//                         image: AssetImage("assets/image/icon.png"),
//                         fit: BoxFit.fill)),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.home),
//                     title: Text("home"),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.send),
//                     title: Text("Send"),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.update),
//                     title: Text("update"),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.drafts),
//                     title: Text("Draft"),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.logout),
//                     title: Text("Logout"),
//                   ),
//                 ],
//               ),
//             ),
//             bottomNavigationBar: BottomNavigationBar(
//                 currentIndex: index,
//                 onTap: (tapindex) {
//                   setState(() {
//                     index = tapindex;
//                   });
//                   if (index == 3) {
//                     showModalBottomSheet(context: context, builder: (context) {
//                       return ListView(
//                         children: [
//                           ListTile(
//                             title: Text("data 1"),
//                             subtitle: Text("data 2"),
//                           ),
//                           ListTile(
//                             title: Text("data 11"),
//                             subtitle: Text("data 22"),
//                           ),
//                           ListTile(
//                             title: Text("data 111"),
//                             subtitle: Text("data 222"),
//                           ),
//                         ],
//                       );
//                     });
//                   }
//                 },
//                 selectedItemColor: Colors.blue,
//                 unselectedItemColor: Colors.black,
//                 type: BottomNavigationBarType.shifting,
//                 backgroundColor: Colors.white70,
//
//
//                 items: [
//                   BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//                   BottomNavigationBarItem(
//                       icon: Icon(Icons.message,), label: "email"),
//                   BottomNavigationBarItem(icon: Icon(Icons.phone,), label: "Call",),
//                   BottomNavigationBarItem(
//                     icon: Icon(Icons.contact_page,), label: "Contact",),
//                 ]),
//             body: index==0?tabbar(): Text(" wrong page "),
//             ),
//         );
//     }
// }
