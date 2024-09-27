import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  final String image;
  final String price;
  final String roomTitle;
  final String location;
  final String reviews;
  final double rating;

  RoomCard({
    required this.image,
    required this.price,
    required this.roomTitle,
    required this.location,
    required this.reviews,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                child: Image(
                  image: AssetImage(image),
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.only(right: 20, top: 130),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Text(
                    price,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  roomTitle,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    ...List.generate(
                      //... spread operator ,  insert all the elements of an iterable (like a list) into another collection or widget tree.
                      rating.floor(),
                      (index) => Icon(Icons.star, color: Colors.green),
                    ),
                    if (rating - rating.floor() > 0)
                      Icon(Icons.star_half, color: Colors.green),
                    SizedBox(width: 5),
                    Text(
                      reviews,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  location,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
