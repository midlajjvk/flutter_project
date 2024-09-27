import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CustomScrollVieww(),
    debugShowCheckedModeBanner: false,
  ));
}

class CustomScrollVieww extends StatefulWidget {
  const CustomScrollVieww({super.key});

  @override
  State<CustomScrollVieww> createState() => _CustomScrollViewwState();
}

class _CustomScrollViewwState extends State<CustomScrollVieww> {
  var phone = [
    "9487546511",
    "8956235645",
    "9595646484",
    "5454565685",
    "5879568459"
  ];
  var data = [
    "account_balance",
    "add_alert",
    "access_alarms_round",
    "add_circle",
    "ac_unit",
    "insert_comment_rounded"
  ];
  var image = [
    "assets/images/deadpool.jpg",
    "assets/images/deadpool.jpg",
    "assets/images/deadpool.jpg",
    "assets/images/deadpool.jpg",
    "assets/images/deadpool.jpg",
  ];
  var icon = [
    Icons.account_balance,
    Icons.add_alert,
    Icons.access_alarm_rounded,
    Icons.add_circle,
    Icons.ac_unit,
    Icons.insert_comment_rounded
  ];
  var color = [
    Colors.lightGreenAccent,
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.yellow,
    Colors.grey
  ];
  var name = ["nishu", "midu", "vyshak", "nmk", "ashir"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("Custome Scroll View"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
            ],
            bottom: AppBar(
              title: Container(
                color: Colors.white,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search here...",
                    prefixIcon: Icon(Icons.search,color: Colors.blueGrey,),
                  ),
                ),
              ),
            ),
            expandedHeight: 140,
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.cyan,
              height: 50,
              child: Text(
                "Sliver List",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              color: color[index],
              child: ListTile(
                leading: Image(image: AssetImage(image[index])),
                title: Text(name[index]),
                subtitle: Text(phone[index]),
              ),
            );
          }, childCount: name.length)),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.pinkAccent,
              height: 50,
              child: Text(
                "Sliver grid",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Card(
                  color: color[index],
                  child: Column(
                    children: [Text(data[index]), Icon(icon[index])],
                  ),
                );
              }, childCount: data.length),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2))
        ],
      ),
    );
  }
}
