import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _App();
}

class _App extends State<App> with SingleTickerProviderStateMixin {
  int index = 0;
  late TabController _tabController;

  final List<String> names = [" My Account", " Dashboard", " About", " Logout"];
  final List<Icon> iconlist = [
    Icon(Icons.person),
    Icon(Icons.dashboard),
    Icon(Icons.info),
    Icon(Icons.logout)
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
    return MaterialApp(
        home: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Scaffold(
          body: Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
              ),
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 20,
                child: Icon(
                  Icons.menu,
                ),
              ),
              Positioned(
                top: 80,
                left: 20,
                child: Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 110,
                left: 20,
                child: Text(
                  "Edit Your Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Positioned(
                top: 170,
                left: MediaQuery.of(context).size.width / 2 -
                    75, // Adjusted to center the CircleAvatar
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/deadpool.jpg"),
                  radius: 75, // Set radius to match width and height
                ),
              ),
              Positioned(
                top: 325,
                left: MediaQuery.of(context).size.width / 2 - 50,
                child: Text(
                  "DEADPOOL",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 350,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                        child: Card(
                          child: ListTile(
                            title: Text(
                              names[index],
                              style: TextStyle(color: Colors.blueGrey),
                            ),
                            leading: iconlist[index],
                          ),
                        ),
                      );
                    },
                    itemCount: names.length,
                  ),
                ),
              ),
            ],
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
            selectedItemColor: Colors.blueGrey,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            ],
          )
      ),
    ));
  }
}
