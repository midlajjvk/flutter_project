import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'roomcard.dart';
import 'categorycard.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Type your location",
              style: TextStyle(color: Colors.green[600]),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView( // Wrapping content in SingleChildScrollView
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search for something",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.camera_alt),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryCard(
                    title: "Hotel", icon: Icons.hotel, color: Colors.red),
                CategoryCard(
                    title: "Restaurent",
                    icon: Icons.restaurant,
                    color: Colors.blue),
                CategoryCard(
                    title: "Cafe", icon: Icons.local_cafe, color: Colors.orange),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  RoomCard(
                    image: 'assets/images/htlrm.jpeg',
                    price: '\$40',
                    roomTitle: 'Awesome Room near Boddha',
                    location: 'Boddha, Kathmandu',
                    reviews: '220 reviews',
                    rating: 4,
                  ),
                  RoomCard(
                    image: 'assets/images/htlrmm.jpeg',
                    price: '\$40',
                    roomTitle: 'Awesome Room near Boddha',
                    location: 'Boddha, Kathmandu',
                    reviews: '220 reviews',
                    rating: 4,
                  ),
                  RoomCard(
                    image: 'assets/images/deadpool.jpg',
                    price: '\$40',
                    roomTitle: 'Awesome Room near Boddha',
                    location: 'Boddha, Kathmandu',
                    reviews: '220 reviews',
                    rating: 4.5,
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}
